


----------------------------------------Vẹn------------------------------------
-- 1. Trigger: Cập nhật `TrangThai` của tour
-- Trigger này sẽ cập nhật trạng thái của `Tour` khi đến ngày bắt đầu (`NgayKhoiHanh`) và ngày kết thúc (`NgayKetThuc`).
CREATE TRIGGER trg_Update_TrangThai_Tour
ON [Tour]
FOR UPDATE
AS
    -- Cập nhật trạng thái thành 'Dang_Dien_Ra' nếu đến ngày bắt đầu
    UPDATE [Tour]
    SET TrangThai = 'Dang_Dien_Ra'
    WHERE NgayKhoiHanh = CAST(GETDATE() AS DATE) AND TrangThai = 'Mo_ban'

    -- Cập nhật trạng thái thành 'Da_Hoan_Thanh' nếu đến ngày kết thúc
    UPDATE [Tour]
    SET TrangThai = 'Da_Hoan_Thanh'
    WHERE NgayKetThuc = CAST(GETDATE() AS DATE) AND TrangThai = 'Dang_Dien_Ra'
GO

-- 2. Function: Tính tổng số tiền thanh toán của một tour
-- Function này sẽ tính tổng `TongTien` từ bảng `ThanhToan` dựa trên `Tour_id`.
CREATE FUNCTION fn_TongTienThanhToan (@Tour_id VARCHAR(36))
RETURNS DECIMAL(12, 2)
AS
BEGIN
    DECLARE @TongTien DECIMAL(12, 2)
    SELECT @TongTien = SUM(TongTien)
    FROM ThanhToan
    JOIN DatTour ON ThanhToan.DatTour_id = DatTour.DatTour_id
    WHERE DatTour.Tour_id = @Tour_id
    RETURN ISNULL(@TongTien, 0)
END
GO

-- 3. Procedure: Thêm mới tour
-- Procedure này sẽ thêm một tour mới vào bảng `Tour` và liên kết với các thông tin `KhachSan`, `NhaHang`
CREATE PROCEDURE proc_ThemMoiTour
    @Tour_id VARCHAR(36),
    @Name NVARCHAR(128),
    @Gia DECIMAL(12, 2),
    @MoTa NVARCHAR(MAX),
    @LichTrinh NVARCHAR(MAX),
    @DiemKhoiHanh_id INT,
    @DiemDen_id INT,
    @KhachSan_id VARCHAR(36),
    @NgayKhoiHanh DATE,
    @NgayKetThuc DATE,
    @SoLuongCon INT,
    @LoaiTour NVARCHAR(255),
	@TrangThai NVARCHAR(255),
    @NhaHang_id VARCHAR(36)
AS
BEGIN
	begin transaction

	INSERT INTO [Tour] VALUES (
		@Tour_id, @Name, @Gia, @MoTa, @LichTrinh, @DiemKhoiHanh_id,
        @DiemDen_id, @KhachSan_id, @NgayKhoiHanh, @NgayKetThuc,
        @SoLuongCon, @LoaiTour,@TrangThai)
    -- Liên kết với nhà hàng nếu có
    IF (@NhaHang_id IS NOT NULL)
    BEGIN
		INSERT INTO NhaHang_Tour (NhaHang_id, Tour_id)
        VALUES (@NhaHang_id, @Tour_id)
	END

	if @@ERROR = 0 
		commit transaction
	else
		rollback transaction
END
GO

-- 4. Cursor: Kiểm tra các tour hết chỗ
-- Cursor này sẽ duyệt qua các tour và kiểm tra tour nào đã hết chỗ (`SoLuongCon = 0`), rồi tự động chuyển trạng thái thành `Da_Dong`.
DECLARE @Tour_id VARCHAR(36)
DECLARE tour_cursor CURSOR FOR SELECT Tour_id FROM [Tour] WHERE SoLuongCon = 0 AND TrangThai = 'Mo_ban'
OPEN tour_cursor
FETCH NEXT FROM tour_cursor INTO @Tour_id
WHILE @@FETCH_STATUS = 0
BEGIN
    UPDATE [Tour]
    SET TrangThai = 'Da_Dong'
    WHERE Tour_id = @Tour_id
    FETCH NEXT FROM tour_cursor INTO @Tour_id
END
CLOSE tour_cursor
DEALLOCATE tour_cursor
GO





--------------------------Bảo----------------------------------------------------------
-- trigger Xóa Bản Ghi Trong ThanhToan khi Hủy Tour
CREATE TRIGGER TR_DeleteThanhToanOnHuyTour
ON HuyTour
AFTER INSERT
AS
BEGIN
    DECLARE @DatTour_id int;

    SELECT @DatTour_id = DatTour_id FROM INSERTED;

    DELETE FROM ThanhToan WHERE DatTour_id = @DatTour_id;
END
GO


-- Procedure thêm 1 Đặt Tour
CREATE PROCEDURE SP_DatTour
	@DatTour_id int,
    @KhachHang_id varchar(36),
    @Tour_id varchar(36),
    @SoNguoi int,
    @GhiChu nvarchar(128)
AS
BEGIN

    INSERT INTO DatTour (KhachHang_id, Tour_id, SoNguoi, GhiChu, NgayDat)
    VALUES (@KhachHang_id, @Tour_id, @SoNguoi, @GhiChu, GETDATE());
END
GO

-- Procedure Thêm 1 Hủy Tour
CREATE PROCEDURE SP_HuyTour
    @DatTour_id int,
    @LyDo nvarchar(max)
AS
BEGIN
    DECLARE @Tour_id varchar(36);

    SELECT @Tour_id = Tour_id FROM DatTour WHERE DatTour_id = @DatTour_id;

    INSERT INTO HuyTour (DatTour_id, NgayHuy, LyDo)
    VALUES (@DatTour_id, GETDATE(), @LyDo);

END
GO


-- function Kiểm Tra Tình Trạng Tour
CREATE FUNCTION FN_CheckTourStatus(@Tour_id varchar(36))
RETURNS nvarchar(255)
AS
BEGIN
    DECLARE @Status nvarchar(255);
    
    SELECT @Status = TrangThai FROM Tour WHERE Tour_id = @Tour_id;
    
    RETURN @Status;
END
GO

-- function kết hợp cursor Duyệt Qua Các Khách Hàng và Thông Tin Đặt Tour
CREATE FUNCTION dbo.GetTourInfo()
RETURNS @TourInfoTable TABLE (
    KhachHang_id VARCHAR(36),
    Tour_id VARCHAR(36),
    SoNguoi INT,
    NgayDat DATETIME,
    TongTien DECIMAL(12, 2)
)
AS
BEGIN
    DECLARE @KhachHang_id VARCHAR(36);
    DECLARE @Tour_id VARCHAR(36);
    DECLARE @SoNguoi INT;
    DECLARE @NgayDat DATETIME;

    DECLARE cur_KhachHang CURSOR FOR
    SELECT KhachHang_id, Tour_id, SoNguoi, NgayDat FROM DatTour;

    OPEN cur_KhachHang;

    FETCH NEXT FROM cur_KhachHang INTO @KhachHang_id, @Tour_id, @SoNguoi, @NgayDat;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        DECLARE @TongTien DECIMAL(12, 2);
        

        SELECT @TongTien = TongTien
        FROM ThanhToan 
        WHERE DatTour_id IN (SELECT DatTour_id FROM DatTour WHERE KhachHang_id = @KhachHang_id AND Tour_id = @Tour_id);


        IF @TongTien IS NULL
        BEGIN
            SET @TongTien = 0;
        END

        INSERT INTO @TourInfoTable (KhachHang_id, Tour_id, SoNguoi, NgayDat, TongTien)
        VALUES (@KhachHang_id, @Tour_id, @SoNguoi, @NgayDat, @TongTien);

        FETCH NEXT FROM cur_KhachHang INTO @KhachHang_id, @Tour_id, @SoNguoi, @NgayDat;
    END

    CLOSE cur_KhachHang;
    DEALLOCATE cur_KhachHang;

    RETURN;
END;
Go


-----------------------------------Vương-------------------------------------
--Trigger cập nhật số lượng còn của 1 tour khi thêm 1 đặt tour mới
--Khi thêm bản ghi mới vào bảng DatTour, tự động giảm SoLuongCon trong bảng Tour.

create trigger updateSoLuongCon 
on DatTour
after insert
as
begin
	update Tour
	set SoLuongCon = SoLuongCon -i.SoNguoi
	from Tour t
	join inserted i on i.Tour_id = t.Tour_id
end
Go

--Function Trả về số lượng chỗ còn lại (SoLuongCon) của tour dựa trên Tour_id.
create function SoLuongCon (@tourid varchar(36))
returns int
as
begin
	return (select SoLuongCon from Tour where Tour_id  = @tourid)
end
Go

--Procedure cập nhật thông tin tour:
--Cập nhật thông tin về tour (tên, giá, lịch trình, ngày khởi hành, v.v.) dựa trên Tour_id.
create procedure UpdateTour
	@Tour_id varchar(36),
    @Name nvarchar(128) = NULL,
    @Gia decimal(12,2) = NULL,
    @MoTa nvarchar(max) = NULL,
    @LichTrinh nvarchar(max) = NULL,
    @DiemKhoiHanh_id int = NULL,
    @DiemDen_id int = NULL,
    @KhachSan_id varchar(36) = NULL,
    @NgayKhoiHanh date = NULL,
    @NgayKetThuc date = NULL,
    @SoLuongCon int = NULL,
    @LoaiTour nvarchar(255) = NULL,
    @TrangThai nvarchar(255) = NULL
as
begin
	begin transaction

	 UPDATE Tour
		SET
			Name = COALESCE(@Name, Name),
			Gia = COALESCE(@Gia, Gia),
			MoTa = COALESCE(@MoTa, MoTa),
			LichTrinh = COALESCE(@LichTrinh, LichTrinh),
			DiemKhoiHanh_id = COALESCE(@DiemKhoiHanh_id, DiemKhoiHanh_id),
			DiemDen_id = COALESCE(@DiemDen_id, DiemDen_id),
			KhachSan_id = COALESCE(@KhachSan_id, KhachSan_id),
			NgayKhoiHanh = COALESCE(@NgayKhoiHanh, NgayKhoiHanh),
			NgayKetThuc = COALESCE(@NgayKetThuc, NgayKetThuc),
			SoLuongCon = COALESCE(@SoLuongCon, SoLuongCon),
			LoaiTour = COALESCE(@LoaiTour, LoaiTour),
			TrangThai = COALESCE(@TrangThai, TrangThai)
		WHERE Tour_id = @Tour_id

		if @@ERROR = 0
		begin
			commit transaction
		end
		else
		begin
			rollback transaction
		end
end
Go
--Procedure kết hợp cursor tính toán doanh thu tổng của từng tour
CREATE PROCEDURE DoanhThuCuaTungTour
AS
BEGIN
    DECLARE @Tour_id VARCHAR(36);
    DECLARE @TongTien DECIMAL(12, 2);

    -- Tạo bảng tạm để lưu doanh thu của từng tour
    CREATE TABLE #DoanhThuTour (
        Tour_id VARCHAR(36),
        TongDoanhThu DECIMAL(12, 2)
    );

    -- Khởi tạo cursor
    DECLARE TourCursor CURSOR FOR
    SELECT Tour_id FROM Tour WHERE TrangThai = 'Dang_Dien_Ra';

    OPEN TourCursor;
    FETCH NEXT FROM TourCursor INTO @Tour_id;

    WHILE @@FETCH_STATUS = 0
    BEGIN
        -- Tính toán doanh thu cho tour hiện tại
        SELECT @TongTien = SUM(TongTien)
        FROM ThanhToan tt
        JOIN DatTour dt ON tt.DatTour_id = dt.DatTour_id
        WHERE dt.Tour_id = @Tour_id;

        -- Nếu không có doanh thu, gán 0
        SET @TongTien = ISNULL(@TongTien, 0);

        -- Chèn vào bảng tạm
        INSERT INTO #DoanhThuTour (Tour_id, TongDoanhThu)
        VALUES (@Tour_id, @TongTien);

        FETCH NEXT FROM TourCursor INTO @Tour_id;
    END

    CLOSE TourCursor;
    DEALLOCATE TourCursor;

    -- Hiển thị kết quả
    SELECT t.Name, dt.TongDoanhThu
    FROM #DoanhThuTour dt
    JOIN Tour t ON dt.Tour_id = t.Tour_id;

    -- Xóa bảng tạm
    DROP TABLE #DoanhThuTour;
END;

Go
----------------------------Phong--------------------------------------------------
------------trigger xóa các đánh giá liên quan đến một tour khi tour bị xóa khỏi bảng [Tour]
CREATE TRIGGER delete_danhgia 
ON Tour
AFTER DELETE
AS
BEGIN
Delete from [DanhGia] 
Where [Tour_id] = ( Select [Tour_id] From Deleted)
END 
GO 
------------proc kiểm tra các ks còn phòng cho điểm đến của Tour
CREATE PROC kiemtra_khachsan @Tour_id varchar(36)
AS 
BEGIN 
SELECT ks.KhachSan_id,ks.Name as Ten_Khach_San, tt.Name as Ten_Tinh_Thanh
From KhachSan ks, TinhThanh tt , Tour t
Where ks.TinhThanh_id = tt.TinhThanh_id
AND t.DiemDen_id = tt.TinhThanh_id
AND @Tour_id = Tour_id
AND ks.Tinhtrang = N'Còn Phòng'
END 
GO
---------cussor duyệt qua tất cả các đánh giá và trả về các đánh giá có Vote < 3 
			CREATE PROC low_danhgia 
			AS 
			BEGIN 
			DECLARE @Danhgia_id int, @Tour_id varchar(36), @KhachHang_id varchar(36), @Noidung nvarchar(max) , @Vote int
			 -- Khai báo cursor duyệt qua các đánh giá tìm ra các Vote < 3
			 DECLARE danhgia_cursor CURSOR 
			 FOR 
			 Select DanhGia_id , Tour_id, KhachHang_id, Noidung,Vote
			 From DanhGia 
			 Where Vote < 3
			 -- tao 1 bảng tạm để lưu các đánh giá có Vote < 3 
			 create table #Low_Vote 
			 (
			  DanhGia_id int,
			  Tour_id varchar(36),
			  KhachHang_id varchar(36),
			  Noidung nvarchar(max),
			  Vote int
			 )
			 Open danhgia_cursor
			 fetch next from danhgia_cursor into @Danhgia_id , @Tour_id , @KhachHang_id , @Noidung , @Vote 
			 while @@FETCH_STATUS = 0 
			 Begin 
			 insert into #Low_Vote values ( @Danhgia_id , @Tour_id , @KhachHang_id , @Noidung , @Vote  )

			 fetch next from danhgia_cursor into @Danhgia_id , @Tour_id , @KhachHang_id , @Noidung , @Vote 
			 End
			 Close danhgia_cursor 
			 Deallocate danhgia_cursor
			 Select * from #Low_Vote 
			 Drop Table #Low_Vote
			END 
			GO 
---------function truyền vào mã tour trả về thông tin nhân viên được phân công cho tour đó 
		CREATE FUNCTION Phancong_nv ( @Tour_id varchar(36))
		Returns table 
		AS 
		Return 
		(
		Select nv.NhanVien_id , HoTen, Email, DiaChi, DienThoai, GioiTinh, nv.Password, VaiTro
		From NhanVien nv ,PhanCong_NhanVien pc
		Where nv.NhanVien_id = pc.NhanVien_id 
		And  @Tour_id = pc.Tour_id
		)
Go