

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


