use QL_Tour
go


-------------------Vương-------------------
--Phân quyền cho quản lý
sp_addrole Quanly
go
grant select,insert,update,delete
on Tour
to Quanly
go

grant select,insert,delete,update 
on Image_Tour
to Quanly
go

grant select,insert,delete,update
on NhanVien
to Quanly
go

grant select,insert,delete,update
on PhanCong_NhanVien
to Quanly
go

grant select,update
on KhachHang
to Quanly
go

grant select,insert,delete,update
on KhachSan
to Quanly
go

grant select,insert,delete,update
on NhaHang
to Quanly
go

grant select,insert,delete,update
on NhaHang_Tour
to Quanly
go

grant select,insert,delete,update
on TinhThanh
to Quanly
go

grant select,update
on DanhGia
to Quanly
go

grant select
on HanhKhach
to Quanly
go

grant select,insert
on HuyTour
to Quanly
go

grant select,update
on ThanhToan
to Quanly
go 

grant select,insert,update
on DatTour
to Quanly
go



-----------Bảo---------------
--Phân quyền cho nhân viên
sp_addrole 'NhanVien'
go

GRANT SELECT
ON Tour
TO [NhanVien]
go

GRANT SELECT
ON KhachHang
TO [NhanVien]
go

GRANT SELECT
ON HanhKhach
TO [NhanVien]
go

GRANT SELECT, UPDATE
ON DatTour
TO [NhanVien]
go

GRANT SELECT, UPDATE
ON HuyTour
TO [NhanVien]
go

GRANT SELECT
ON ThanhToan
TO [NhanVien]
go

GRANT SELECT
ON NhaHang_Tour
TO [NhanVien]
go

GRANT SELECT
ON NhaHang
TO [NhanVien]
go

GRANT SELECT
ON TinhThanh
TO [NhanVien]
go

GRANT SELECT
ON KhachSan
TO [NhanVien]
go

GRANT SELECT
ON PhanCong_NhanVien
TO [NhanVien]
go

GRANT SELECT
ON Image_Tour
TO [NhanVien]
go

-----------Vẹn---------
--Phân quyền cho hướng dẫn viên
sp_addrole 'HuongDanVien'
go

grant select, update
on Tour
to HuongDanVien
go

grant select
on KhachHang
to HuongDanVien
go

grant select
on HanhKhach
to HuongDanVien
go

grant select
on DatTour
to HuongDanVien
go

grant select
on HuyTour
to HuongDanVien
go

grant select
on ThanhToan
to HuongDanVien
go

grant select
on NhaHang_Tour
to HuongDanVien
go

grant select
on NhaHang
to HuongDanVien
go

grant select
on TinhThanh
to HuongDanVien
go

grant select
on KhachSan
to HuongDanVien
go

grant select, delete
on PhanCong_NhanVien
to HuongDanVien
go

grant select
on Image_Tour
to HuongDanVien
go


------------Phong-----------
--Phân quyền khách hàng
CREATE ROLE KhachHang; 
go
GRANT SELECT ON [Tour] TO KhachHang; 
GRANT SELECT ON [Image_Tour] TO KhachHang; 
GRANT SELECT ON [TinhThanh] TO KhachHang; 
GRANT SELECT ON [NhaHang] TO KhachHang; 
GRANT SELECT ON [KhachSan] TO KhachHang; 
GRANT SELECT ON [NhaHang_Tour] TO KhachHang;
GRANT INSERT ON [DanhGia] TO KhachHang; 
GRANT INSERT, UPDATE ON [KhachHang] TO KhachHang; 
GRANT INSERT ON [DatTour] TO KhachHang; 
GRANT INSERT ON [ThanhToan] TO KhachHang;
GRANT INSERT ON [HanhKhach] TO KhachHang; 
GRANT INSERT ON [HuyTour] TO KhachHang;
go








CREATE PROCEDURE ThemNhanVien
    @NhanVien_id VARCHAR(36),     
    @HoTen NVARCHAR(128),    
	@DiaChi nvarchar(128),
    @Email VARCHAR(128),       
    @DienThoai VARCHAR(36) = NULL, 
    @GIOITINH bit,    
    @password NVARCHAR(128) = NULL,
    @VaiTro NVARCHAR(128)      
as
begin
	begin try
		begin transaction
		INSERT INTO NhanVien VALUES (@NhanVien_id,@HoTen,@Email,@DiaChi,@DienThoai,@GIOITINH,@password,@VaiTro)

		Declare @role NVARCHAR(128)
		if @VaiTro = N'Quản lý'
			set @role = 'Quanly'
		else if @VaiTro = N'Nhân viên'
			set @role = 'NhanVien'
		else 
			set @role = 'HuongDanVien'
	
		-- Tạo SQL Server login
			DECLARE @SQL NVARCHAR(MAX);
			SET @SQL = N'CREATE LOGIN [' + @NhanVien_id + N'] WITH PASSWORD = ''' + @password + N''';';
			EXEC sp_executesql @SQL;
			
		-- Tạo database user tương ứng với login
			SET @SQL = N'CREATE USER [' + @NhanVien_id + N'] FOR LOGIN [' + @NhanVien_id + N'];';
			EXEC sp_executesql @SQL;
		-- Gán quyền cho user dựa vào vai trò
			SET @SQL = N'EXEC sp_addrolemember ''' + @role + ''', [' + @NhanVien_id + N'];';
			EXEC sp_executesql @SQL;

		commit transaction;
	END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        DECLARE @ErrorMessage NVARCHAR(4000), @ErrorSeverity INT, @ErrorState INT;
        SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE();
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
end
go


CREATE PROCEDURE XoaNhanVien
    @NhanVien_id VARCHAR(36)
AS
BEGIN
    BEGIN TRY
        BEGIN TRANSACTION
        -- Xóa login
        DECLARE @SQL NVARCHAR(MAX);
        SET @SQL = N'DROP LOGIN [' + @NhanVien_id + N'];';
        EXEC sp_executesql @SQL;

        -- Xóa user database
        SET @SQL = N'DROP USER [' + @NhanVien_id + N'];';
        EXEC sp_executesql @SQL;

        -- Xóa nhân viên khỏi bảng NhanVien
        DELETE FROM NhanVien WHERE NhanVien_id = @NhanVien_id;

        COMMIT TRANSACTION;
    END TRY
    BEGIN CATCH
        ROLLBACK TRANSACTION;
        DECLARE @ErrorMessage NVARCHAR(4000), @ErrorSeverity INT, @ErrorState INT;
        SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE();
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
    END CATCH
END
GO


CREATE PROCEDURE ThemKhachHang
	@KhachHang_id varchar(128),
	@Name nvarchar(128),
	@Email nvarchar(128),
	@DienThoai nvarchar(128),
	@DiaChi nvarchar(128),
	@Password nvarchar(128),
	@Gioitinh bit
as
begin
	begin try
		begin transaction
			INSERT INTO KhachHang 
			values (@KhachHang_id,@Name,@Email,@DienThoai,@DiaChi,@Password,@Gioitinh)
			-- Tạo SQL Server login
			DECLARE @SQL NVARCHAR(MAX);
			SET @SQL = N'CREATE LOGIN [' + @KhachHang_id + N'] WITH PASSWORD = ''' + @Password + N''';';
			EXEC sp_executesql @SQL;
			
		-- Tạo database user tương ứng với login
			SET @SQL = N'CREATE USER [' + @KhachHang_id + N'] FOR LOGIN [' + @KhachHang_id + N'];';
			EXEC sp_executesql @SQL;
		-- Gán quyền cho user dựa vào vai trò
			SET @SQL = N'EXEC sp_addrolemember ''' + 'KhachHang' + ''', [' + @KhachHang_id + N'];';
			EXEC sp_executesql @SQL;

		commit transaction
	end try
	begin catch
	 ROLLBACK TRANSACTION
        DECLARE @ErrorMessage NVARCHAR(4000), @ErrorSeverity INT, @ErrorState INT;
        SELECT @ErrorMessage = ERROR_MESSAGE(), @ErrorSeverity = ERROR_SEVERITY(), @ErrorState = ERROR_STATE();
        RAISERROR (@ErrorMessage, @ErrorSeverity, @ErrorState);
	end catch
end
go

CREATE TRIGGER trgUpdateNhanVienRole
ON NhanVien
FOR UPDATE
AS
IF update(VaiTro)
BEGIN
    DECLARE @NhanVien_id VARCHAR(36)
    DECLARE @newVaiTro NVARCHAR(128)
    DECLARE @oldVaiTro NVARCHAR(128)

    SELECT @NhanVien_id = inserted.NhanVien_id, 
           @newVaiTro = inserted.VaiTro,
           @oldVaiTro = deleted.VaiTro
    FROM inserted
    JOIN deleted ON inserted.NhanVien_id = deleted.NhanVien_id;

    -- Nếu vai trò không thay đổi thì không làm gì cả
    IF @newVaiTro = @oldVaiTro
        RETURN;

    -- Xóa role cũ
    DECLARE @oldRole NVARCHAR(128);
    IF @oldVaiTro = N'Quản lý'
        SET @oldRole = 'Quanly';
    ELSE IF @oldVaiTro = N'Nhân viên'
        SET @oldRole = 'NhanVien';
    ELSE 
        SET @oldRole = 'HuongDanVien';

    DECLARE @SQL NVARCHAR(MAX);
    SET @SQL = N'EXEC sp_droprolemember ''' + @oldRole + ''', [' + @NhanVien_id + N'];';
    EXEC sp_executesql @SQL;

    -- Thêm role mới
    DECLARE @newRole NVARCHAR(128);
    IF @newVaiTro = N'Quản lý'
        SET @newRole = 'Quanly';
    ELSE IF @newVaiTro = N'Nhân viên'
        SET @newRole = 'NhanVien';
    ELSE 
        SET @newRole = 'HuongDanVien';

    SET @SQL = N'EXEC sp_addrolemember ''' + @newRole + ''', [' + @NhanVien_id + N'];';
    EXEC sp_executesql @SQL;
END