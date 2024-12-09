use QL_Tour
go

----------------------------------------Vẹn------------------------------------
-- 1. Trigger: Kiểm tra vai trò nhân viên
CREATE TRIGGER trg_CheckVaiTroOnInsert
ON PhanCong_NhanVien
FOR INSERT
AS
    IF EXISTS (SELECT * FROM NhanVien WHERE NhanVien_id = (SELECT NhanVien_id FROM inserted) AND VaiTro != N'Hướng dẫn viên')
	BEGIN 
		PRINT N'Nhân viên được phân công không có vai trò "Hướng dẫn viên"'
		ROLLBACK TRANSACTION
	END
GO

-- 2. Function: Tính tổng số tiền thanh toán của một tour
CREATE FUNCTION fn_TongTienThanhToan (@Tour_id VARCHAR(36))
RETURNS DECIMAL(12, 2)
AS
BEGIN
    DECLARE @TongTien DECIMAL(12, 2)
    SELECT @TongTien = SUM(TongTien)
    FROM ThanhToan JOIN DatTour ON ThanhToan.DatTour_id = DatTour.DatTour_id
    WHERE DatTour.Tour_id = @Tour_id
    RETURN @TongTien
END
GO

-- 3. Procedure: Thêm mới tour
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

	INSERT INTO Tour VALUES (
		@Tour_id, @Name, @Gia, @MoTa, @LichTrinh, @DiemKhoiHanh_id,
        @DiemDen_id, @KhachSan_id, @NgayKhoiHanh, @NgayKetThuc,
        @SoLuongCon, @LoaiTour, @TrangThai
	)
	if @@ERROR = 0 
		commit transaction
	else
		rollback transaction
END
GO

-- 4. Cursor: Kiểm tra các tour hết chỗ
CREATE PROCEDURE UpdateTourStatus
AS
BEGIN
    DECLARE @Tour_id VARCHAR(36)
    
    DECLARE tour_cursor CURSOR FOR 
    SELECT Tour_id 
    FROM Tour 
    WHERE SoLuongCon = 0 AND TrangThai = N'Mở bán'

    OPEN tour_cursor
    FETCH NEXT FROM tour_cursor INTO @Tour_id

    WHILE @@FETCH_STATUS = 0
    BEGIN
        UPDATE Tour
        SET TrangThai = N'Hết chỗ'
        WHERE Tour_id = @Tour_id

        FETCH NEXT FROM tour_cursor INTO @Tour_id
    END

    CLOSE tour_cursor
    DEALLOCATE tour_cursor
END
GO

--5. Thủ tục thêm đặt tour
CREATE TYPE HanhKhachList AS TABLE (
    HoTen NVARCHAR(128),
    NgaySinh DATE,
    GioiTinh BIT
)
go
CREATE PROCEDURE AddTourBooking
    @KhachHang_id VARCHAR(36), 
	@Tour_id VARCHAR(36), 
	@SoNguoi INT,
    @HanhKhach HanhKhachList READONLY
AS
BEGIN TRANSACTION
    BEGIN TRY
		IF NOT EXISTS (SELECT * FROM KhachHang WHERE KhachHang_id = @KhachHang_id)
		BEGIN
			PRINT N'Id khách hàng không tồn tại'
			ROLLBACK TRANSACTION
			RETURN
		END

		IF NOT EXISTS (SELECT * FROM Tour WHERE Tour_id = @Tour_id)
		BEGIN
			PRINT N'Id tour không tồn tại'
			ROLLBACK TRANSACTION
			RETURN
		END

		IF (SELECT COUNT(*) FROM @HanhKhach) != @SoNguoi
		BEGIN
			PRINT N'Số người không khớp với danh sách hành khách'
			ROLLBACK TRANSACTION
			RETURN
		END

		DECLARE @SoLuongCon INT
		SELECT @SoLuongCon = SoLuongCon
        FROM Tour
        WHERE Tour_id = @Tour_id

		IF @SoLuongCon = 0
		BEGIN
			PRINT N'Tour này đã hết chỗ'
			ROLLBACK TRANSACTION
			RETURN
		END

		IF (SELECT COUNT(*) FROM @HanhKhach) > @SoLuongCon
		BEGIN
			PRINT N'Số lượng hành khách của tour này chỉ còn: ' + CAST(@SoLuongCon AS CHAR(3))
			ROLLBACK TRANSACTION
			RETURN
		END

		INSERT INTO DatTour (KhachHang_id, NgayDat, Tour_id, SoNguoi)
		VALUES (@KhachHang_id, GETDATE(), @Tour_id, @SoNguoi)

		DECLARE @DatTour_id INT
		SELECT @DatTour_id = SCOPE_IDENTITY()

		INSERT INTO HanhKhach (HoTen, NgaySinh, GioiTinh, DatTour_id, Tour_id)
		SELECT HoTen, NgaySinh, GioiTinh, @DatTour_id, @Tour_id
		FROM @HanhKhach
	END TRY

	BEGIN CATCH
		PRINT N'Lỗi hệ thống, đặt tour thất bại'
		DECLARE @ErrorMessage NVARCHAR(1000)
		SELECT @ErrorMessage = N'Lỗi: ' + ERROR_MESSAGE()
		RAISERROR(@ErrorMessage, 16, 1)
		ROLLBACK TRANSACTION
		RETURN
	END CATCH

	PRINT N'Đặt tour thành công'
COMMIT TRANSACTION
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


-- sau khi insert vào bảng thanh toán thì tự động có tổng tiền, không cần tính bằng tay
CREATE TRIGGER TRG_AfterInsertThanhToan_CalculateTongTien
ON ThanhToan
AFTER INSERT
AS
BEGIN
    DECLARE @DatTour_id INT;
    DECLARE @SoNguoi INT;
    DECLARE @Gia DECIMAL(12, 2);
    DECLARE @TongTien DECIMAL(12, 2);

    SELECT @DatTour_id = DatTour_id
    FROM inserted;

    SELECT 
        @SoNguoi = dt.SoNguoi,
        @Gia = t.Gia
    FROM DatTour dt
    JOIN Tour t ON dt.Tour_id = t.Tour_id
    WHERE dt.DatTour_id = @DatTour_id;

    SET @TongTien = @SoNguoi * @Gia;

    UPDATE ThanhToan
    SET TongTien = @TongTien
    WHERE DatTour_id = @DatTour_id;
END;
GO

--INSERT INTO ThanhToan (DatTour_id, NgayThanhToan, HinhThuc_id)
--VALUES (1, GETDATE(), N'Thẻ ATM');




-- Procedure thêm 1 Đặt Tour
CREATE PROCEDURE SP_DatTour
    @KhachHang_id varchar(36),
    @Tour_id varchar(36),
    @SoNguoi int
AS
BEGIN

    INSERT INTO DatTour (KhachHang_id, Tour_id, SoNguoi, NgayDat)
    VALUES (@KhachHang_id, @Tour_id, @SoNguoi, GETDATE());
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

-- select dbo.FN_CheckTourStatus('TOUR001') 

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

-- select * from dbo.GetTourInfo()

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
        TK.Name AS DiemKhoiHanh,    
        DN.Name AS DiemDen,         
        T.NgayKhoiHanh,      
        T.NgayKetThuc        
    FROM 
        DatTour DT
    INNER JOIN 
        Tour T ON DT.Tour_id = T.Tour_id
    INNER JOIN 
        TinhThanh TK ON T.DiemKhoiHanh_id = TK.TinhThanh_id  
    INNER JOIN 
        TinhThanh DN ON T.DiemDen_id = DN.TinhThanh_id       
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

CREATE  TRIGGER updateSoLuongCon
ON DatTour
AFTER INSERT
AS
BEGIN
    DECLARE @Tour_id varchar(128), @SoNguoi INT, @SoLuongCon INT;

    -- Lấy giá trị từ bản ghi được chèn
    SELECT @Tour_id = Tour_id, @SoNguoi = SoNguoi
    FROM inserted;

    -- Cập nhật số lượng còn
    UPDATE Tour
    SET SoLuongCon = SoLuongCon - @SoNguoi
    WHERE Tour_id = @Tour_id;

    -- Kiểm tra và cập nhật trạng thái nếu hết chỗ
    SELECT @SoLuongCon = SoLuongCon
    FROM Tour
    WHERE Tour_id = @Tour_id;

    IF @SoLuongCon <= 0
    BEGIN
        UPDATE Tour
        SET TrangThai = N'Hết chỗ'
        WHERE Tour_id = @Tour_id;
    END
END;
Go


--Trigger cập nhật lại số lượng còn của 1 tour khi thêm 1 HuyTour mới
--Khi thêm bản ghi mới vào bảng HuyTour, tự động Tăng SoLuongCon trong bảng Tour.
CREATE TRIGGER updateSoLuongCon_HuyTour
ON HuyTour
AFTER INSERT
AS
BEGIN
    -- Cập nhật số lượng còn
    UPDATE t
    SET t.SoLuongCon = t.SoLuongCon + dt.SoNguoi
    FROM Tour t
    JOIN DatTour dt ON dt.Tour_id = t.Tour_id
    JOIN inserted i ON i.DatTour_id = dt.DatTour_id;

    -- Cập nhật trạng thái nếu số lượng còn > 0
    UPDATE t
    SET t.TrangThai = N'Còn chỗ'
    FROM Tour t
    WHERE t.SoLuongCon > 0 AND t.TrangThai = N'Hết chỗ';
END;
GO




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
    SELECT Tour_id FROM Tour WHERE TrangThai = N'Đã hoàn thành';

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
------------trigger kiểm nhà hàng chọn cho một tour có thuộc tỉnh thành mà tour đó đi đến hay không 
CREATE TRIGGER trg_CheckTinhThanh_NhaHang_Tour
ON NhaHang_Tour
INSTEAD OF INSERT
AS
BEGIN
    DECLARE @NhaHang_id VARCHAR(36);
    DECLARE @Tour_id VARCHAR(36);
    DECLARE @TinhThanhNhaHang INT;
    DECLARE @TinhThanhTour INT;

    
    SELECT @NhaHang_id = NhaHang_id, @Tour_id = Tour_id FROM INSERTED;
   
    SELECT @TinhThanhNhaHang = TinhThanh_id FROM NhaHang WHERE NhaHang_id = @NhaHang_id;

    SELECT @TinhThanhTour = DiemDen_id FROM Tour WHERE Tour_id = @Tour_id;

    IF @TinhThanhNhaHang != @TinhThanhTour
    BEGIN
        RAISERROR ('TinhThanh của nhà hàng không khớp với TinhThanh của điểm đến trong tour!', 16, 1);
        RETURN;
    END 
    INSERT INTO NhaHang_Tour (NhaHang_id, Tour_id)
    SELECT NhaHang_id, Tour_id FROM INSERTED;
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
ALTER PROCEDURE sp_KiemTraDangNhap
    @Khachhang_id VARCHAR(36),
    @Password NVARCHAR(100)
AS
BEGIN
    DECLARE @Result INT;

    IF EXISTS (
        SELECT 1 FROM Khachhang
        WHERE KhachHang_id = @Khachhang_id AND Password = @Password
    )
    BEGIN
        SET @Result = 1;
    END
    ELSE
    BEGIN
        SET @Result = 0;
    END

    RETURN @Result;
END
GO

---- pro hien thi loc nha hang theo tinh thanh 

create proc sp_HthiNhaHangTheoTinh 
 @matinhthanh int 
As 
 begin 
	select NhaHang.Name, NhaHang_id from NhaHang
	where NhaHang.TinhThanh_id = @matinhthanh
 end
 go
 
 ----- proc loc khach san theo tinh
 create proc sp_HthiKhachSanTheoTinh 
 @matinhthanh int 
As 
 begin 
	select KhachSan.Name, KhachSan.KhachSan_id, Tinhtrang from KhachSan
	where KhachSan.TinhThanh_id = @matinhthanh

 end
 go
 --- proc Kiem tra dang nhap cho nhan vien 
 Create PROCEDURE sp_KiemTraDangNhapNV
    @Nhanvien_id VARCHAR(36),
    @Password NVARCHAR(100)
AS
BEGIN
	declare @Result int
    IF NOT EXISTS (
        SELECT * FROM NhanVien
        WHERE NhanVien_id = @Nhanvien_id and Password = @Password
    )
    BEGIN
         SET @Result = 0;
    END
    ELSE
    BEGIN
      SET @Result = 1;
    END
	return @Result
END
Go



--- proc thống kê doanh thu
  CREATE PROCEDURE sp_ThongKeDoanhThu
    @Year INT = NULL  -- Tham số lọc theo năm (có thể truyền vào hoặc không)
AS
BEGIN
    SET NOCOUNT ON;

    SELECT
        YEAR(tt.NgayThanhToan) AS Nam,
        MONTH(tt.NgayThanhToan) AS Thang,
        t.Tour_id,
        t.Name AS TenTour,
        SUM(tt.TongTien) AS DoanhThu
    FROM
        ThanhToan tt
    JOIN
        DatTour dt ON tt.DatTour_id = dt.DatTour_id
    JOIN
        Tour t ON dt.Tour_id = t.Tour_id
    WHERE
        (@Year IS NULL OR YEAR(tt.NgayThanhToan) = @Year)  -- Lọc theo năm nếu có
    GROUP BY
        YEAR(tt.NgayThanhToan),
        MONTH(tt.NgayThanhToan),
        t.Tour_id,
        t.Name
    ORDER BY
        Nam DESC,
        Thang DESC,
        DoanhThu DESC;
END;

---- proc them mot danh gia vao bang danh gia
go
CREATE PROCEDURE sp_ThemDanhGia
    @Tour_id VARCHAR(36),
    @KhachHang_id VARCHAR(36),
    @NoiDung NVARCHAR(MAX),
    @Vote INT
AS
BEGIN
    SET NOCOUNT ON;

    -- Kiểm tra tính hợp lệ của dữ liệu đầu vào
    IF @Vote < 1 OR @Vote > 5
    BEGIN
        RAISERROR (N'Số sao đánh giá phải từ 1 đến 5.', 16, 1);
        RETURN;
    END

    -- Thêm đánh giá vào bảng DanhGia
    INSERT INTO DanhGia (Tour_id, KhachHang_id, NoiDung, Vote)
    VALUES (@Tour_id, @KhachHang_id, @NoiDung, @Vote);

    PRINT N'Đánh giá đã được thêm thành công.';
END;
go