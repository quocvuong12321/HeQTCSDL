

INSERT INTO [TinhThanh] ([Name]) VALUES 
(N'Hà Nội'),            -- Thủ đô, nổi tiếng với phố cổ, lăng Chủ tịch Hồ Chí Minh
(N'Hồ Chí Minh'),       -- Thành phố lớn, nổi tiếng với nhà thờ Đức Bà, chợ Bến Thành
(N'Đà Nẵng'),           -- Nổi tiếng với bãi biển Mỹ Khê, cầu Rồng
(N'Khánh Hòa'),         -- Tỉnh có thành phố Nha Trang, bãi biển đẹp
(N'Quảng Ninh'),        -- Nổi tiếng với Vịnh Hạ Long, di sản thiên nhiên thế giới
(N'Quảng Nam'),         -- Có phố cổ Hội An, di sản văn hóa thế giới
(N'Thừa Thiên Huế'),    -- Nổi tiếng với di sản Cố đô Huế
(N'Bà Rịa - Vũng Tàu'), -- Biển Vũng Tàu, điểm đến gần Sài Gòn
(N'Kiên Giang'),        -- Tỉnh có đảo Phú Quốc, địa điểm du lịch biển đảo nổi tiếng
(N'Lâm Đồng'),          -- Nổi tiếng với Đà Lạt, thành phố ngàn hoa
(N'Bình Thuận'),        -- Tỉnh có Mũi Né, nổi tiếng với các bãi biển và đồi cát
(N'Bình Định'),         -- Quy Nhơn, điểm đến mới nổi với các bãi biển đẹp
(N'Phú Yên'),           -- Nổi tiếng với Gành Đá Đĩa và các bãi biển hoang sơ
(N'Quảng Bình'),        -- Có Phong Nha - Kẻ Bàng, di sản thiên nhiên thế giới
(N'Ninh Bình'),         -- Nổi tiếng với Tràng An, di sản văn hóa và thiên nhiên
(N'Bắc Giang'),         -- Có khu du lịch sinh thái Suối Mỡ, Tây Yên Tử
(N'Lào Cai'),           -- Tỉnh có thị trấn Sa Pa, địa danh nổi tiếng về văn hóa và thiên nhiên
(N'Cần Thơ'),           -- Thủ phủ miền Tây sông nước, nổi tiếng với chợ nổi Cái Răng
(N'Bến Tre'),           -- Du lịch sông nước, nổi tiếng với cảnh đẹp của miền sông nước Cửu Long
(N'An Giang'),          -- Nổi tiếng với rừng tràm Trà Sư, chợ nổi và lễ hội Châu Đốc
(N'Cà Mau'),            -- Đất mũi Cà Mau, điểm đến cực Nam của Việt Nam
(N'Bình Dương'),        -- Gần TP.HCM, có các khu du lịch sinh thái
(N'Nghệ An'),           -- Có bãi biển Cửa Lò và khu di tích Kim Liên
(N'Hà Tĩnh'),           -- Có biển Thiên Cầm, khu du lịch sinh thái Hồ Kẻ Gỗ
(N'Hải Phòng'),         -- Có Đồ Sơn và đảo Cát Bà nổi tiếng với các bãi biển
(N'Tây Ninh'),          -- Nổi tiếng với núi Bà Đen, điểm đến tâm linh và du lịch sinh thái
(N'Sóc Trăng'),         -- Nổi tiếng với các ngôi chùa Khmer và lễ hội Oóc Om Bóc
(N'Long An'),           -- Nổi tiếng với khu du lịch Làng Nổi Tân Lập
(N'Đăk Lăk'),           -- Có Buôn Đôn, du lịch sinh thái và văn hóa dân tộc
(N'Gia Lai');           -- Nổi tiếng với Biển Hồ và các di tích văn hóa dân tộc


INSERT INTO [KhachSan] (KhachSan_id, Name, TinhThanh_id) VALUES 
('KS001', N'Khách Sạn 1', 1),
('KS002', N'Khách Sạn 2', 2),
('KS003', N'Khách Sạn 3', 3);


INSERT INTO [NhaHang] (NhaHang_id, Name, TinhThanh_id) VALUES 
('NH001', N'Nhà Hàng 1', 1),
('NH002', N'Nhà Hàng 2', 2),
('NH003', N'Nhà Hàng 3', 3);


INSERT INTO [Tour] ([Tour_id], [Name], [Gia], [MoTa], [LichTrinh], [DiemKhoiHanh_id], [DiemDen_id], [KhachSan_id], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [LoaiTour], [TrangThai])
VALUES 
('T001', N'Tour Hà Nội', 5000000.00, N'Khám phá thủ đô Hà Nội, thăm Lăng Bác, Hồ Gươm', N'Lịch trình tour Hà Nội', 1, 2, 'KS001', '2024-12-01', '2024-12-07', 20, N'Trong nước', N'Mở bán'),
('T002', N'Tour Đà Nẵng', 7000000.00, N'Khám phá thành phố Đà Nẵng, bãi biển Mỹ Khê', N'Lịch trình tour Đà Nẵng', 3, 4, 'KS002', '2024-12-10', '2024-12-15', 15, N'Trong nước', N'Mở bán'),
('T003', N'Tour Sapa', 6500000.00, N'Khám phá Sapa, thăm núi Fansipan', N'Lịch trình tour Sapa', 5, 6, 'KS003', '2024-12-20', '2024-12-25', 10, N'Trong nước', N'Mở bán'),
('T004', N'Tour Phú Quốc', 8000000.00, N'Thăm đảo Phú Quốc, bãi biển tuyệt đẹp', N'Lịch trình tour Phú Quốc', 7, 8, 'KS001', '2024-12-15', '2024-12-18', 25, N'Trong nước', N'Mở bán'),
('T005', N'Tour Thái Lan', 12000000.00, N'Tour du lịch Thái Lan, khám phá Bangkok và Pattaya', N'Lịch trình tour Thái Lan', 9, 10, 'KS003', '2024-12-05', '2024-12-12', 30, N'Ngoài nước', N'Mở bán');


INSERT INTO [KhachHang] ([KhachHang_id], [Name], [Email], [DienThoai], [DiaChi], [Password], [Gioitinh])
VALUES 
('KH001', N'Nguyễn Văn A', N'nguyenvana@example.com', '0123456789', N'123 Đường ABC, Hà Nội', N'password123', 1),
('KH002', N'Phạm Thị B', N'phamthib@example.com', '0987654321', N'456 Đường XYZ, Đà Nẵng', N'password456', 0),
('KH003', N'Lê Minh C', N'leminhc@example.com', '0912345678', N'789 Đường 123, Sapa', N'password789', 1),
('KH004', N'Hoàng Thị D', N'hoangthid@example.com', '0908765432', N'101 Đường 456, Phú Quốc', N'password101', 0),
('KH005', N'Trần Minh E', N'tranmine@example.com', '0986123456', N'202 Đường 789, Thái Lan', N'password202', 1);

INSERT INTO [DatTour] ([GhiChu], [KhachHang_id], [NgayDat], [Tour_id], [SoNguoi])
VALUES 
(N'Đặt tour cho gia đình', 'KH001', '2024-11-01', 'T001', 4),
(N'Đặt tour cho nhóm bạn', 'KH002', '2024-11-05', 'T001', 3),
(N'Đặt tour cho nhóm khách doanh nghiệp', 'KH003', '2024-11-10', 'T003', 10),
(N'Đặt tour cho gia đình', 'KH004', '2024-11-15', 'T004', 5),
(N'Đặt tour cho nhóm bạn', 'KH005', '2024-11-18', 'T005', 6);


INSERT INTO [ThanhToan] ([DatTour_id], [NgayThanhToan], [HinhThuc_id], [TongTien])
VALUES 
(2, '2024-11-02', N'Chuyển khoản ngân hàng', 20000000.00),
(3, '2024-11-06', N'Momo', 21000000.00),
(4, '2024-11-12', N'Chuyển khoản ngân hàng', 65000000.00),
(5, '2024-11-17', N'Chuyển khoản ngân hàng', 40000000.00),
(6, '2024-11-20', N'Momo', 72000000.00);
