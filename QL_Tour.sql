﻿
create database QL_Tour
ON PRIMARY
(
	name = QL_Tour_PRIMARY,
	filename = 'D:\QL_Tour_PRIMARY.mdf',
	size = 15mb,
	filegrowth = 15%,
	maxsize = 30mb
)
LOG ON 
(
	name = QL_Tour_LOG,
	filename = 'D:\QL_Tour_LOG.ldf',
	size = 10mb,
	filegrowth = 15%,
	maxsize = 20mb
)
go

use QL_Tour
go


CREATE TABLE [Tour] (
  [Tour_id] varchar(36) PRIMARY KEY,
  [Name] nvarchar(128),
  [Gia] decimal(12,2),
  [MoTa] nvarchar(max),
  [LichTrinh] nvarchar(max),
  [DiemKhoiHanh_id] int,
  [DiemDen_id] int,
  [KhachSan_id] varchar(36),
  [NgayKhoiHanh] date,
  [NgayKetThuc] date,
  [SoLuongCon] int,
  [LoaiTour] nvarchar(255) NOT NULL CHECK ([LoaiTour] IN (N'Trong nước', N'Ngoài nước')) ,
  [TrangThai] nvarchar(255) NOT NULL CHECK ([TrangThai] IN (N'Mở bán', N'Hết chỗ', N'Đang diễn ra', N'Đã hoàn thành'))
)
GO

CREATE TABLE [Image_Tour] (
  [Img_id] int not null identity(1,1) PRIMARY KEY,
  [Name] nvarchar(128),
  [Tour_id] varchar(36)
)
GO

CREATE TABLE [TinhThanh] (
  [TinhThanh_id] int not null identity(1,1) PRIMARY KEY,
  [Name] nvarchar(128)
)
GO

CREATE TABLE [NhanVien] (
  [NhanVien_id] varchar(36) PRIMARY KEY,
  [HoTen] nvarchar(128),
  [Email] nvarchar(128),
  [DiaChi] nvarchar(128),
  [DienThoai] varchar(20),
  [GioiTinh] bit,
  [Password] varchar(128),
  [VaiTro] nvarchar(255) NOT NULL CHECK ([VaiTro] IN (N'Quản lý', N'Hướng dẫn viên', N'Nhân viên'))
)
GO

CREATE TABLE [PhanCong_NhanVien] (
  [Tour_id] varchar(36),
  [NhanVien_id] varchar(36),
  PRIMARY KEY ([Tour_id], [NhanVien_id])
)
GO

CREATE TABLE [NhaHang] (
  [NhaHang_id] varchar(36) PRIMARY KEY,
  [Name] nvarchar(100),
  [TinhThanh_id] int
)
GO

CREATE TABLE [NhaHang_Tour] (
  [NhaHang_id] varchar(36),
  [Tour_id] varchar(36),
  PRIMARY KEY ([NhaHang_id], [Tour_id])
)
GO

CREATE TABLE [DanhGia] (
  [DanhGia_id] int not null identity(1,1) PRIMARY KEY,
  [Tour_id] varchar(36),
  [KhachHang_id] varchar(36),
  [Noidung] nvarchar(max),
  [Vote] int
)
GO

CREATE TABLE [KhachHang] (
  [KhachHang_id] varchar(36) PRIMARY KEY,
  [Name] nvarchar(128),
  [Email] nvarchar(128),
  [DienThoai] varchar(20),
  [DiaChi] nvarchar(128),
  [Password] nvarchar(128),
  [Gioitinh] bit
)
GO

CREATE TABLE [DatTour] (
  [DatTour_id] int not null identity(1,1) PRIMARY KEY,
  [GhiChu] nvarchar(36),
  [KhachHang_id] varchar(36),
  [NgayDat] datetime,
  [Tour_id] varchar(36),
  [SoNguoi] int
)
GO

CREATE TABLE [HuyTour] (
  [HuyTour_id] int  not null identity(1,1) PRIMARY KEY,
  [DatTour_id] int,
  [NgayHuy] date,
  [LyDo] nvarchar(max),
  [TrangThai] nvarchar(36)
)
GO

CREATE TABLE [ThanhToan] (
  [ThanhToan_id] int not null identity(1,1) PRIMARY KEY,
  [DatTour_id] int,
  [NgayThanhToan] datetime,
  [HinhThuc_id] nvarchar(255) NOT NULL,
  [TongTien] decimal(12,2)
)
GO

CREATE TABLE [KhachSan] (
  [KhachSan_id] varchar(36) PRIMARY KEY,
  [Name] nvarchar(128),
  [TinhThanh_id] int
)
GO
ALTER Table [KhachSan] 
ADD [Tinhtrang] Nvarchar(128) 

CREATE TABLE [HanhKhach] (
  [HanhKhach_id] int not null identity(1,1) PRIMARY KEY,
  [HoTen] nvarchar(128),
  [NgaySinh] date,
  [GioiTinh] bit,
  [DatTour_id] int,
  [Tour_id] varchar(36)
)
GO

ALTER TABLE [Image_Tour] ADD FOREIGN KEY ([Tour_id]) REFERENCES [Tour] ([Tour_id])
GO

ALTER TABLE [PhanCong_NhanVien] ADD FOREIGN KEY ([Tour_id]) REFERENCES [Tour] ([Tour_id])
GO

ALTER TABLE [PhanCong_NhanVien] ADD FOREIGN KEY ([NhanVien_id]) REFERENCES [NhanVien] ([NhanVien_id])
GO

ALTER TABLE [Tour] ADD FOREIGN KEY ([DiemKhoiHanh_id]) REFERENCES [TinhThanh] ([TinhThanh_id])
GO

ALTER TABLE [Tour] ADD FOREIGN KEY ([DiemDen_id]) REFERENCES [TinhThanh] ([TinhThanh_id])
GO

ALTER TABLE [NhaHang_Tour] ADD FOREIGN KEY ([NhaHang_id]) REFERENCES [NhaHang] ([NhaHang_id])
GO

ALTER TABLE [NhaHang_Tour] ADD FOREIGN KEY ([Tour_id]) REFERENCES [Tour] ([Tour_id])
GO

ALTER TABLE [DatTour] ADD FOREIGN KEY ([Tour_id]) REFERENCES [Tour] ([Tour_id])
GO

ALTER TABLE [DanhGia] ADD FOREIGN KEY ([Tour_id]) REFERENCES [Tour] ([Tour_id])
GO

ALTER TABLE [DanhGia] ADD FOREIGN KEY ([KhachHang_id]) REFERENCES [KhachHang] ([KhachHang_id])
GO

ALTER TABLE [HuyTour] ADD FOREIGN KEY ([DatTour_id]) REFERENCES [DatTour] ([DatTour_id])
GO

ALTER TABLE [ThanhToan] ADD FOREIGN KEY ([DatTour_id]) REFERENCES [DatTour] ([DatTour_id])
GO

ALTER TABLE [DatTour] ADD FOREIGN KEY ([KhachHang_id]) REFERENCES [KhachHang] ([KhachHang_id])
GO

ALTER TABLE [NhaHang] ADD FOREIGN KEY ([TinhThanh_id]) REFERENCES [TinhThanh] ([TinhThanh_id])
GO

ALTER TABLE [KhachSan] ADD FOREIGN KEY ([TinhThanh_id]) REFERENCES [TinhThanh] ([TinhThanh_id])
GO

ALTER TABLE [Tour] ADD FOREIGN KEY ([KhachSan_id]) REFERENCES [KhachSan] ([KhachSan_id])
GO

ALTER TABLE [HanhKhach] ADD FOREIGN KEY ([Tour_id]) REFERENCES [Tour] ([Tour_id])
GO

ALTER TABLE [HanhKhach] ADD FOREIGN KEY ([DatTour_id]) REFERENCES [DatTour]([DatTour_id])

--------------------------RÀNG BUỘC--------------------------------------------------
----------------------------Bảo--------------------------------------------------
ALTER TABLE [DatTour] 
ADD 
	CONSTRAINT DF_DatTour_GhiChu DEFAULT N'Chưa xác nhận' for GhiChu,
	CONSTRAINT CK_DatTour_SoNguoi CHECK ([SoNguoi] > 0),
	CONSTRAINT CK_DatTour_GhiChu CHECK (GhiChu IN (N'Đã xác nhận',N'Chưa xác nhận'))


ALTER TABLE [HuyTour] 
ADD 
	CONSTRAINT CK_HuyTour_NgayHuy CHECK ([NgayHuy] >= CAST(GETDATE() AS DATE)),
	CONSTRAINT CK_HuyTour_TrangThai CHECK (TrangThai IN (N'Đã xác nhận',N'Chưa xác nhận')),
	CONSTRAINT UNI_HuyTour_DatTour_id UNIQUE ([DatTour_id])

ALTER TABLE [ThanhToan] 
ADD 
	CONSTRAINT UNI_ThanhToan_DatTour_id UNIQUE ([DatTour_id]),
    CONSTRAINT CK_ThanhToan_HinhThuc  CHECK ([HinhThuc_id] IN (N'Thẻ ATM', N'Chuyển khoản ngân hàng', N'Momo')),
    CONSTRAINT CK_ThanhToan_TongTien CHECK ([TongTien] >= 0);


----------------------------Vương--------------------------------------------------

ALTER TABLE [Tour]
ADD CONSTRAINT CK_DIEMDI_DIEMDEN CHECK([DiemKhoiHanh_id] <> [DiemDen_id]),
	CONSTRAINT CK_NGAYKH_NGAYKT CHECK([NgayKhoiHanh] <> [NgayKetThuc]),
	CONSTRAINT CK_SOLUONGCON CHECK([SOLUONGCON] >= 0),
	CONSTRAINT CK_GIA CHECK([GIA] >= 0)

----------------------------Vẹn--------------------------------------------------
-- Ràng buộc toàn vẹn cho bảng Nhân viên
ALTER TABLE [NhanVien] ADD CONSTRAINT UQ_NhanVien_Email UNIQUE ([Email])
ALTER TABLE [NhanVien] ADD CONSTRAINT UQ_NhanVien_DienThoai UNIQUE ([DienThoai])

-- Ràng buộc toàn vẹn cho bảng Hành khách
ALTER TABLE [HanhKhach] ADD CHECK (NgaySinh <= GETDATE() -- Ngày sinh không được là ngày tương lai
							   AND NgaySinh >= DATEADD(YEAR, -120, GETDATE()) -- Ngày sinh không cách hiện tại quá 120 năm
)

----------------------------Phong--------------------------------------------------
ALTER TABLE [TinhThanh] ADD CONSTRAINT CK_TinhThanh_Id CHECK ([TinhThanh_id] > 0 )
Go
ALTER TABLE [KhachSan] ADD CONSTRAINT CK_TinhTrang CHECK ([Tinhtrang] In (N'Còn Phòng',N'Hết Phòng'))
Go
		


