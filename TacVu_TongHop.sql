use QL_Tour
go


----------------------------------------Vẹn------------------------------------
-- 1. Trigger: Kiểm tra vai trò nhân viên
CREATE TRIGGER trg_CheckVaiTroOnInsert
ON PhanCong_NhanVien
FOR INSERT
AS
BEGIN
    DECLARE @NhanVien_id VARCHAR(36);
	DECLARE @Tour_id VARCHAR(36);

    SELECT @NhanVien_id = NhanVien_id, @Tour_id = Tour_id FROM inserted;

    IF EXISTS ( SELECT*FROM NhanVien WHERE NhanVien_id = @NhanVien_id AND VaiTro != N'Hướng dẫn viên' )
	BEGIN 
		PRINT N'Nhân viên được phân công không có vai trò "Hướng dẫn viên"'
		ROLLBACK TRANSACTION; 
	END
END
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
	@TrangThai NVARCHAR(255)
AS
BEGIN
	begin transaction

	INSERT INTO [Tour] VALUES (
		@Tour_id, @Name, @Gia, @MoTa, @LichTrinh, @DiemKhoiHanh_id,
        @DiemDen_id, @KhachSan_id, @NgayKhoiHanh, @NgayKetThuc,
        @SoLuongCon, @LoaiTour,@TrangThai)

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

--5 Thủ tục thêm đặt tour
CREATE TYPE HanhKhachType AS TABLE
(
    HoTen NVARCHAR(128),
    NgaySinh DATE,
    GioiTinh BIT
);
GO
CREATE PROCEDURE AddTourBooking
    @KhachHang_id VARCHAR(36),
    @Name NVARCHAR(128),
    @Email NVARCHAR(128),
    @DienThoai VARCHAR(20),
    @DiaChi NVARCHAR(128),
    @Password NVARCHAR(128),
    @Gioitinh BIT,
    @Tour_id VARCHAR(36),
    @SoNguoi INT,
    @HanhKhach HanhKhachType READONLY
AS
BEGIN
    SET NOCOUNT ON;

    -- Kiểm tra nếu khách hàng đã tồn tại
    IF NOT EXISTS (SELECT * FROM KhachHang WHERE KhachHang_id = @KhachHang_id)
    BEGIN
        -- Thêm khách hàng mới vào bảng KhachHang
        INSERT INTO KhachHang (KhachHang_id, [Name], Email, DienThoai, DiaChi, [Password], Gioitinh)
        VALUES (@KhachHang_id, @Name, @Email, @DienThoai, @DiaChi, @Password, @Gioitinh);
    END

    -- Thêm dữ liệu vào bảng DatTour
    INSERT INTO DatTour (KhachHang_id, NgayDat, Tour_id, SoNguoi)
    VALUES (@KhachHang_id, GETDATE(), @Tour_id, @SoNguoi);

    -- Lấy ID của DatTour vừa thêm
    DECLARE @DatTour_id INT;
    SET @DatTour_id = SCOPE_IDENTITY();

    -- Thêm dữ liệu vào bảng HanhKhach
    INSERT INTO HanhKhach (HoTen, NgaySinh, GioiTinh, DatTour_id, Tour_id)
    SELECT HoTen, NgaySinh, GioiTinh, @DatTour_id, @Tour_id
    FROM @HanhKhach;
END
GO
---- Khai báo bảng tạm kiểu HanhKhachType
--DECLARE @HanhKhachList HanhKhachType;
---- Thêm dữ liệu vào bảng tạm
--INSERT INTO @HanhKhachList (HoTen, NgaySinh, GioiTinh)
--VALUES ('Nguyen Van A', '1990-01-01', 1),
--       ('Tran Thi B', '1992-02-02', 0);
---- Gọi stored procedure AddTourBooking
--EXEC AddTourBooking '12345',N'Nguyen Thị Tịnh','email@example.com','0123456789',N'123 ABC Street','password',0,'TOUR001',2,@HanhKhachList;
--GO

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
GO

CREATE PROCEDURE ShowDatTour
AS
BEGIN
    SELECT 
        dt.DatTour_id,
        kh.KhachHang_id,
        kh.Name AS TenKhach,
        dt.NgayDat,
        dt.SoNguoi,
        dt.GhiChu,
        dt.Tour_id,
        tt.TongTien  
    FROM 
        DatTour dt
    INNER JOIN 
        KhachHang kh ON dt.KhachHang_id = kh.KhachHang_id
    INNER JOIN 
        Tour t ON dt.Tour_id = t.Tour_id
    INNER JOIN
        ThanhToan tt ON dt.DatTour_id = tt.DatTour_id  
END
GO


-- EXEC ShowDatTour;

-- drop proc ShowDatTour


CREATE PROCEDURE ShowHanhKhachDatTour
    @DatTour_id INT
AS
BEGIN
    SELECT 
        HK.HanhKhach_id,  
        HK.HoTen,
		HK.NgaySinh,        
        HK.GioiTinh
    FROM 
        DatTour DT
    INNER JOIN 
        HanhKhach HK ON DT.DatTour_id = HK.DatTour_id
    WHERE 
        DT.DatTour_id = @DatTour_id;  
END;
go

--EXEC ShowHanhKhachDatTour 4;
 --drop proc ShowDatTourDetails


CREATE PROCEDURE GetTourDetailsByDatTourId
    @DatTour_id INT
AS
BEGIN
    SELECT 
        T.Tour_id,              
        T.Name AS TenTour,     
        TK.Name AS DiemKhoiHanh,    -- Lấy tên điểm khởi hành từ bảng TinhThanh
        DN.Name AS DiemDen,         -- Lấy tên điểm đến từ bảng TinhThanh
        T.NgayKhoiHanh,      
        T.NgayKetThuc        
    FROM 
        DatTour DT
    INNER JOIN 
        Tour T ON DT.Tour_id = T.Tour_id
    INNER JOIN 
        TinhThanh TK ON T.DiemKhoiHanh_id = TK.TinhThanh_id  -- Kết nối với bảng TinhThanh cho điểm khởi hành
    INNER JOIN 
        TinhThanh DN ON T.DiemDen_id = DN.TinhThanh_id        -- Kết nối với bảng TinhThanh cho điểm đến
    WHERE 
        DT.DatTour_id = @DatTour_id;  
END;

go
--EXEC GetTourDetailsByDatTourId 4;
 --drop proc GetTourDetailsByDatTourId

CREATE PROCEDURE showHuyTour
AS
BEGIN
    SELECT 
        HT.HuyTour_id,
        HT.DatTour_id,
        HT.NgayHuy,
        HT.LyDo,
        T.Tour_id,
        T.Name AS TenTour,
        PC.NhanVien_id,
        KH.KhachHang_id,
        KH.Name AS TenKhach,
		HT.TrangThai
    FROM 
        HuyTour HT
    INNER JOIN 
        DatTour DT ON HT.DatTour_id = DT.DatTour_id
    INNER JOIN 
        Tour T ON DT.Tour_id = T.Tour_id
    LEFT JOIN 
        PhanCong_NhanVien PC ON T.Tour_id = PC.Tour_id
    INNER JOIN 
        KhachHang KH ON DT.KhachHang_id = KH.KhachHang_id
END;
go


--EXEC showHuyTour;
 --drop proc showHuyTour

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


--Procedure thêm nhà hàng vào tour
create proc sp_ThemNhaHang @maTour varchar(36), @maNhaHang varchar(36)
as
begin
	SET NOCOUNT ON;

    -- Kiểm tra nếu Tour với mã @maTour có tồn tại
    IF NOT EXISTS (SELECT 1 FROM Tour WHERE Tour_id = @maTour)
    BEGIN
        PRINT 'Không tìm thấy mã Tour này.';
        RETURN;
    END

    -- Kiểm tra nếu Nhà Hàng với mã @maNhaHang có tồn tại
    IF NOT EXISTS (SELECT 1 FROM NhaHang WHERE NhaHang_id = @maNhaHang)
    BEGIN
        PRINT 'Không tìm thấy mã Nhà Hàng này.';
        RETURN;
    END

    -- Kiểm tra nếu mối quan hệ giữa Tour và Nhà Hàng đã tồn tại
    IF EXISTS (SELECT 1 FROM NhaHang_Tour WHERE Tour_id = @maTour AND NhaHang_id = @maNhaHang)
    BEGIN
        PRINT 'Nhà Hàng đã được liên kết với Tour này.';
        RETURN;
    END

    -- Chèn dữ liệu nếu các điều kiện trên thỏa mãn
    INSERT INTO NhaHang_Tour (Tour_id, NhaHang_id)
    VALUES (@maTour, @maNhaHang);

    PRINT 'Thêm thành công.';
END
go

--procedure lọc tour nâng cao với các dữ kiện (ngày khởi hành, mức giá, nơi đến, loại tour)
CREATE PROCEDURE sp_TimKiemTours
    @NgayKH DATE = NULL,
    @MucGia NVARCHAR(10) = NULL,
    @NoiDen NVARCHAR(255) = NULL,
    @LoaiTour NVARCHAR(10) = NULL
AS
BEGIN
    SET NOCOUNT ON;

    SELECT *
    FROM Tour t
    INNER JOIN TinhThanh tt ON t.DiemDen_id = tt.TinhThanh_id
    WHERE 
        -- Lọc trạng thái "Mở bán"
        t.TrangThai = N'Mở bán'
        
        -- Lọc theo ngày khởi hành (nếu có)
        AND (@NgayKH IS NULL OR t.NgayKhoiHanh = @NgayKH)
        
        -- Lọc theo nơi đến (nếu có)
        AND (@NoiDen IS NULL OR tt.TinhThanh_id = @NoiDen)
        
        -- Lọc theo mức giá (nếu có)
        AND (
            @MucGia IS NULL OR
            (@MucGia = '1' AND t.Gia < 2000000) OR
            (@MucGia = '2' AND t.Gia BETWEEN 2000000 AND 4000000) OR
            (@MucGia = '3' AND t.Gia BETWEEN 4000000 AND 6000000) OR
            (@MucGia = '4' AND t.Gia BETWEEN 6000000 AND 10000000) OR
            (@MucGia = '5' AND t.Gia BETWEEN 10000000 AND 20000000) OR
            (@MucGia = '6' AND t.Gia BETWEEN 20000000 AND 50000000) OR
            (@MucGia = '7' AND t.Gia > 50000000)
        )
        
        -- Lọc theo loại tour (nếu có)
        AND (
            @LoaiTour IS NULL OR
            (@LoaiTour = '1' AND t.LoaiTour = N'Trong nước') OR
            (@LoaiTour = '2' AND t.LoaiTour = N'Ngoài nước')
        );
END;
go


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