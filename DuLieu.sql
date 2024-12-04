use QL_Tour
go

INSERT INTO TinhThanh Values
(N'Hà Nội'),            
(N'Hồ Chí Minh'),       
(N'Thừa Thiên Huế'),    
(N'Quảng Bình'),         
(N'Quảng Ninh'),        
(N'Trung Quốc'),
(N'Nhật Bản'),
(N'Hàn Quốc');
         


INSERT INTO [KhachHang] ([KhachHang_id], [Name], [Email], [DienThoai], [DiaChi], [Password], [Gioitinh])
VALUES 
('KH001', N'Nguyễn Văn A', N'nguyenvana@example.com', '0123456789', N'123 Đường ABC, Hà Nội', N'password123', 1),
('KH002', N'Phạm Thị B', N'phamthib@example.com', '0987654321', N'456 Đường XYZ, Đà Nẵng', N'password456', 0),
('KH003', N'Lê Minh C', N'leminhc@example.com', '0912345678', N'789 Đường 123, Sapa', N'password789', 1),
('KH004', N'Hoàng Thị D', N'hoangthid@example.com', '0908765432', N'101 Đường 456, Phú Quốc', N'password101', 0),
('KH005', N'Trần Minh E', N'tranmine@example.com', '0986123456', N'202 Đường 789, Thái Lan', N'password202', 1);

go


INSERT [dbo].[KhachSan] ([KhachSan_id], [Name], [TinhThanh_id], [Tinhtrang]) VALUES (N'168E40A3-1FA6-4BE6-B6D9-637060742BD0', N'Khách sạn Imperial & Spa', 1, N'Còn Phòng')
GO
INSERT [dbo].[KhachSan] ([KhachSan_id], [Name], [TinhThanh_id], [Tinhtrang]) VALUES (N'1AC5C6CA-8084-4824-B35B-E8AC93B5D17E', N'HARMONY HALONG HOTEL', 5, N'Còn Phòng')
GO
INSERT [dbo].[KhachSan] ([KhachSan_id], [Name], [TinhThanh_id], [Tinhtrang]) VALUES (N'1D06E01E-6081-4D6F-B700-200ADBF262F8', N'Meliá Vinpearl Hue', 3, N'Còn Phòng')
GO
INSERT [dbo].[KhachSan] ([KhachSan_id], [Name], [TinhThanh_id], [Tinhtrang]) VALUES (N'2AFD1D10-7F2D-4C8C-9D22-46047AE66275', N'Diamond Luxury Hotel Hạ Long', 5, N'Còn Phòng')
GO
INSERT [dbo].[KhachSan] ([KhachSan_id], [Name], [TinhThanh_id], [Tinhtrang]) VALUES (N'2C106247-6B8E-42FB-A74B-4A016B512F9E', N'Holiday Inn Express Yangjiang City Center, an IHG Hotel', 6, N'Còn Phòng')
GO
INSERT [dbo].[KhachSan] ([KhachSan_id], [Name], [TinhThanh_id], [Tinhtrang]) VALUES (N'2E8F6FE1-7F77-4830-B929-E98FA5B8D4F6', N'Grand Mercure Hanoi', 1, N'Còn Phòng')
GO
INSERT [dbo].[KhachSan] ([KhachSan_id], [Name], [TinhThanh_id], [Tinhtrang]) VALUES (N'2EEDB2EF-67CA-4B46-854F-9548F4F607CA', N'Meliá Vinpearl Quảng Bình', 4, N'Còn Phòng')
GO
INSERT [dbo].[KhachSan] ([KhachSan_id], [Name], [TinhThanh_id], [Tinhtrang]) VALUES (N'451FCD8C-ED8B-4FD0-9B3F-FDAB2FE6E6E5', N'DeLaSea Ha Long Hotel', 5, N'Còn Phòng')
GO
INSERT [dbo].[KhachSan] ([KhachSan_id], [Name], [TinhThanh_id], [Tinhtrang]) VALUES (N'4667BC21-85E7-47F3-B2E9-9141D6653337', N'Shenzhen Lido Hotel', 6, N'Còn Phòng')
GO
INSERT [dbo].[KhachSan] ([KhachSan_id], [Name], [TinhThanh_id], [Tinhtrang]) VALUES (N'550532FF-376D-4670-92A7-768F452A8F30', N'Sakaiminato Onyado Nono Natural Hot Spring', 7, N'Còn Phòng')
GO
INSERT [dbo].[KhachSan] ([KhachSan_id], [Name], [TinhThanh_id], [Tinhtrang]) VALUES (N'5FA6FC16-6502-4EBB-8BB7-243C3B1882E0', N'Senna Hue Hotel', 3, N'Còn Phòng')
GO
INSERT [dbo].[KhachSan] ([KhachSan_id], [Name], [TinhThanh_id], [Tinhtrang]) VALUES (N'607B5DD4-18BB-417F-8568-508FE2FA5BB0', N'The Sanraku Hotel Kanazawa', 7, N'Còn Phòng')
GO
INSERT [dbo].[KhachSan] ([KhachSan_id], [Name], [TinhThanh_id], [Tinhtrang]) VALUES (N'74631BAF-6AC9-40C1-AF14-9D9B99A6CCAF', N'REX QUANG BINH HOTEL', 4, N'Còn Phòng')
GO
INSERT [dbo].[KhachSan] ([KhachSan_id], [Name], [TinhThanh_id], [Tinhtrang]) VALUES (N'805E3376-56AA-4DB5-8BA9-430BADF6B55F', N'기네스 원룸', 8, N'Còn Phòng')
GO
INSERT [dbo].[KhachSan] ([KhachSan_id], [Name], [TinhThanh_id], [Tinhtrang]) VALUES (N'9DAA6EE9-7492-4BEC-BC55-114E44316DD0', N'Riverside Hotel Quảng Bình', 4, N'Còn Phòng')
GO
INSERT [dbo].[KhachSan] ([KhachSan_id], [Name], [TinhThanh_id], [Tinhtrang]) VALUES (N'A04E7A72-0B1E-4155-BAF7-9AD3369E80EC', N'The Scarlett Boutique Hotel Hue', 3, N'Còn Phòng')
GO
INSERT [dbo].[KhachSan] ([KhachSan_id], [Name], [TinhThanh_id], [Tinhtrang]) VALUES (N'A240649B-E15E-4959-A2D9-3B1993E424AA', N'Melia Hà Nội', 1, N'Còn Phòng')
GO
INSERT [dbo].[KhachSan] ([KhachSan_id], [Name], [TinhThanh_id], [Tinhtrang]) VALUES (N'A327E755-28CA-455C-9420-0377B07DF697', N'Keio Plaza Hotel Tokyo', 7, N'Còn Phòng')
GO
INSERT [dbo].[KhachSan] ([KhachSan_id], [Name], [TinhThanh_id], [Tinhtrang]) VALUES (N'A83FCE76-B01D-44E8-AFC2-41CE9C719376', N'The Oriental Jade Hotel', 1, N'Còn Phòng')
GO
INSERT [dbo].[KhachSan] ([KhachSan_id], [Name], [TinhThanh_id], [Tinhtrang]) VALUES (N'B9E05163-5A82-443E-8408-CDAC8D2BA592', N'Seoul N Hotel Dongdaemun', 8, N'Còn Phòng')
GO
INSERT [dbo].[KhachSan] ([KhachSan_id], [Name], [TinhThanh_id], [Tinhtrang]) VALUES (N'CD8F7FAA-12DA-4C77-9117-2C49ED8107D9', N'China Hotel, A Marriott Hotel', 6, N'Còn Phòng')
GO
INSERT [dbo].[KhachSan] ([KhachSan_id], [Name], [TinhThanh_id], [Tinhtrang]) VALUES (N'EDACED12-5617-4209-80FA-331C533CD997', N'Ventimo Hotel', 8, N'Còn Phòng')
GO
INSERT [dbo].[Tour] ([Tour_id], [Name], [Gia], [MoTa], [LichTrinh], [DiemKhoiHanh_id], [DiemDen_id], [KhachSan_id], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [LoaiTour], [TrangThai]) VALUES (N'TOUR001', N'Du lịch Tây Bắc Tết Dương lịch - Hà Nội - Sapa - Fansipan 3N2Đ từ Sài Gòn 2025', CAST(8999000.00 AS Decimal(12, 2)), N'<p><span style="font-family:Tahoma,Geneva,sans-serif"><em><strong><a href="https://dulichviet.com.vn/du-lich-trong-nuoc/du-lich-tay-bac-tet-duong-lich-ha-noi-sapa-fansipan-3n2d-tu-sai-gon-2025">Du lịch Tây Bắc Tết Dương lịch - Hà Nội - Sapa - Fansipan 3N2Đ từ Sài Gòn 2025</a></strong>. Chào đón Tết Dương lịch 2025, hành trình khám phá Tây Bắc 3 ngày 2 đêm từ Sài Gòn đến Hà Nội - Sapa - Fansipan là lựa chọn lý tưởng cho những ai yêu thích sự kỳ vĩ của thiên nhiên và nét văn hóa đặc trưng vùng cao. Khởi đầu từ Hà Nội cổ kính, du khách sẽ đến với Sapa - thị trấn mờ sương đầy thơ mộng. Tại đây, bạn có thể trải nghiệm chinh phục đỉnh Fansipan, "nóc nhà Đông Dương", để tận hưởng cảm giác đứng giữa biển mây trắng bồng bềnh, nhìn ngắm khung cảnh Tây Bắc tuyệt đẹp khi mùa xuân sắp về. Hành trình không chỉ là chuyến du ngoạn mà còn là cơ hội khám phá văn hóa bản địa, thưởng thức những món đặc sản vùng cao đầy hấp dẫn.</em></span></p>
', N'<p><span style="font-family:Tahoma,Geneva,sans-serif">Lịch trình&nbsp;</span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Lịch khởi hành (Cập nhật 15/10/24)</span></p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 1 |&nbsp;TP.HCM – HÀ NỘI – CÁT CÁT – SAPA (Ăn trưa, chiều)</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:&nbsp;</strong>Quý khách có mặt tại&nbsp;<strong>ga quốc nội, sân bay Tân Sơn Nhất</strong>&nbsp;trước giờ bay ít nhất hai tiếng.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đại diện công ty Du Lịch Việt đón và hỗ trợ Quý Khách làm thủ tục đón chuyến bay đi&nbsp;<strong>Hà Nội.&nbsp;</strong>Đến sân bay&nbsp;<strong>Nội Bài</strong>, Hướng dẫn viên đón đoàn khởi hành đến&nbsp;<strong>Lào Cai</strong>&nbsp;trên con đường cao tốc dài nhất Việt Nam - mạch nối liền giữa Hà Nội và các tỉnh Tây Bắc.</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa:&nbsp;</strong>Dùng bữa trưa.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn tiếp tục đến&nbsp;<strong>thị trấn vùng cao Sapa</strong>, tận hưởng cảnh sắc núi rừng như tranh vẽ và khám phá cuộc sống của đồng bào dân tộc ít người miền Tây Bắc.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Sapa/thi-tran-sapa-mua-thu-du-lich-viet.jpg" /><br />
<em>Thị Trấn Sapa</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Thăm&nbsp;<strong>bản Cát Cát</strong>, tìm hiểu nghề dệt nhuộm của dân tộc H’Mông và trạm thủy điện Cát Cát thời Pháp – nơi có 3 dòng nước hợp nhau thành dòng suối Mường Hoa.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Sapa/ban-cat-cat-du-lich-sapa-gia-re(1).jpg" /><br />
<em>Bản Cát Cát</em></span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Chiều:&nbsp;</strong>Dùng bữa chiều. Nghỉ đêm tại Sapa.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Quý khách có thể dạo phố đêm Sapa, tham dự đêm chợ Tình&nbsp;<em>(nếu đi vào tối thứ 7).</em></span></li>
</ul>

<p>&nbsp;</p>

<p>&nbsp;</p>

<ul>
</ul>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 2 |&nbsp;SAPA – FANSIPAN (Ăn sáng, trưa, chiều)</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:&nbsp;</strong>Dùng buffet sáng tại khách sạn.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn khởi hành tham quan chinh phục&nbsp;<strong>Fansipan</strong>, ngọn núi cao nhất Việt Nam (3.143 m) thuộc dãy núi Hoàng Liên Sơn, cách thị trấn Sa Pa khoảng 9 km về phía tây nam. Du khách chinh phục "Nóc nhà Đông Dương" với hệ thống cáp treo Fansipan Sa Pa dài 6,2km đạt 2 kỷ lục Guinness thế giới: Cáp treo ba dây có độ chênh giữa ga đi và ga đến lớn nhất thế giới: 1410m và Cáp treo ba dây dài nhất thế giới: 6292.5m. Từ tuyến cáp treo, du khách có thể cảm nhận được thiên nhiên hùng vĩ, chiêm ngưỡng khung cảnh thung lũng Mường Hoa và rừng quốc gia Hoàng Liên từ trên cao. Ngoài ra, du khách còn có thể đến hành hương tại&nbsp;<strong>Khu du lịch tâm linh&nbsp;</strong>–&nbsp;<strong>Chùa Trình</strong>,&nbsp;<strong>Chùa Hạ</strong>&nbsp;tại ga đến&nbsp;<em>(chi phí cáp treo tự túc).</em></span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><em><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Sapa/sapa-fansipan-du-lich-viet-2023(1).jpg" /></em><br />
<em>Đỉnh núi FASIPAN</em></span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa:&nbsp;</strong>Dùng bữa trưa.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Quý khách tự do dạo phố, tham quan nhà thờ đá Sapa,&nbsp;</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Chiều:&nbsp;</strong>Dùng bữa chiều. Nghỉ đêm tại Sapa.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn tự do dạo phố đêm Sapa, thưởng thức đặc sản vùng cao như: thịt lợn cắp nách nướng, trứng nướng, rượu táo mèo, giao lưu với người dân tộc vùng cao…</span></li>
</ul>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 3 |&nbsp;LÀO CAI – HÀ NỘI – TP.HCM (Ăn sáng, trưa)</span></h2>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:&nbsp;</strong>Dùng buffet sáng tại khách sạn.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Quý khách tự do nghỉ ngơi tại khách sạn.</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn trở về&nbsp;<strong>Lào Cai</strong>, mua sắm đặc sản tại chợ&nbsp;<strong>Cốc Lếu.</strong></span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa:&nbsp;</strong>Dùng bữa trưa.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn khởi hành về Hà Nội.</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Hướng dẫn viên tiễn đoàn ra sân bay Nội Bài đón chuyến bay về&nbsp; TP.HCM.</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Kết thúc chương trình tham quan, chia tay và hẹn gặp lại.</span></li>
</ul>
', 2, 1, N'2E8F6FE1-7F77-4830-B929-E98FA5B8D4F6', CAST(0x99470B00 AS Date), CAST(0x9C470B00 AS Date), 20, N'Trong nước', N'Mở bán')
GO
INSERT [dbo].[Tour] ([Tour_id], [Name], [Gia], [MoTa], [LichTrinh], [DiemKhoiHanh_id], [DiemDen_id], [KhachSan_id], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [LoaiTour], [TrangThai]) VALUES (N'TOUR002', N'Du lịch Tây Bắc mùa Xuân - Hà Nội - Mộc Châu - Cầu Kính Bạch Long - Điện Biên - Sapa từ Sài Gòn 2025', CAST(9799000.00 AS Decimal(12, 2)), N'<p><span style="font-family:Tahoma,Geneva,sans-serif"><em><strong>Du lịch Tây Bắc mùa Xuân - Hà Nội - Mộc Châu - Cầu Kính Bạch Long - Điện Biên - Sapa từ Sài Gòn 2025</strong>. Hành trình tuyệt vời khám phá Tây Bắc mùa xuân: ngắm hoa đào nở rộ tại Mộc Châu, thử thách bản thân trên Cầu Kính Bạch Long kỳ vĩ, trải nghiệm không khí lịch sử tại Điện Biên, và đắm mình trong cảnh sắc mờ sương của Sapa. Mỗi điểm đến là một câu chuyện riêng, tạo nên chuyến đi tràn đầy cảm xúc và kỷ niệm khó quên.</em></span></p>
', N'<p><span style="font-family:Tahoma,Geneva,sans-serif">ịch trình&nbsp;</span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Lịch khởi hành (Cập nhật 03/10/24)</span></p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 1 |&nbsp;TP.HCM – HÀ NỘI – HÒA BÌNH – MỘC CHÂU (Ăn trưa, chiều)</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:&nbsp;</strong>Quý khách có mặt tại ga quốc nội, sân bay Tân Sơn Nhất trước giờ bay ít nhất hai tiếng. Đại diện công ty&nbsp;<strong>Du Lịch Việt</strong>&nbsp;đón và hỗ trợ Quý khách làm thủ tục đón chuyến bay đi Hà Nội.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đến sân bay&nbsp;<strong>Nội Bài</strong>, xe đón Đoàn khởi hành đến&nbsp;<strong>Mai Châu</strong>.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Sân bay Nội Bài" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Ha-Noi/san-bay-noi-bai-du-lich-viet.jpg" /><br />
<em>Sân bay Nội Bài</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Trên đường đến&nbsp;<strong>Hòa Bình</strong>, Quý khách dừng chân tham quan&nbsp;<strong>Nhà máy thủy điện sông Đà</strong>&nbsp;(còn gọi là thủy điện Hòa Bình)</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Nhà máy thuỷ điện sông Đà" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Moc-Chau/nha-may-song-da-du-lich-viet.jpg" /><br />
<em>Nhà máy thuỷ điện sông Đà</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Chiêm ngưỡng toàn cảnh tuyệt đẹp của thung lũng Mai Châu trên đoạn đường&nbsp;<strong>đèo Thung Khe</strong>.</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa:&nbsp;</strong>Dùng cơm trưa.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Rời&nbsp;<strong>Mai Châu</strong>, Đoàn khởi hành đến&nbsp;<strong>Cao Nguyên Mộc Châu</strong>.</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Cao nguyên Mộc Châu" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Moc-Chau/cao-nguyen-moc-chau-du-lich-viet(1).jpg" /><br />
<em>Cao nguyên Mộc Châu</em></span><br />
&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Tối:&nbsp;</strong>Dùng cơm chiều. Nghỉ đêm&nbsp;<strong>Mộc Châu.</strong></span></p>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 2 |&nbsp;MỘC CHÂU - ĐIỆN BIÊN (Ăn sáng, trưa, chiều)</span></h2>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:&nbsp;</strong>Dùng bữa sáng.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn khởi hành tham quan&nbsp;<strong>Cầu Kính Bạch Long,</strong>&nbsp;cầu kính mới nhất của Việt Nam. Cây cầu nằm trong quần thể du lịch Mộc Châu Island – Tổ hợp giải trí và nghỉ dưỡng hàng đầu khu vực vùng núi Tây Bắc. Cầu kính Bạch Long có tổng chiều dài 632m.&nbsp;<em>(Chi phí tự túc)</em></span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><em><img alt="Cầu kính Bạch Long" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Moc-Chau/cau-kinh-bach-long-du-lich-viet.jpg" /><br />
Cầu kính Bạch Long</em></span><br />
&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn đến&nbsp;<strong>Cao Nguyên Mộc Châu</strong>. Đoàn ngắm nhìn những đồi chè xanh mướt trải dài đến tận bên kia quả đồi.&nbsp; Quý khách đến với Mộc Châu vào những mùa hoa.&nbsp;</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Tháng 8,9 tháng của những đồi chè xanh mướt</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Tháng 11.12 mùa hoa cải trắng&nbsp;</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Tham quan&nbsp;<strong>Đồi chè Mộc Châu</strong>, nổi lên như một viên ngọc xanh giữa lòng cao nguyên Mộc Châu lộng gió, đồi chè trái tim là sự kết hợp hài hòa giữa tạo hóa và bàn tay con người.&nbsp;</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt=" Đồi chè Mộc Châu" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Moc-Chau/doi-che-moc-chau-du-lich-viet(1).jpg" /><br />
<em>&nbsp;Đồi chè Mộc Châu</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn tiếp tục khởi hành đi&nbsp;<strong>Sơn La.</strong></span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa:&nbsp;</strong>Dùng cơm trưa.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Tiếp tục hành trình tới&nbsp;<strong>Điện Biên</strong>, đoàn dừng chân tại&nbsp;<strong>Đèo Pha Đin</strong>&nbsp;chụp hình, ngắm các bản làng vùng cao từ trên đèo.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Đèo Pha Đin" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Moc-Chau/deo-pha-din-du-lich-viet.jpg" /><br />
<em>Đèo Pha Đin</em></span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Tối:&nbsp;</strong>Dùng cơm chiều.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Nghỉ đêm tại&nbsp;<strong>Điện Biên.</strong></span></li>
</ul>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 3 |&nbsp;ĐIỆN BIÊN – SAPA (Ăn sáng, trưa, chiều)</span></h2>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:&nbsp;</strong>Dùng bữa sáng.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn tham quan&nbsp;<strong>Điện Biên Phủ</strong>&nbsp;oai hùng, vang danh lịch sử với:&nbsp;<strong>đồi A1, tượng đài chiến thắng Điện Biên Phủ</strong>, nghĩa trang liệt sĩ<strong>&nbsp;Điện Biên, hầm chỉ huy quân đội Pháp-tướng Đờ Cát (De Castries)</strong>.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Đồi A1" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Dien-Bien-Phu/tham-quan-doi-a1-du-lich-viet.jpg" /><br />
<em>Đồi A1</em></span><br />
&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa:&nbsp;</strong>Dùng cơm trưa.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn khởi hành đi&nbsp;<strong>Sapa</strong>, trên đường đi qua&nbsp;<strong>Phong Thổ</strong>.</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn vượt&nbsp;<strong>đèo Ô Quy Hồ (đèo Hoàng Liên Sơn)</strong>&nbsp;một trong những đèo quanh co, hiểm trở, hùng vĩ bậc nhất miền núi phía Bắc.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Đèo Ô Quy Hồ" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Moc-Chau/deo-o-quy-ho-du-lich-viet.jpg" /><br />
<em>Đèo Ô Quy Hồ</em></span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Tối:&nbsp;</strong>Đoàn dùng bữa tối.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Nghỉ đêm tại&nbsp;<strong>Sapa.</strong></span></li>
</ul>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 4 |&nbsp;FANSIPAN - BẢN CÁT CÁT (Ăn sáng, trưa, chiều tự túc)</span></h2>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:&nbsp;</strong>Dùng bữa sáng.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn khởi hành tham quan chinh phục&nbsp;<strong>Fansipan</strong>, ngọn núi cao nhất Việt Nam (3.143 m) thuộc dãy núi Hoàng Liên Sơn, cách thị trấn&nbsp;<strong>Sa Pa</strong>&nbsp;khoảng 9 km về phía tây nam.</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Du khách chinh phục&nbsp;<strong>"Nóc nhà Đông Dương"</strong>&nbsp; với hệ thống cáp treo Fansipan Sa Pa dài 6,2km đạt 2 kỷ lục Guinness thế giới: Cáp treo ba dây có độ chênh giữa ga đi và ga đến lớn nhất thế giới: 1410m và Cáp treo ba dây dài nhất thế giới: 6292.5m.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Nóc nhà Đông Dương" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Sapa/du-lich-tet-sapa-du-lich-viet(2).jpg" /><br />
<em>Nóc nhà Đông Dương</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Từ tuyến cáp treo, du khách có thể cảm nhận được thiên nhiên hùng vĩ, chiêm ngưỡng khung cảnh thung lũng Mường Hoa và rừng quốc gia Hoàng Liên từ trên cao. Ngoài ra, du khách còn có thể đến hành hương tại&nbsp;<strong>Khu du lịch tâm linh – Chùa Trình</strong>, Chùa Hạ tại ga đến (chi phí cáp treo tự túc).</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Khu Du lịch Tâm Linh - Chùa Trình" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Sapa/khu-du-lich-tam-linh-du-lich-viet.jpg" /><br />
<em>Khu Du lịch Tâm Linh - Chùa Trình</em></span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa:&nbsp;</strong>Dùng cơm trưa</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Thăm bản&nbsp;<strong>Cát Cát</strong>, tìm hiểu nghề dệt nhuộm của dân tộc H’Mông và trạm&nbsp;<strong>thủy điện Cát Cát thời Pháp&nbsp;</strong>– nơi có 3 dòng nước hợp nhau thành&nbsp;<strong>dòng suối Mường Hoa.</strong></span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Tối:&nbsp;</strong>Quý khách tự do khám phá ẩm thực sapa ( chi phí tự túc) – hướng dẫn viên sẽ chia sẽ quán ăn ngon đến quý khách. Nghỉ đêm tại Sapa.</span></p>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 5 |&nbsp;SAPA – HÀ NỘI – TP.HCM (Ăn sáng, trưa)</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Sáng: Dùng bữa sáng. Đoàn tự do dạo phố, tham quan nhà thờ đá Sapa hoặc mua sắm đặc sản về làm quà cho gia đình, người thân.<br />
Trưa: Dùng cơm trưa.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn khởi hành về Hà Nội Xe tiễn đoàn ra sân bay Nội Bài. Đáp máy bay về TP.HCM. Kết thúc chuyến tham quan, chia tay đoàn và hẹn gặp lại.</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><em>Giờ bay có thể thay đổi theo quy định của hàng không. Du Lịch Việt sẽ thay đổi chương trình cho phù hợp với giờ bay mới nhưng sẽ không chịu trách nhiệm về các khoản chi phí phát sinh.&nbsp;</em></span></p>
', 2, 1, N'A83FCE76-B01D-44E8-AFC2-41CE9C719376', CAST(0xB3470B00 AS Date), CAST(0xB8470B00 AS Date), 25, N'Trong nước', N'Mở bán')
GO
INSERT [dbo].[Tour] ([Tour_id], [Name], [Gia], [MoTa], [LichTrinh], [DiemKhoiHanh_id], [DiemDen_id], [KhachSan_id], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [LoaiTour], [TrangThai]) VALUES (N'TOUR003', N'Du lịch Tây Bắc mùa Thu - Hà Nội - Mộc Châu - Điện Biên - Sapa 5N4Đ từ Sài Gòn 2024', CAST(9399000.00 AS Decimal(12, 2)), N'<p><span style="font-family:Tahoma,Geneva,sans-serif"><em>Hành trình khám phá&nbsp;<a href="https://dulichviet.com.vn/du-lich-tay-bac-mua-thu-ha-noi-moc-chau-dien-bien-sapa-5n4d-tu-sai-gon-2024"><strong>Mộc Châu - Cầu Kính Bạch Long - Điện Biên - Sapa - Fansipan</strong></a>&nbsp;chắc chắn sẽ là một hành trình đầy thú vị dành cho quý khách khi&nbsp;lựa chọn&nbsp;<a href="https://dulichviet.com.vn/"><strong>Du Lịch Việt</strong></a>&nbsp;chúng tôi là đơn vị đồng hành trong suốt hành trình. Hành trình này sẽ đưa bạn đến với Mộc Châu, Sơn La tại đây, bạn sẽ có cơ hội tham quan rất nhiều những danh lam thắng cảnh tuyệt mĩ như Đèo Pha Đin, Mường Phăng, đồi chè,... hay thưởng thức những món ăn đặc sản ngon nhất vùng như cơm lam, xôi ngũ sắc, trứng kiến,... hay được trải nghiệm tất cả những nét văn hóa đặc sắc và độc đáo của vùng đất này,... Tất cả những điều này bạn sẽ trải nghiệm trong hành trình Tour Tây Bắc mùa Thu&nbsp;đầy thú vị này khi đồng hành cùng chúng tôi!&nbsp;</em></span></p>
', N'<p><span style="font-family:Tahoma,Geneva,sans-serif">Lịch trình&nbsp;</span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Lịch khởi hành (Cập nhật 01/10/24)</span></p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 1 |&nbsp;TP.HCM – HÀ NỘI – MỘC CHÂU (Ăn trưa, chiều)</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:&nbsp;</strong>Quý khách có mặt tại ga quốc nội, sân bay Tân Sơn Nhất trước giờ bay ít nhất hai tiếng. Đại diện công ty&nbsp;<strong>Du Lịch Việt</strong>&nbsp;đón và hỗ trợ Quý khách làm thủ tục đón chuyến bay đi Hà Nội.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đến sân bay&nbsp;<strong>Nội Bài</strong>, xe đón Đoàn khởi hành đến&nbsp;<strong>Mai Châu</strong>.</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Trên đường đến&nbsp;<strong>Hòa Bình</strong>, Quý khách dừng chân tham quan&nbsp;<strong>Nhà máy thủy điện sông Đà</strong>&nbsp;(còn gọi là thủy điện Hòa Bình)</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Nhà máy thuỷ điện sông Đà" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Moc-Chau/nha-may-song-da-du-lich-viet.jpg" /><br />
<em>Nhà máy thuỷ điện sông Đà</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Chiêm ngưỡng toàn cảnh tuyệt đẹp của thung lũng Mai Châu trên đoạn đường&nbsp;<strong>đèo Thung Khe</strong>.</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa:&nbsp;</strong>Dùng cơm trưa.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Rời&nbsp;<strong>Mai Châu</strong>, Đoàn khởi hành đến&nbsp;<strong>Cao Nguyên Mộc Châu</strong>. Đoàn ngắm nhìn những đồi chè xanh mướt trải dài đến tận bên kia quả đồi</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Tối:&nbsp;</strong>Dùng cơm chiều. Nghỉ đêm&nbsp;<strong>Mộc Châu.</strong></span></p>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 2 |&nbsp;MỘC CHÂU - ĐIỆN BIÊN (Ăn sáng, trưa, chiều)</span></h2>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:&nbsp;</strong>Dùng bữa sáng.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn khởi hành tham quan&nbsp;<strong>Cầu Kính Bạch Long,</strong>&nbsp;cầu kính mới nhất của Việt Nam. Cây cầu nằm trong quần thể du lịch Mộc Châu Island – Tổ hợp giải trí và nghỉ dưỡng hàng đầu khu vực vùng núi Tây Bắc. Cầu kính Bạch Long có tổng chiều dài 632m.&nbsp;<em>(Chi phí tự túc)</em></span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><em><img alt="Cầu kính Bạch Long" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Moc-Chau/cau-kinh-bach-long-du-lich-viet.jpg" /><br />
Cầu kính Bạch Long</em></span></p>

<p>&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn tiếp tục khởi hành đi&nbsp;<strong>Sơn La.</strong></span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa:&nbsp;</strong>Dùng cơm trưa.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Tiếp tục hành trình tới&nbsp;<strong>Điện Biên</strong>, đoàn dừng chân tại&nbsp;<strong>Đèo Pha Đin</strong>&nbsp;chụp hình, ngắm các bản làng vùng cao từ trên đèo.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Đèo Pha Đin" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Moc-Chau/deo-pha-din-du-lich-viet.jpg" /><br />
<em>Đèo Pha Đin</em></span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Tối:&nbsp;</strong>Dùng cơm chiều.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Nghỉ đêm tại&nbsp;<strong>Điện Biên.</strong></span></li>
</ul>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 3 |&nbsp;ĐIỆN BIÊN – SAPA (Ăn sáng, trưa, chiều)</span></h2>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:&nbsp;</strong>Dùng bữa sáng.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn tham quan&nbsp;<strong>Điện Biên Phủ</strong>&nbsp;oai hùng, vang danh lịch sử với:&nbsp;<strong>đồi A1, tượng đài chiến thắng Điện Biên Phủ</strong>, nghĩa trang liệt sĩ<strong>&nbsp;Điện Biên, hầm chỉ huy quân đội Pháp-tướng Đờ Cát (De Castries)</strong>.</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa:&nbsp;</strong>Dùng cơm trưa.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn khởi hành đi&nbsp;<strong>Sapa</strong>, trên đường đi qua&nbsp;<strong>Phong Thổ</strong>.</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn vượt&nbsp;<strong>đèo Ô Quy Hồ (đèo Hoàng Liên Sơn)</strong>&nbsp;một trong những đèo quanh co, hiểm trở, hùng vĩ bậc nhất miền núi phía Bắc.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Đèo Ô Quy Hồ" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Moc-Chau/deo-o-quy-ho-du-lich-viet.jpg" /><br />
<em>Đèo Ô Quy Hồ</em></span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Tối:&nbsp;</strong>Đoàn dùng bữa tối.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Nghỉ đêm tại&nbsp;<strong>Sapa.</strong></span></li>
</ul>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 4 |&nbsp;FANSIPAN - BẢN CÁT CÁT (Ăn sáng, trưa, chiều)</span></h2>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:&nbsp;</strong>Dùng bữa sáng.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn khởi hành tham quan chinh phục&nbsp;<strong>Fansipan</strong>, ngọn núi cao nhất Việt Nam (3.143 m) thuộc dãy núi Hoàng Liên Sơn, cách thị trấn&nbsp;<strong>Sa Pa</strong>&nbsp;khoảng 9 km về phía tây nam.</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Du khách chinh phục&nbsp;<strong>"Nóc nhà Đông Dương"</strong>&nbsp; với hệ thống cáp treo Fansipan Sa Pa dài 6,2km đạt 2 kỷ lục Guinness thế giới: Cáp treo ba dây có độ chênh giữa ga đi và ga đến lớn nhất thế giới: 1410m và Cáp treo ba dây dài nhất thế giới: 6292.5m.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Nóc nhà Đông Dương" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Sapa/du-lich-tet-sapa-du-lich-viet(2).jpg" /><br />
<em>Nóc nhà Đông Dương</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Từ tuyến cáp treo, du khách có thể cảm nhận được thiên nhiên hùng vĩ, chiêm ngưỡng khung cảnh thung lũng Mường Hoa và rừng quốc gia Hoàng Liên từ trên cao. Ngoài ra, du khách còn có thể đến hành hương tại&nbsp;<strong>Khu du lịch tâm linh – Chùa Trình</strong>, Chùa Hạ tại ga đến (chi phí cáp treo tự túc).</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Khu Du lịch Tâm Linh - Chùa Trình" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Sapa/khu-du-lich-tam-linh-du-lich-viet.jpg" /><br />
<em>Khu Du lịch Tâm Linh - Chùa Trình</em></span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa:&nbsp;</strong>Dùng cơm trưa</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Thăm bản&nbsp;<strong>Cát Cát</strong>, tìm hiểu nghề dệt nhuộm của dân tộc H’Mông và trạm&nbsp;<strong>thủy điện Cát Cát thời Pháp&nbsp;</strong>– nơi có 3 dòng nước hợp nhau thành&nbsp;<strong>dòng suối Mường Hoa.</strong></span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Tối:&nbsp;</strong>Dùng cơm tối. Nghỉ đêm tại Sapa.</span></p>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 5 |&nbsp;SAPA – HÀ NỘI – TP.HCM (Ăn sáng, trưa)</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Sáng: Dùng bữa sáng. Đoàn tự do dạo phố, tham quan nhà thờ đá Sapa hoặc mua sắm đặc sản về làm quà cho gia đình, người thân.<br />
Trưa: Dùng cơm trưa.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn khởi hành về Hà Nội Xe tiễn đoàn ra sân bay Nội Bài. Đáp máy bay về TP.HCM. Kết thúc chuyến tham quan, chia tay đoàn và hẹn gặp lại.</span></li>
</ul>
', 2, 1, N'A240649B-E15E-4959-A2D9-3B1993E424AA', CAST(0xB3470B00 AS Date), CAST(0xB8470B00 AS Date), 20, N'Trong nước', N'Mở bán')
GO
INSERT [dbo].[Tour] ([Tour_id], [Name], [Gia], [MoTa], [LichTrinh], [DiemKhoiHanh_id], [DiemDen_id], [KhachSan_id], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [LoaiTour], [TrangThai]) VALUES (N'TOUR004', N'Du lịch Tây Bắc mùa Thu - Hà Nội - Lào Cai - Sapa 4N3Đ từ Sài Gòn 2024', CAST(8299000.00 AS Decimal(12, 2)), N'<p><span style="font-family:Tahoma,Geneva,sans-serif"><em><strong>Du lịch Tây Bắc mùa Thu - Hà Nội - Lào Cai - Sapa 4N3Đ từ Sài Gòn 2024</strong>. Tour Sapa luôn là điểm đến hấp dẫn đối với du khách từ khắp mọi miền tổ quốc và nếu bạn đang muốn đến du lịch mùa Thu trong nước tại Sapa thì sau đây sẽ là những lí do bạn nên đến du lịch mùa Thu Sapa. Có thể nói mùa Thu Tây&nbsp;Bắc là thời điểm rất được nhiều du khách yêu thích trong năm, tiết trời lúc này trở nên dễ chịu hơn hẳn với những lúc thời tiết quá nóng hoặc quá lạnh. Và một địa điểm du lịch được yêu thích nhất được rất nhiều du khách từ khắp mọi miền tổ quốc lựa chọn đó chính là tour du lịch mùa Thu Sapa với cảnh sắc thiên nhiên tuyệt đẹp. Thị trấn nhỏ bé xinh đẹp này không những thu hút du khách bởi cảnh sắc thiên nhiên tuyệt đẹp mà còn là những nét đẹp văn hóa đặc trưng của đồng bào sinh sống tại nơi đây. Nếu mùa Thu này du khách chưa biết đến địa điểm nào du lịch thì hãy cùng&nbsp;<strong><a href="https://dulichviet.com.vn/">Du Lịch Việt&nbsp;</a></strong>chúng tôi dẫn lối và hãy nhanh tay đăng ký tour đi và cảm nhận nhiều hơn thế nhé!</em></span></p>
', N'<p><span style="font-family:Tahoma,Geneva,sans-serif">Lịch trình&nbsp;</span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Lịch khởi hành (Cập nhật 01/10/24)</span></p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 1 |&nbsp;TP.HCM – HÀ NỘI - SAPA (Ăn trưa, chiều)</span></h2>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:&nbsp;</strong>Quý khách có mặt tại&nbsp;<strong>ga quốc nội, sân bay Tân Sơn Nhất</strong>&nbsp;trước giờ bay ít nhất hai tiếng.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đại diện công ty Du Lịch Việt đón và hỗ trợ Quý Khách làm thủ tục đón chuyến bay đi Hà Nội.</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đến sân bay&nbsp;<strong>Nội Bài</strong>, Hướng dẫn viên đón đoàn, khởi hành đến&nbsp;<strong>Lào Cai</strong>&nbsp;trên con đường cao tốc dài nhất Việt Nam - mạch nối liền giữa Hà Nội và các tỉnh Tây Bắc.</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Sân Bay Nội Bài" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Sapa/san-bay-noi-bai-du-lich-viet.jpg" /><br />
<em>Sân Bay Nội Bài</em></span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa:&nbsp;</strong>Dùng bữa trưa.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn tiếp tục đến&nbsp;<strong>thị trấn vùng cao Sapa</strong>, tận hưởng cảnh sắc núi rừng như tranh vẽ và khám phá cuộc sống của đồng bào dân tộc ít người miền Tây Bắc.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Thị trấn vùng cao Sapa - Dân tộc H''mông" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Sapa/tua-sapa-cho-vung-cao-du-lich-viet-2023.jpg" /><br />
<em>Thị trấn vùng cao Sapa - Dân tộc H''mông</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Thăm&nbsp;<strong>bản Cát Cát</strong>, tìm hiểu nghề dệt nhuộm của dân tộc H’Mông và trạm thủy điện Cát Cát thời Pháp – nơi có 3 dòng nước hợp nhau thành dòng suối Mường Hoa.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Bản Cát Cát" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Sapa/ban-cat-cat-du-lich-sapa-gia-re.jpg" /><br />
<em>Bản Cát Cát</em></span><br />
&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Chiều:&nbsp;</strong>Dùng bữa chiều. Nghỉ đêm tại Sapa</span></p>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 2 |&nbsp;SAPA - FANSIPAN – HÀ NỘI (Ăn sáng, trưa, chiều)</span></h2>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:</strong>&nbsp;Dùng buffet sáng tại khách sạn.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn khởi hành tham quan chinh phục&nbsp;<strong>Fansipan</strong>, ngọn núi cao nhất Việt Nam (3.143 m) thuộc dãy núi Hoàng Liên Sơn, cách thị trấn Sa Pa khoảng 9 km về phía tây nam.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Đỉnh núi Fansipan" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Sapa/du-lich-sapa-dinh-fansipan-du-lich-viet.jpg" /><br />
<em>Đỉnh núi&nbsp;Fansipan</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Du khách chinh phục "Nóc nhà Đông Dương" với hệ thống cáp treo Fansipan Sa Pa dài 6,2km đạt 2 kỷ lục Guinness thế giới: Cáp treo ba dây có độ chênh giữa ga đi và ga đến lớn nhất thế giới: 1410m và Cáp treo ba dây dài nhất thế giới: 6292.5m. Từ tuyến cáp treo, du khách có thể cảm nhận được thiên nhiên hùng vĩ, chiêm ngưỡng khung cảnh thung lũng Mường Hoa và rừng quốc gia Hoàng Liên từ trên cao. Ngoài ra, du khách còn có thể đến hành hương tại&nbsp;<strong>Khu du lịch tâm linh&nbsp;</strong>–&nbsp;<strong>Chùa Trình</strong>,&nbsp;<strong>Chùa Hạ</strong>&nbsp;tại ga đến&nbsp;<em>(chi phí cáp treo tự túc).</em></span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><em><img alt="Thung lũng Mường Hoa " src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Sapa/thung-lung-muong-hoa-tua-sapa-mua-xuan-du-lich-viet.jpg" /></em><br />
<em>Thung lũng Mường Hoa&nbsp;</em></span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa:&nbsp;</strong>Dùng bữa trưa.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Tự do dạo phố, tham quan nhà thờ đá Sapa, tham dự đêm chợ Tình&nbsp;<em>(nếu đi vào tối thứ 7).</em></span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Tối:&nbsp;</strong>Dùng bữa tối. Nghỉ đêm tại&nbsp;<strong>Sapa.</strong></span></p>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 3 |&nbsp;SAPA – HÀ NỘI (Ăn sáng, trưa, chiều)</span></h2>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:</strong>&nbsp;Dùng buffet sáng tại khách sạn.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn trở về&nbsp;<strong>Hà Nội.</strong></span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa:&nbsp;</strong>Dùng cơm trưa.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Tham quan&nbsp;<strong>thủ đô Hà Nội</strong>&nbsp;với:&nbsp;<strong>chùa Trấn Quốc, Hồ Tây, Hồ Trúc Bạch, Hồ Hoàn Kiếm, Đền Ngọc Sơn</strong>.</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif">&nbsp;&nbsp;<img alt="Đền Ngọc Sơn" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Sapa/tham-quan-chua-tran-quoc-du-lich-viet-2023.jpg" /><br />
<em>Đền Ngọc Sơn</em></span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Tối:&nbsp;</strong>Dùng bữa tối. Nghỉ đêm tại&nbsp;<strong>Hà Nội</strong>.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Quý khách có thể dạo một vòng quanh thủ đô, thưởng thức các món đặc sản: bún chả cá Lả Vọng, phở Hà Nội, búng thang, bún chả, … hoặc thưởng thức café ở phố cổ, Hồ Gươm</span></li>
</ul>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 4 |&nbsp;HÀ NỘI – TP.HCM (Ăn sáng, trưa)</span></h2>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:</strong>&nbsp;Dùng buffet sáng tại khách sạn.<br />
Hướng Dẫn Viên đón đoàn, Tham quan thủ đô<strong>&nbsp;</strong>với:&nbsp;<strong>Phủ Chủ Tịch, ao cá, nhà sàn Bác Hồ, Chùa Một Cột, Bảo Tàng Hồ Chí Minh.</strong><br />
<em>(<strong>Lăng Chủ tịch Hồ Chí Minh</strong>&nbsp;sẽ tạm ngừng đón đồng bào và du khách vào viếng từ ngày&nbsp;<strong>10/06/2024</strong>&nbsp;đến hết ngày&nbsp;<strong>14/08/2024</strong>&nbsp;để thực hiện các công việc duy tu định kỳ...)</em>&nbsp;<br />
Tham quan&nbsp;<strong>Văn Miếu-Quốc Tử Giám, chùa Trấn Quốc, Hồ Tây, Hồ Trúc Bạch, Hồ Hoàn Kiếm.</strong><br />
<strong>Trưa:&nbsp;</strong>Dùng bữa trưa.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn tự do đi chợ, mua sắm đặc sản về làm quà cho người thân, gia đình.</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Hướng dẫn viên tiễn đoàn ra sân bay Nội Bài đón chuyến bay về&nbsp; TP.HCM.</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Kết thúc chương trình tham quan, chia tay và hẹn gặp lại.</span></li>
</ul>
', 2, 1, N'168E40A3-1FA6-4BE6-B6D9-637060742BD0', CAST(0xB3470B00 AS Date), '2025-01-04', 15, N'Trong nước', N'Mở bán')
GO
INSERT [dbo].[Tour] ([Tour_id], [Name], [Gia], [MoTa], [LichTrinh], [DiemKhoiHanh_id], [DiemDen_id], [KhachSan_id], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [LoaiTour], [TrangThai]) VALUES (N'TOUR005', N'Du lịch Đà Nẵng Tết Âm lịch - Hội An - Huế từ Sài Gòn 2025', CAST(9199000.00 AS Decimal(12, 2)), N'<p><span style="font-family:Tahoma,Geneva,sans-serif"><em><strong>Du lịch Đà Nẵng Tết Âm lịch - Hội An - Huế từ Sài Gòn 2025.&nbsp;</strong>Chuyến hành trình từ Sài Gòn đến miền Trung Việt Nam trong dịp Tết Âm lịch là một trải nghiệm đáng nhớ, nơi bạn sẽ khám phá vẻ đẹp của Đà Nẵng, Hội An và Huế trong không khí lễ hội rộn ràng. Đà Nẵng - Điểm khởi đầu của hành trình khi đến Đà Nẵng, bạn sẽ bị cuốn hút bởi sự hiện đại nhưng vẫn mang đậm bản sắc văn hóa. Ngắm nhìn cầu Rồng phun lửa vào buổi tối, tham quan Bảo tàng Điêu khắc Chăm với những tác phẩm nghệ thuật độc đáo, và thưởng thức hải sản tươi ngon tại các quán ven biển là những trải nghiệm không thể bỏ qua. Đặc biệt, trong dịp Tết, thành phố sẽ được trang hoàng rực rỡ với đèn lồng và các hoạt động đón chào năm mới. Chuyến hành trình sẽ đưa bạn đến Bà Nà Hills - một trong những điểm du lịch nổi tiếng nhất Đà Nẵng. Bạn sẽ được trải nghiệm cáp treo dài nhất thế giới, ngắm nhìn phong cảnh hùng vĩ từ trên cao và check-in tại Cây Cầu Vàng nổi tiếng. Không khí se lạnh trên đỉnh núi, cùng các hoạt động giải trí hấp dẫn chắc chắn sẽ khiến bạn không thể rời mắt. Chỉ mất khoảng 30 phút di chuyển, bạn sẽ đến Hội An, nơi lưu giữ vẻ đẹp cổ kính và lãng mạn. Phố cổ Hội An với những ngôi nhà cổ, đèn lồng rực rỡ và hương vị ẩm thực đặc trưng sẽ khiến bạn ngây ngất. Hãy thử món cao lầu, bánh mì Hội An và thả đèn hoa đăng trên sông Hoài vào buổi tối để cảm nhận vẻ đẹp huyền bí của nơi đây. Rời Hội An, bạn sẽ tiếp tục hành trình đến Huế, thành phố từng là kinh đô của Việt Nam. Tại đây, bạn sẽ tham quan Đại Nội - nơi lưu giữ nhiều di sản văn hóa và lịch sử quý giá. Đừng quên thưởng thức bún bò Huế, bánh bèo và ghé thăm các lăng tẩm của các vị vua triều Nguyễn để tìm hiểu thêm về văn hóa và lịch sử đặc sắc của nơi này. Chuyến du lịch Đà Nẵng, Hội An và Huế trong dịp Tết Âm lịch sẽ mang đến cho bạn cơ hội trải nghiệm vẻ đẹp văn hóa, lịch sử và ẩm thực đặc sắc của miền Trung Việt Nam. Hãy chuẩn bị sẵn sàng cho một hành trình đầy ý nghĩa và những khoảnh khắc khó quên!</em></span></p>
', N'<p>Lịch trình&nbsp;</p>

<p>Lịch khởi hành (Cập nhật 26/09/24)</p>

<h2>NGÀY 1 |&nbsp;TP.HCM – NGŨ HÀNH SƠN – HỘI AN (Ăn sáng, trưa, chiều)</h2>

<p>&nbsp;</p>

<p><strong>Sáng:&nbsp;</strong>Quý khách có mặt tại ga quốc nội, sân bay Tân Sơn Nhất trước giờ bay ít nhất hai tiếng<strong>&nbsp;.</strong></p>

<ul>
	<li>Đại diện công ty&nbsp;<strong>Du Lịch Việt</strong>&nbsp;đón và hỗ trợ Quý Khách làm thủ tục đón chuyến bay đi&nbsp;<strong>Đà Nẵng.</strong></li>
	<li>Đến sân bay<strong>&nbsp;Đà Nẵng</strong>, Hướng dẫn viên đón đoàn khởi hành tham quan&nbsp;<strong>Ngũ Hành Sơn</strong>&nbsp;- đỉnh&nbsp;<strong>Kim Sơn</strong>, với dáng núi trông như một quả chuông úp sấp. Đoàn ghé thăm&nbsp;<strong>Chùa Quan Thế Âm</strong>,&nbsp;<strong>động Quan Âm</strong>,&nbsp;<strong>Bảo tàng văn hóa Phật Giáo</strong>… ghé thăm và mua sắm quà lưu niệm tại<strong>&nbsp;làng nghề điêu khắc đá Non Nước.</strong></li>
</ul>

<p>&nbsp;</p>

<p><strong><img alt="làng nghề điêu khắc đá Non Nước." src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/lang-nghe-dieu-khac-da-du-lich-viet.jpg" /></strong><br />
<em>Làng nghề điêu khắc đá Non Nước</em><br />
&nbsp;</p>

<p><strong>Trưa:&nbsp;</strong>Dùng bữa trưa tại nhà hàng.</p>

<ul>
	<li>Tham quan&nbsp;<strong>Phố Cổ Hội An</strong>&nbsp;-&nbsp;<strong><em>di sản văn hoá thế giới&nbsp;</em></strong><em>với&nbsp;</em><strong>Chùa Cầu Nhật Bản, Hội Quán Phúc Kiến, Nhà Cổ Phùng Hưng&nbsp;</strong>…</li>
</ul>

<p><img alt="Phố Cổ Hội An" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/pho-co-hoi-an-du-lich-da-nang.jpg" /><br />
<em>Phố Cổ Hội An</em><br />
&nbsp;</p>

<p><strong>Chiều:&nbsp;</strong>Dùng cơm chiều tại nhà hàng.</p>

<ul>
	<li>Trải nghiệm Show diễn&nbsp;<strong>“Ký Ức Hội An”,&nbsp;</strong>chương trình<strong>&nbsp;</strong>văn hóa nghệ thuật ngoài trời độc đáo, với sự tổng hòa tinh tế của âm nhạc, thơ ca, ánh sáng, nghệ thuật trình diễn 3D, tạo hình, múa… Vở diễn là câu chuyện tái hiện lại những nét văn hóa đặc trưng của Hội An 400 năm lịch sử với cuộc sống thôn quê bình dị, tới những nét hoàng kim của một thương cảng sầm uất một thời.&nbsp;<em>(chi phí tự túc).</em></li>
</ul>

<p><em><img alt="Ký Ức Hội An" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/ky-uc-hoi-an-du-lich-viet.jpg" /><br />
Ký Ức Hội An</em><br />
&nbsp;</p>

<ul>
	<li>Đoàn trở về, nghỉ đêm tại&nbsp;<strong>Đà Nẵng</strong>.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</li>
</ul>

<p>&nbsp;</p>

<h2>NGÀY 2 |&nbsp;ĐÀ NẴNG – BÀ NÀ (Ăn tối) (Ăn trưa tự túc)</h2>

<p>&nbsp;</p>

<p><strong>Sáng:&nbsp;</strong>Quý khách dùng bữa sáng tại khách sạn</p>

<ul>
	<li>Đoàn<strong>&nbsp;</strong>tham khởi hành đến với&nbsp;<strong>cao nguyên Bà Nà</strong>&nbsp;nơi có khí hậu Châu Âu độc đáo và nổi tiếng với tuyến cáp treo kỷ lục mới của thế giới - Ngắm toàn cảnh thành phố Đà Nẵng từ trên cáp treo&nbsp;<em>(chi phí cáp treo tự túc).</em>&nbsp;</li>
</ul>

<p><img alt="Cao nguyên Bà Nà" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/tham-quan-cao-nguyen-ba-na-hill-du-lich-viet.jpg" /><br />
<em>Cao nguyên Bà Nà</em><br />
&nbsp;</p>

<ul>
	<li>Quý khách tự do tham quan, vui chơi giải trí tại Bà Nà với&nbsp;<strong>Công Viên Fantasy</strong>,&nbsp;<strong>Rạp chiếu phim 3D Mega 360 độ</strong>&nbsp;với công nghệ hiện đại nhất và duy nhất có ở Viêt Nam,&nbsp;<strong>Hai rạp chiếu phim 4D và 5Di</strong>,&nbsp;<strong>Xe Trượt Ống</strong>,&nbsp;<strong>Hầm rượu, Vườn hoa tình yêu</strong>,&nbsp;<strong>Bảo Tàng Sáp, chụp hình tại Cầu Vàng điểm tham quan mới siêu hot tại Bà Nà.</strong></li>
</ul>

<p>&nbsp;</p>

<p><strong><img alt="Công Viên Fantasy" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/cong-vien-Fantasy-du-lich-viet.jpg" /></strong><br />
<em>Công Viên Fantasy</em><br />
&nbsp;</p>

<p><strong>Trưa:&nbsp;</strong>Quý khách vui lòng tự túc bữa ăn trưa.</p>

<ul>
	<li>Du khách có thể tìm thấy những biểu tượng mang tính tâm linh như chùa chiền, đền đài hay tượng các đức Phật. Chắc hẳn sẽ là điểm dừng chân cho những ai mong cầu bình an và sức khỏe cho gia đình:&nbsp;<strong>Chùa Linh Ứng, Đền Lĩnh Chúa Linh Từ, Tháp Linh Phong Tự, Tượng Thích Ca Mâu Ni, Lầu Chuông, Nhà Bia, Miếu Bà, Trú Vũ Trà Quán.</strong></li>
</ul>

<p>&nbsp;</p>

<p><strong><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/tham-quan-chua-linh-ung-du-lich-viet.jpg" /></strong></p>

<p><strong>Chiều:&nbsp;</strong>Dùng cơm chiều tại nhà hàng.Nghỉ đêm tại&nbsp;<strong>Đà Nẵng.</strong><br />
<strong>Tối: Qúy khách tự do tham quan khám phá thành phố Đà Nẵng về đêm như cầu Sông Hàn, Cầu Rồng…</strong>&nbsp;</p>

<p>&nbsp;</p>

<h2>NGÀY 3 |&nbsp;ĐÀ NẴNG – HUẾ - TP.HCM (Ăn sáng, trưa)</h2>

<p>&nbsp;</p>

<p><strong>Sáng:&nbsp;</strong>Dùng buffet sáng tại khách sạn.</p>

<ul>
	<li>Tham quan một vòng&nbsp;<strong>bán đảo Sơn Trà</strong>…viếng Linh Ứng Tự và thưởng ngoạn vẻ đẹp của biển Mỹ Khê (được đánh giá là một trong những bãi biển quyến rũ nhất hành tinh).</li>
</ul>

<p><img alt="bán đảo Sơn Trà" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/ban-dao-son-tra-viet-media-travel.jpg" /><br />
<em>Bán đảo Sơn Trà</em><br />
&nbsp;</p>

<ul>
	<li>Đoàn khởi hành đến&nbsp;<strong>Huế&nbsp;</strong>qua đường hầm Hải Vân-hầm đường bộ dài nhất Đông Nam Á.</li>
</ul>

<p><strong>Trưa:</strong>&nbsp; &nbsp;Dùng cơm trưa.</p>

<ul>
	<li>Tham quan&nbsp;<strong>Huế</strong>&nbsp;với&nbsp;<strong>Đại Nội</strong>&nbsp;– Hoàng Thành của 13 vị vua triều Nguyễn, nơi có hơn 100 công trình kiến trúc đẹp: Ngọ Môn, Điện Thái Hòa, Tử Cấm Thành, Thế Miếu, Hiển Lâm Các, Cửu Đỉnh,…</li>
</ul>

<p>&nbsp;</p>

<p><img alt="Đại Nội Huế" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Hue/tham-quan-dai-noi-kinh-thanh-hue-du-lich-viet.jpg" /><br />
<em>Đại Nội Huế</em><br />
&nbsp;</p>

<ul>
	<li>Tham quan&nbsp;<strong>chùa Thiên Mụ</strong>&nbsp;–&nbsp;&nbsp;<em>ngôi chùa cổ nhất Cố đô Huế.</em></li>
	<li>Điểm đến này không chỉ thu hút du khách đến để ngắm cảnh đẹp mà còn là nơi linh thiêng để tham quan, tìm hiểu về lịch sử, văn hóa và tâm linh của người dân Việt Nam.</li>
	<li>Hướng dẫn viên tiễn đoàn ra sân bay Huế đón chuyến bay về&nbsp; TP.HCM.</li>
	<li>Kết thúc chương trình tham quan, chia tay và hẹn gặp lại Quý khách.</li>
</ul>

<p><em>Giờ bay có thể thay đổi theo quy định của hàng không. Du Lịch Việt sẽ thay đổi chương trình cho phù hợp với giờ bay mới nhưng sẽ không chịu trách nhiệm về các khoản chi phí phát sinh.</em></p>
', 1, 3, N'5FA6FC16-6502-4EBB-8BB7-243C3B1882E0', CAST(0xD0470B00 AS Date), CAST(0xD3470B00 AS Date), 25, N'Trong nước', N'Mở bán')
GO
INSERT [dbo].[Tour] ([Tour_id], [Name], [Gia], [MoTa], [LichTrinh], [DiemKhoiHanh_id], [DiemDen_id], [KhachSan_id], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [LoaiTour], [TrangThai]) VALUES (N'TOUR006', N'Du lịch Đà Nẵng Tết Âm lịch - Huế - Động Phong Nha từ Sài Gòn 2025', CAST(7899000.00 AS Decimal(12, 2)), N'<p><span style="font-family:Tahoma,Geneva,sans-serif"><em><strong>Du lịch Đà Nẵng Tết Âm lịch - Huế - Động Phong Nha từ Sài Gòn 2025</strong>. Tết Âm Lịch 2025 là dịp lý tưởng để bạn khám phá những nét đẹp của miền Trung Việt Nam. Khi đặt chân đến Đà Nẵng, bạn sẽ ngay lập tức bị cuốn hút bởi vẻ đẹp của thành phố biển này. Tại đây, bạn có thể tham quan cầu Rồng, một biểu tượng nổi bật với kiến trúc độc đáo. Đừng quên ghé thăm bãi biển Mỹ Khê, nơi bạn có thể thư giãn dưới ánh nắng vàng và tận hưởng làn sóng mát rượi. Trong dịp Tết, Đà Nẵng thường tổ chức nhiều hoạt động lễ hội, từ chợ Tết truyền thống đến các buổi biểu diễn nghệ thuật đặc sắc. Hãy thưởng thức những món ăn đặc trưng như mì Quảng, bún chả cá và bánh tráng cuốn thịt heo. Sau khi tận hưởng Đà Nẵng, hành trình sẽ đưa bạn đến Huế – nơi mang đậm dấu ấn văn hóa và lịch sử. Bạn có thể di chuyển bằng xe máy hoặc xe khách, chỉ mất khoảng 2 tiếng. Huế là nơi lưu giữ nhiều di tích lịch sử, với kinh thành Huế hùng vĩ và những lăng tẩm vua chúa cổ xưa. Dịp Tết, Huế trở nên rực rỡ hơn với những sắc hoa, bánh chưng và những hoạt động văn hóa đặc sắc. Đừng quên ghé thăm chợ Tết bên dòng Hương Giang, nơi bạn có thể mua sắm các sản phẩm đặc sản của địa phương. Cuối cùng, hãy dành thời gian khám phá Động Phong Nha, một trong những kỳ quan thiên nhiên của Việt Nam. Từ Huế, bạn có thể di chuyển đến Phong Nha bằng xe khách hoặc ô tô riêng, khoảng 3-4 giờ. Động Phong Nha nổi tiếng với hệ thống hang động kỳ vĩ và cảnh quan thiên nhiên hùng vĩ. Bạn sẽ được trải nghiệm cảm giác mạo hiểm khi tham gia tour thám hiểm trong các hang động, ngắm nhìn những nhũ đá và dòng sông ngầm tuyệt đẹp. Hành trình từ Sài Gòn đến Đà Nẵng, Huế và Động Phong Nha trong dịp Tết Âm Lịch 2025 không chỉ mang đến cho bạn những trải nghiệm thú vị mà còn giúp bạn hiểu hơn về văn hóa và con người miền Trung. Hãy chuẩn bị cho mình những kỷ niệm đáng nhớ trong chuyến du lịch này nhé!</em></span></p>
', N'<p><span style="font-family:Tahoma,Geneva,sans-serif">Lịch trình&nbsp;</span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Lịch khởi hành (Cập nhật 26/09/24)</span></p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 1 |&nbsp;TP.HCM – NGŨ HÀNH SƠN – HỘI AN (Ăn trưa, chiều )</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:&nbsp;</strong>Quý khách có mặt tại ga quốc nội, sân bay Tân Sơn Nhất trước giờ bay ít nhất hai tiếng<strong>.</strong></span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đại diện công ty&nbsp;<strong>Du Lịch Việt</strong>&nbsp;đón và hỗ trợ Quý Khách làm thủ tục đón chuyến bay đi&nbsp;<strong>Đà Nẵng.</strong></span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đến sân bay<strong>&nbsp;Đà Nẵng</strong>, Hướng dẫn viên đón đoàn<strong>&nbsp;</strong>tham quan một vòng&nbsp;<strong>bán đảo Sơn Trà</strong>…viếng&nbsp;<strong>Linh Ứng Tự</strong>&nbsp;và thưởng ngoạn vẻ đẹp của&nbsp;<strong>biển Mỹ Khê</strong><em>(được đánh giá là một trong những bãi biển quyến rũ nhất hành tinh).&nbsp;</em></span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><em><img alt="Bán đảo Sơn Trà" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/ban-dao-son-tra-viet-media-travel.jpg" /></em><br />
<em>Bán đảo Sơn Trà</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Tham quan&nbsp;<strong>Ngũ Hành Sơn</strong>&nbsp;- đỉnh&nbsp;<strong>Kim Sơn</strong>, với dáng núi trông như một quả chuông úp sấp. Đoàn ghé thăm&nbsp;<strong>Chùa Quan Thế Âm</strong>,&nbsp;<strong>động Quan Âm</strong>,&nbsp;<strong>Bảo tàng văn hóa Phật Giáo</strong>… ghé thăm và mua sắm quà lưu niệm tại<strong>&nbsp;làng nghề điêu khắc đá Non Nước.</strong></span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong><img alt="Ngũ Hành Sơn" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/tham-quan-ngu-hanh-son-du-lich-viet.jpg" /></strong><br />
<em>Ngũ Hành Sơn</em></span><br />
&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa:&nbsp;</strong>Dùng bữa trưa tại nhà hàng.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Tham quan&nbsp;<strong>Phố Cổ Hội An</strong>&nbsp;-&nbsp;<strong><em>di sản văn hoá thế giới</em></strong><em>với&nbsp;</em><strong>Chùa Cầu Nhật Bản, Hội Quán Phúc Kiến, Nhà Cổ Phùng Hưng&nbsp;</strong>…</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Phố cổ Hội An" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/pho-co-hoi-an-du-lich-da-nang.jpg" /><br />
<em>Phố cổ Hội An</em></span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Chiều</strong>: Dùng cơm chiều tại nhà hàng.&nbsp;&nbsp; &nbsp;<br />
Nghỉ đêm tại&nbsp;<strong>Đà Nẵng.</strong></span><br />
&nbsp;</p>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 2 |&nbsp;ĐÀ NẴNG – BÀ NÀ – HUẾ (Ăn sáng,tối) (Ăn trưa tự túc )</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:</strong>&nbsp;Dùng buffet sáng tại khách sạn.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Khởi hành đến với&nbsp;<strong>cao nguyên Bà Nà</strong>&nbsp;nơi có khí hậu Châu Âu độc đáo và nổi tiếng với tuyến cáp treo kỷ lục mới của thế giới - Ngắm toàn cảnh thành phố Đà Nẵng từ trên cáp treo&nbsp;<em>(chi phí cáp treo tự túc).</em>&nbsp;</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Cao nguyên Bà Nà" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/tham-quan-cao-nguyen-ba-na-hill-du-lich-viet.jpg" /><br />
<em>Cao nguyên Bà Nà</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Quý khách tự do tham quan, vui chơi giải trí tại Bà Nà với&nbsp;<strong>Công Viên Fantasy</strong>,&nbsp;<strong>Rạp chiếu phim 3D Mega 360 độ</strong>&nbsp;với công nghệ hiện đại nhất</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">và duy nhất có ở Viêt Nam,&nbsp;<strong>Hai rạp chiếu phim 4D và 5Di</strong>,&nbsp;<strong>Xe Trượt Ống</strong>,&nbsp;<strong>Hầm rượu, Vườn hoa tình yêu</strong>,&nbsp;<strong>Bảo Tàng Sáp, chụp hình tại Cầu Vàng điểm tham quan mới siêu hot tại Bà Nà.</strong></span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong><img alt="Công viên Fantasy" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/cong-vien-Fantasy-du-lich-viet(1).jpg" /></strong><br />
<em>Công viên Fantasy</em></span><br />
&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa:&nbsp;</strong>Quý khách vui lòng tự túc bữa ăn trưa.&nbsp;</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Du khách có thể tìm thấy những biểu tượng mang tính tâm linh như chùa chiền, đền đài hay tượng các đức Phật. Chắc hẳn sẽ là điểm dừng chân cho những ai mong cầu bình an và sức khỏe cho gia đình:&nbsp;<strong>Chùa Linh Ứng, Đền Lĩnh Chúa Linh Từ, Tháp Linh Phong Tự, Tượng Thích Ca Mâu Ni, Lầu Chuông, Nhà Bia, Miếu Bà, Trú Vũ Trà Quán.</strong></span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong><img alt="Chùa Linh Ứng" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/tham-quan-chua-linh-ung-du-lich-viet.jpg" /></strong></span><br />
<br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Khởi hành đến&nbsp;<strong>Huế&nbsp;</strong>qua đường hầm Hải Vân - hầm đường bộ dài nhất Đông Nam Á.</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Tham quan&nbsp;<strong>Chùa Thiên Mụ</strong>&nbsp;-&nbsp;&nbsp;<em>ngôi chùa cổ nhất Cố đô Huế.</em></span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><em><img alt="Chùa Thiên Mụ" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Hue/chua-thien-mu-mua-thu-du-lich-viet.jpg" /></em><br />
<em>Chùa Thiên Mụ</em></span><br />
&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Chiều:</strong>&nbsp;Qúy khách dùng cơm chiều, Nghỉ đêm ở&nbsp;<strong>Huế</strong></span></p>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 3 |&nbsp;HUẾ – QUẢNG BÌNH – ĐỘNG PHONG NHA (Ăn sáng, trưa, chiều).</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:</strong>&nbsp;Dùng buffet sáng tại khách sạn.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Khởi hành đến&nbsp;<strong>Quảng Bình&nbsp;</strong>nơi nổi tiếng với&nbsp;<strong>Vườn quốc gia Phong Nha - Kẻ&nbsp; Bàng</strong>&nbsp;được UNESCO công nhận là&nbsp;<em>Di sản thiên nhiên thế giới,</em>&nbsp;trên đường đi đoàn vào thăm&nbsp;<strong>Thánh Địa La Vang</strong>&nbsp;-&nbsp;<em>Tiểu vương cung thánh đường.</em></span></li>
</ul>

<p><br />
<span style="font-family:Tahoma,Geneva,sans-serif"><em><img alt="Vườn quốc gia Phong Nha Kẻ Bàng" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Quang-Binh/vuon-quoc-gia-phong-nha-ke-bang-du-lich-viet.jpg" /></em><br />
<em>Vườn quốc gia Phong Nha Kẻ Bàng</em></span><br />
&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa:&nbsp;</strong>Dùng bữa trưa tại nhà hàng.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Xuôi thuyền theo&nbsp;<strong>dòng sông Son</strong>&nbsp;vào thăm&nbsp;<strong>Động Phong Nha</strong>&nbsp;- Động nước lớn nhất thế giới được Unesco công nhận di sản thiên nhiên thế giới với Hang Bi Ký, Động Tiên…</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Động Phong Nha" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Quang-Binh/dong-phong-nha-du-lich-viet.jpg" /><br />
<em>Động Phong Nha</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn khởi hành trở về&nbsp;<strong>Huế</strong>, Quý khách có dịp ngắm nhìn&nbsp;<strong>Vĩ Tuyến 17</strong>&nbsp;với&nbsp;<strong>cầu Hiền Lương</strong>&nbsp;và&nbsp;<strong>dòng sông Bến Hải.</strong></span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Tối:</strong>&nbsp;Dùng cơm tối tại nhà hàng. Nghỉ đêm tại Huế.</span></p>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 4 |&nbsp;HUẾ – ĐẠI NỘI – TP.HCM (Ăn sáng, trưa)</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:</strong>&nbsp;Dùng buffet sáng tại khách sạn</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Hướng dẫn viên đưa đoàn Tham quan&nbsp;<strong>Đại Nội</strong>&nbsp;– Hoàng Thành của 13 vị vua triều Nguyễn, nơi có hơn 100 công trình kiến trúc đẹp: Ngọ Môn, Điện Thái Hòa, Tử Cấm Thành, Thế Miếu, Hiển Lâm Các, Cửu Đỉnh…</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Hue/tham-quan-dai-noi-kinh-thanh-hue-du-lich-viet.jpg" /><br />
<em>Đại Nội Huế</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Tham quan&nbsp;<strong>chùa Thiên Mụ</strong>&nbsp;–&nbsp;&nbsp;<em>ngôi chùa cổ nhất Cố đô Huế.</em>&nbsp;</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa:</strong>&nbsp;Đoàn dùng cơm trưa</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Tham quan&nbsp;<strong>Lăng Khải Định&nbsp;</strong>(Ứng Lăng, lăng mộ của vua Khải Định, vị vua thứ 12 của triều Nguyễn) với lối kiến trúc độc đáo bởi sự pha trộn kiến trúc Đông Tây Kim Cổ lạ thường, với các tác phẩm nghệ thuật ghép tranh sành sứ độc đáo.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Hue/lang-khai-dinh-viet-media-travel.jpg" /><br />
<em>Lăng Khải Định</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Hướng dẫn viên tiễn đoàn ra sân bay Huế đón chuyến bay về&nbsp; TP.HCM.</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Kết thúc chương trình tham quan, chia tay và hẹn gặp lại Quý khách.</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><em>Giờ bay có thể thay đổi theo quy định của hàng không. Du Lịch Việt sẽ thay đổi chương trình cho phù hợp với giờ bay mới nhưng sẽ không chịu trách nhiệm về các khoản chi phí phát sinh</em></span></p>
', 2, 3, N'5FA6FC16-6502-4EBB-8BB7-243C3B1882E0', CAST(0xD0470B00 AS Date), CAST(0xD5470B00 AS Date), 25, N'Trong nước', N'Mở bán')
GO
INSERT [dbo].[Tour] ([Tour_id], [Name], [Gia], [MoTa], [LichTrinh], [DiemKhoiHanh_id], [DiemDen_id], [KhachSan_id], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [LoaiTour], [TrangThai]) VALUES (N'TOUR007', N'Du lịch Đà Nẵng mùa Xuân - Hội An - Huế - Thánh Địa La Vang - Động Thiên Đường từ Sài Gòn 2025', CAST(7799000.00 AS Decimal(12, 2)), N'<p><span style="font-family:Tahoma,Geneva,sans-serif"><em><strong><a href="https://dulichviet.com.vn/du-lich-trong-nuoc/du-lich-da-nang-mu-xuan-hoi-an-hue-thanh-dia-la-vang-dong-thien-duong-tu-sai-gon-2025">Du lịch Đà Nẵng mù Xuân - Hội An - Huế - Thánh Địa La Vang - Động Thiên Đường từ Sài Gòn 2025</a></strong>. Hành trình Đà Nẵng mùa xuân 2025 sẽ đưa bạn từ Sài Gòn đến những điểm đến đầy sức hút của miền Trung Việt Nam: khám phá vẻ đẹp cổ kính của phố cổ Hội An, cố đô Huế trầm mặc, chiêm bái Thánh Địa La Vang, và ngỡ ngàng trước kỳ quan thiên nhiên tại Động Thiên Đường. Một chuyến đi 5 ngày 4 đêm, hòa quyện giữa nét văn hóa, lịch sử và thiên nhiên, chắc chắn sẽ mang đến cho bạn những trải nghiệm không thể nào quên.</em></span></p>
', N'<p><span style="font-family:Tahoma,Geneva,sans-serif">Lịch trình&nbsp;</span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Lịch khởi hành (Cập nhật 26/09/24)</span></p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 1 |&nbsp;TP.HCM – HUẾ – QUẢNG BÌNH (Ăn trưa, chiều)</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:&nbsp;&nbsp;</strong>Quý khách có mặt tại ga quốc nội, sân bay Tân Sơn Nhất trước giờ bay ít nhất hai tiếng<strong>.</strong></span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đại diện&nbsp;<strong>công ty Du Lịch Việt</strong>&nbsp;đón và hỗ trợ Quý Khách làm thủ tục đón chuyến bay đi&nbsp;<strong>Huế.</strong></span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đến&nbsp;<strong>sân bay Phú Bài</strong>, Hướng dẫn viên đón đoàn&nbsp;<strong>tham quan Lăng Khải Định</strong>&nbsp;(Ứng Lăng, lăng mộ của vua Khải Định, vị vua thứ 12 của triều Nguyễn) với lối kiến trúc độc đáo bởi sự pha trộn kiến trúc Đông Tây Kim Cổ lạ thường, với các tác phẩm nghệ thuật ghép tranh sành sứ độc đáo.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Lăng Khải Định" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Hue/lang-khai-dinh-tour-mua-xuan-du-lich-viet.jpg" /><br />
<em>Lăng Khải Định</em></span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa:</strong>&nbsp; Dùng cơm trưa tại nhà hàng.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Khởi hành đến&nbsp;<strong>Quảng Bình</strong>, trên đường dừng chân tham quan&nbsp;<strong>thành cổ Quảng Trị</strong>&nbsp;- nơi được thế giới biết đến và kính phục bởi cuộc đấu tranh anh dũng để bảo vệ Thành Cổ suốt 81 ngày đêm của các chiến sĩ giải phóng&nbsp; quân và nhân dân Quảng Trị.</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Thành Cổ Quảng Trị" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Quang-Binh/thanh-co-quang-tri-du-lich-viet.jpg" /><br />
<em>Thành Cổ Quảng Trị</em></span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Chiều:&nbsp;</strong>Dùng cơm chiều tại nhà hàng.&nbsp;</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Nghỉ đêm tại Quảng Bình</span></li>
</ul>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 2 |&nbsp;ĐỘNG THIÊN ĐƯỜNG – THÁNH ĐỊA LA VANG – HUẾ (Ăn sáng, trưa, chiều)</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:&nbsp;&nbsp;</strong>Dùng buffet sáng tại khách sạn.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Tham quan&nbsp;<strong>Động Thiên Đường</strong>&nbsp;được mệnh danh là "hoàng cung trong lòng đất", một trong những kỳ quan tráng lệ và huyền ảo bậc nhất thế giới, động nằm ẩn mình sâu trong lòng&nbsp;<strong>Vườn quốc gia Phong Nha Kẻ Bàng</strong>&nbsp;– được hiệp hội Hang động Hoàng Gia Anh khám phá từ năm 2005, hang có độ dài 31km đứng đầu trong bảng xếp hạng hang động quốc tế về sự huyền bí, kỳ vĩ của kiến tạo tự nhiên.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Động Thiên Đường" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Dong-Thien-Duong/tham-quan-dong-thien-duong-mua-xuan-du-lich-viet.jpg" /><br />
<em>Động Thiên Đường</em></span><br />
&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa:&nbsp;</strong>Dùng bữa trưa tại nhà hàng.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Khởi hành về<strong>&nbsp;Huế</strong>, trên đường đi Quý khách có dịp ngắm nhìn&nbsp;<strong>Vĩ Tuyến 17</strong>&nbsp;với&nbsp;<strong>Cầu Hiền Lương&nbsp;</strong>và&nbsp;<strong>dòng sông Bến Hải</strong>.</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn vào thăm&nbsp;<strong>Thánh Địa La Vang</strong>&nbsp;– Tiểu vương cung thánh đường.&nbsp;</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Thánh Địa La Vang" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Dong-Thien-Duong/thanh-dia-la-vang-tour-mua-xuan-du-lich-viet.jpg" /><br />
<em>Thánh Địa La Vang</em></span></p>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Chiều:&nbsp;</strong>Dùng cơm chiều tại nhà hàng. Nghỉ đêm tại Huế.</span></p>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 3 |&nbsp;HUẾ – ĐẠI NỘI – ĐÀ NẴNG (Ăn sáng, trưa, chiều)</span></h2>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:&nbsp;</strong>Dùng buffet sáng tại khách sạn.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Tham quan&nbsp;<strong>Đại Nội</strong>&nbsp;– Hoàng Thành của 13 vị vua triều Nguyễn, nơi có hơn 100 công trình kiến trúc đẹp<strong>: Ngọ Môn, Điện Thái Hòa, Tử Cấm Thành, Thế Miếu, Hiển Lâm Các, Cửu Đỉnh</strong>.</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Tham quan&nbsp;<strong>chùa Thiên Mụ</strong>&nbsp;–&nbsp; ngôi chùa cổ nhất Cố đô Huế.</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Chùa Thiên Mụ" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Hue/du-lich-hue-chua-thien-mu-du-lich-viet.jpg" /><br />
<em>Chùa Thiên Mụ</em></span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa:&nbsp;</strong>Dùng bữa trưa tại nhà hàng.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Khởi hành đến&nbsp;<strong>Đà Nẵng</strong>&nbsp;qua đường hầm Hải Vân-hầm đường bộ dài nhất Đông Nam Á.</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Quý khách tự do tắm bãi biển Phạm Văn Đồng với bãi cát trắng mịn trải dài, thu hút rất nhiều khách du lịch trong và ngoài nước.</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Chiều: &nbsp; Dùng cơm chiều tại nhà hàng. Nghỉ đêm tại Đà Nẵng.<br />
Tối: Qúy khách tự túc tham quan thành phố Đà Nẵng về đêm</strong></span></p>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 4 |&nbsp;NGŨ HÀNH SƠN - HỘI AN (Ăn sáng, trưa, chiều)</span></h2>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:&nbsp;</strong>Dùng buffet sáng tại khách sạn.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Tham quan một vòng&nbsp;<strong>bán đảo Sơn Trà</strong>…viếng&nbsp;<strong>Linh Ứng Tự</strong>&nbsp;và thưởng ngoạn vẻ đẹp của&nbsp;<strong>biển Mỹ Khê</strong>&nbsp;<em>(được đánh giá là một trong những bãi biển quyến rũ nhất hành tinh).&nbsp;</em></span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><em><img alt="Biển Mỹ Khê" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/da-nang-my-khe-du-lich-viet(1).jpg" /></em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Tham quan&nbsp;<strong>Ngũ Hành Sơn</strong>&nbsp;- đỉnh&nbsp;<strong>Kim Sơn</strong>, với dáng núi trông như một quả chuông úp sấp. Đoàn ghé thăm&nbsp;<strong>Chùa Quan Thế Âm</strong>,&nbsp;<strong>động Quan Âm</strong>,&nbsp;<strong>Bảo tàng văn hóa Phật Giáo</strong>… ghé thăm và mua sắm quà lưu niệm tại<strong>&nbsp;làng nghề điêu khắc đá Non Nước.</strong></span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong><img alt="Ngũ Hành Sơn" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/tham-quan-ngu-hanh-son-du-lich-viet.jpg" /></strong><br />
<em>Ngũ Hành Sơn</em></span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa:&nbsp;</strong>Dùng bữa trưa tại nhà hàng.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Tham quan&nbsp;<strong>Phố Cổ Hội An</strong>&nbsp;- di sản văn hoá thế giới với&nbsp;<strong>Chùa Cầu Nhật Bản, Hội Quán Phúc Kiến, Nhà Cổ Phùng Hưng</strong>, …</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Chiều:&nbsp;</strong>Dùng cơm chiều. Nghỉ đêm tại Đà Nẵng.</span></p>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 5 |&nbsp;BÀ NÀ – HỒ CHÍ MINH (Ăn sáng) (Ăn trưa tự túc)</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:&nbsp;</strong>Dùng buffet sáng tại khách sạn.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Khởi hành đến với&nbsp;<strong>cao nguyên Bà Nà</strong>&nbsp;nơi có khí hậu Châu Âu độc đáo và nổi tiếng với tuyến cáp treo kỷ lục mới của thế giới - Ngắm toàn cảnh thành phố Đà Nẵng từ trên cáp treo&nbsp;<em>(chi phí cáp treo tự túc).</em></span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><em><img alt="Cao Nguyên Bà Nà" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/cao-nguyen-ba-na-hill-du-lich-viet.jpg" /></em><br />
<em>Cao Nguyên Bà Nà</em></span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Quý khách tự do tham quan, vui chơi giải trí tại Bà Nà với&nbsp;<strong>Công Viên Fantasy, Rạp chiếu phim 3D Mega 360 độ với công nghệ hiện đại nhất và duy nhất có ở Viêt Nam, Hai rạp chiếu phim 4D và 5Di, Xe Trượt Ống, Hầm rượu, Vườn hoa tình yêu, Bảo Tàng Sáp,&nbsp;</strong>tự do chụp hình tại<strong>&nbsp;Cầu Vàng&nbsp;</strong>siêu hot<strong>…</strong></span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa: Quý khách vui lòng tự túc bữa ăn trưa.</strong></span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Du khách có thể tìm thấy những biểu tượng mang tính tâm linh như chùa chiền, đền đài hay tượng các đức Phật. Chắc hẳn sẽ là điểm dừng chân cho những ai mong cầu bình an và sức khỏe cho gia đình:&nbsp;<strong>Chùa Linh Ứng, Đền Lĩnh Chúa Linh Từ, Tháp Linh Phong Tự, Tượng Thích Ca Mâu Ni, Lầu Chuông, Nhà Bia, Miếu Bà, Trú Vũ Trà Quán</strong>.</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Hướng dẫn viên tiễn đoàn ra sân bay&nbsp;<strong>Đà Nẵng</strong>&nbsp;đón chuyến bay về&nbsp; TP.HCM.</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Kết thúc chương trình tham quan, chia tay và hẹn gặp lại.</span></p>
', 2, 3, N'A04E7A72-0B1E-4155-BAF7-9AD3369E80EC', CAST(0xB6470B00 AS Date), CAST(0xBB470B00 AS Date), 25, N'Trong nước', N'Mở bán')
GO
INSERT [dbo].[Tour] ([Tour_id], [Name], [Gia], [MoTa], [LichTrinh], [DiemKhoiHanh_id], [DiemDen_id], [KhachSan_id], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [LoaiTour], [TrangThai]) VALUES (N'TOUR008', N'Du lịch miền Bắc mùa Xuân - Trải Nghiệm Du Thuyền Vịnh Hạ Long từ Sài Gòn 2025', CAST(9999000.00 AS Decimal(12, 2)), N'<p><span style="font-family:Tahoma,Geneva,sans-serif"><em><strong>Du lịch miền Bắc mùa Xuân - Hà Nội - Tam Chúc - Ninh Bình - Trải Nghiệm Du Thuyền Vịnh Hạ Long từ Sài Gòn 2025</strong>. Khám phá vẻ đẹp miền Bắc mùa Xuân 2025 với hành trình tuyệt vời: Hà Nội cổ kính, chùa Tam Chúc kỳ vĩ, Ninh Bình thơ mộng, và trải nghiệm du thuyền đẳng cấp trên Vịnh Hạ Long. Xuất phát từ Sài Gòn, chuyến đi hứa hẹn mang đến những kỷ niệm khó quên và cảm giác thư thái giữa thiên nhiên hùng vĩ. Cùng bắt đầu hành trình khám phá nhé!</em></span></p>
', N'<p><span style="font-family:Tahoma,Geneva,sans-serif">Lịch trình&nbsp;</span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Lịch khởi hành (Cập nhật 08/10/24)</span></p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 1 |&nbsp;TP.HCM – HÀ NỘI – CHÙA TAM CHÚC (Ăn trưa, chiều)</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:&nbsp;</strong>Quý khách có mặt tại ga quốc nội, sân bay Tân Sơn Nhất trước giờ bay hai tiếng.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đại diện công ty&nbsp;<strong>Du Lịch Việt</strong>&nbsp;đón và hỗ trợ Quý Khách làm thủ tục đáp chuyến bay đi&nbsp;<strong>Hà Nội</strong>.&nbsp;</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đến sân bay&nbsp;<strong>Nội Bài</strong>, Hướng dẫn viên đón đoàn khởi hành đến<strong>&nbsp;HÀ NAM,&nbsp;</strong>Thăm quan Chùa Tam Chúc.&nbsp;</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa:</strong>&nbsp;Dùng cơm trưa.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Thăm&nbsp;<strong>Chùa Tam Chúc</strong>, ngôi chùa lớn nhất thế giới. Với diện tích quần thể lên tới 5.000 ha, được tạc 1.200 bức tượng bằng dung nham núi lửa và sở hữu nhiều báu vật trên thế giới.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Thăm Chùa Tam Chúc, ngôi chùa lớn nhất thế giới" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Chua-Bai-Dinh/du-lich-tam-chuc-gia-re-du-lich-viet.jpg" /><br />
<em>Thăm Chùa Tam Chúc, ngôi chùa lớn nhất thế giới</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Quần thể Tam Chúc với cảnh quan hùng vĩ, phía trước, giữa lòng hồ là 6 quả núi với hình dạng quả chuông, phía sau là 7 ngọn núi có thể phát sáng khi có ánh trăng ban đêm tạo nên thế tiền lục nhạc, hậu thất tinh.&nbsp;</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Tối:</strong>&nbsp;Dùng bữa tối. Nghỉ đêm tại&nbsp;<strong>Ninh Bình.</strong></span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Quý khách có thể tự do dạo phố, thưởng thức các món đặc sản Ninh Binh như thịt dê núi, ốc núi, nem Yên Mạc, cơm cháy, ...</span></li>
</ul>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 2 |&nbsp;TRÀNG AN – TUYỆT TÌNH CỐC – HANG MÚA (Ăn sáng, trưa, chiều)</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:</strong>&nbsp;Dùng buffet sáng tại khách sạn.&nbsp;</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn xuôi thuyền đi dọc theo suối giữa cánh đồng lúa thăm&nbsp;<strong>Khu du lịch Tràng An</strong>&nbsp;nơi những dải đá vôi, thung lũng và những sông ngòi đan xen tạo nên một không gian huyền ảo, kỳ bí, quý khách đi đò thăm&nbsp;<strong>Hang sáng, Hang tối, Hang nấu rượu</strong>&nbsp;và tìm hiểu văn hóa lịch sử nơi đây.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Khu du lịch Tràng An" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Ninh-Binh/du-lich-trang-an-gia-tot-du-lich-viet.jpg" /><br />
<em>Khu du lịch Tràng An</em></span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa:</strong>&nbsp;Dùng cơm trưa.&nbsp;</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Quý khách đến&nbsp;<strong>Hang Múa</strong>&nbsp;– được mệnh danh là&nbsp;<strong>Vạn Lý Trường Thành</strong>&nbsp;thu nhỏ. Quý khách có thể chinh phục hơn 400 bậc đá để ngắm toàn bộ khung cảnh&nbsp;Tam Cốc (Một Hạ Long Trên Cạn) từ trên cao.&nbsp;Đây là điểm đến thu hút hàng trăm nghìn các bạn trẻ khắp nơi thường xuyên đến đây để chụp ảnh, check in…</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Hang Múa – được mệnh danh là Vạn Lý Trường Thành thu nhỏ" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Ninh-Binh/hang-mua-ninh-binh-du-lich-viet.jpg" /><br />
<em>Hang Múa – được mệnh danh là Vạn Lý Trường Thành thu nhỏ</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Khởi hành đến&nbsp;<strong>Hạ Long</strong>,&nbsp;</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Tối:</strong>&nbsp;Dùng bữa tối. Nghỉ đêm tại&nbsp;<strong>Hạ Long.</strong></span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Quý khách tự do dạo phố, mua sắm tại chợ đêm hoặc tham gia khu&nbsp;<strong>Sunworld Hạ Long Park</strong>&nbsp;(<em>chi phí tự túc).</em></span></li>
</ul>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 3 |&nbsp;HẠ LONG – TRẢI NGHIỆM BUFFET 5 SAO TRÊN VỊNH HẠ LONG (Ăn sáng, trưa, chiều )</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Sáng: Dùng buffet sáng tại khách sạn.&nbsp;</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><strong>9: 00</strong>: Đoàn khởi hành tham quan Bảo Tàng Quảng Ninh .&nbsp;</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><strong>10:30:</strong>&nbsp;Đoàn di chuyển tới Cảng Quốc Tế Hạ Long và làm thủ tục checkin trên tàu.</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><strong>11:00</strong>: Đội ngũ nhân viên của du thuyền nồng hậu chào đón Quý khách lên tàu với màn&nbsp;<strong>Múa Lân Rồng</strong>&nbsp;đặc trưng của văn hóa VN. Du khách thưởng thức đồ uống chào mừng và nghe tóm tắt về lịch trình và các quy định an toàn trên du thuyền.Tàu khởi hành và đưa Quý khách khám phá những điểm đẹp nhất trên Vịnh Hạ Long như:</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Múa Lân Rồng đặc trưng của văn hóa VN" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Ninh-Binh/mua-lan-truyen-thong-du-lich-viet.jpg" /><br />
<em>Múa Lân Rồng đặc trưng của văn hóa VN</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Hòn Đầu Người</strong>&nbsp;là tác phẩm tự nhiên mọc lên từ nước biển, hoàn chỉnh với đầy đủ các chi tiết của một khuôn mặt. Du thuyền sẽ di chuyển chậm để khách hàng có thể chụp ảnh lưu giữ những khoảnh khắc đẹp tại nơi đây.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Hòn Đầu Người là tác phẩm tự nhiên mọc lên từ nước biển" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Ha-Long/hon-dau-nguoi-du-lich-viet.jpg" /><br />
<em>Hòn Đầu Người là tác phẩm tự nhiên mọc lên từ nước biển</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><strong>12:00</strong>: Du khách thưởng thức bữa trưa&nbsp;<strong>Buffet&nbsp;</strong><strong>cao cấp</strong>&nbsp;với những món ăn Hải sản tươi ngon đặc sắc của vùng biển Hạ Long cũng như các món ăn truyền thống của Việt Nam. (Nếu tàu chạy dưới 20 khách, Quý khách sẽ được phục vụ ăn trưa theo Set Menu)</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Buffet cao cấp với những món ăn Hải sản tươi ngon đặc sắc của vùng biển Hạ Long" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Ha-Long/Buffet-cao-cap-du-lich-viet.jpg" /><br />
<em>Buffet cao cấp với những món ăn Hải sản tươi ngon đặc sắc của vùng biển Hạ Long</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><strong>13:00</strong>: Hướng dẫn viên sẽ đưa Quý khách đến thăm quan&nbsp;<strong>hang Sửng Sốt</strong>&nbsp;- hang động đẹp và rộng nhất vịnh Hạ Long với vẻ đẹp huyền ảo, kỳ vĩ được tạo nên từ vô vàn khối thạch nhũ, măng đá lung linh hóa thân vào những hình thù kỳ lạ, độc đáo.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="hang Sửng Sốt" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Ha-Long/hang-sung-sot-du-lich-viet(1).jpg" /></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><strong>14:00</strong>:&nbsp;<strong>Tại khu vực Hang Luồn</strong>, du khách có thể chèo kayak/thuyền nan - môn thể thao được yêu thích nhất của giới trẻ hoặc lựa chọn nghỉ lại trên tàu, vui chơi tự do và sử dụng&nbsp;<strong>bể sục Jacuzzi.</strong></span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong><img alt="Chèo kayak" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Ha-Long/cheo-thuyen-kayak-du-lich-viet.jpg" /></strong><br />
<em>Chèo Thuyền Kayak</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><strong>15:00</strong>:&nbsp;<strong>Thăm đảo Titop</strong>&nbsp;là nơi bạn có thể bơi lội hay tắm nắng trên bãi cát trắng mịn hoặc bạn cũng có thể leo lên đỉnh Titov để ngắm toàn cảnh vịnh Hạ Long với hàng ngàn mỏm núi đã vôi nhô lên từ mặt nước xanh biếc.(Quý khách sẽ được phục vụ khăn tắm miễn phí của du thuyền)</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt=" Thăm đảo Titop là nơi bạn có thể bơi lội hay tắm nắng trên bãi cát trắng mịn " src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Ha-Long/tham-quan-dao-titop-du-lich-viet.jpg" /><br />
<em>Thăm đảo Titop là nơi bạn có thể bơi lội hay tắm nắng trên bãi cát trắng mịn&nbsp;</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><strong>16:00</strong>: Du khách trở lại tàu để tham gia hai hoạt động&nbsp;<strong>Sunset Party</strong>. Du khách sẽ được tận hưởng những giây phút thư giãn nhâm nhi đồ uống cùng snack và trái cây tươi trên sundeck và thư giãn trong bể sục jacuzzi không gian thiên nhiên tuyệt vời và cùng ngắm hoàng hôn buông xuống thật dịu dàng và yên bình.</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><strong>17:30 -18:00</strong>&nbsp;Tàu cập bến. Nhân viên chào tạm biệt Quý khách, kết thúc hải trình 7 tiếng tham quan trên vịnh.</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Tối:</strong>&nbsp;Dùng bữa tối. Nghỉ đêm tại&nbsp;<strong>Hạ Long.</strong></span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Quý khách tự do dạo phố, mua sắm tại chợ đêm hoặc tham gia khu&nbsp;<strong>Sunworld Hạ Long Park</strong>&nbsp;(<em>chi phí tự túc).</em></span></li>
</ul>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 4 |&nbsp;HẠ LONG- YÊN TỬ – HÀ NỘI – HỒ CHÍ MINH (Ăn sáng, trưa)</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Sáng: Dùng buffet sáng tại khách sạn.&nbsp;</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn khởi hành đi&nbsp; tham quan&nbsp;<strong>núi Yên Tử</strong>&nbsp;- ngọn núi cao 1068 m so với mực nước biển, một thắng cảnh thiên nhiên còn lưu giữ hệ thống các di tích lịch sử văn hóa gắn với sự ra đời, hình thành và phát triển của thiền phái Trúc Lâm Yên Tử, được mệnh danh là&nbsp;<strong>“đất tổ Phật giáo Việt Nam”</strong>.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="núi Yên Tử" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Yen-Tu/dinh-nui-yen-tu-du-lich-viet.jpg" /><br />
<em>Núi Yên Tử</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Quý khách lên núi bằng cáp treo&nbsp;<em>(chi phí cáp treo tự túc),&nbsp;</em>tham quan&nbsp;<strong>chùa Hoa Yên, Bảo Tháp, Trúc Lâm Tam Tổ, Hàng Tùng 700 tuổi</strong>…xuống núi tham quan&nbsp;<strong>Thiền Viện Trúc Lâm&nbsp;</strong>với quả cầu Như Ý nặng 6 tấn được xếp kỷ lục guiness Việt Nam.</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa:&nbsp;</strong>Dùng bữa trưa.&nbsp;</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn trở về Hà Nội.</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Hướng dẫn viên tiễn đoàn ra sân bay Nội Bài đón chuyến bay về TP.HCM.</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Kết thúc chương trình tham quan, chia tay và hẹn gặp lại.</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><em>Giờ bay có thể thay đổi theo quy định của hàng không. Du Lịch Việt sẽ thay đổi chương trình cho phù hợp với giờ bay mới nhưng sẽ không chịu trách nhiệm về các khoản chi phí phát sinh.</em></span></p>
', 1, 5, N'2AFD1D10-7F2D-4C8C-9D22-46047AE66275', CAST(0xB4470B00 AS Date), CAST(0xB8470B00 AS Date), 25, N'Trong nước', N'Mở bán')
GO
INSERT [dbo].[Tour] ([Tour_id], [Name], [Gia], [MoTa], [LichTrinh], [DiemKhoiHanh_id], [DiemDen_id], [KhachSan_id], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [LoaiTour], [TrangThai]) VALUES (N'TOUR009', N'Du lịch Tour Hạ Long - Yên Tử - Sapa từ Sài Gòn 2024', CAST(7999000.00 AS Decimal(12, 2)), N'<p><span style="font-family:Tahoma,Geneva,sans-serif"><em><strong><a href="https://dulichviet.com.vn/du-lich-ha-long">Du lịch Hạ Long</a></strong>&nbsp;luôn hấp dẫn rất nhiều các du khách trong nước và quốc tế. Hạ Long "gây thương nhớ" với nhiều danh lam thắng cảnh nổi tiếng, các món ăn ngon, trải nghiệm thú vị... Du lịch Hạ Long thuộc tỉnh Quảng Ninh, cách Hà Nội khoảng 180km, được mệnh danh là thiên đường du lịch phía Bắc. Nhờ vị trí thuận lợi cùng cơ sở hạ tầng hiện đại, hệ thống giao thông phát triển, mỗi năm,&nbsp;<strong><a href="https://dulichviet.com.vn/du-lich-ha-long">Du lich Hạ Long</a></strong>&nbsp;thu hút hàng chục triệu lượt khách du lịch trong nước và quốc tế. Vịnh Hạ Long có diện tích 1.553km2 bao gồm 1.900 hòn đảo đá vôi lớn nhỏ mang những hình thù hết sức sinh động. Vịnh đã nhiều lần được UNESCO bình chọn là kỳ quan thiên nhiên thế giới, được mệnh danh là địa điểm nhất định phải đến 1 lần trong đời. Vì sao nên du lịch Hạ Long một lần trong đời? Tại sao bạn nên chọn Hạ Long là điểm đến cho hành trình du lịch của mình? Với 3 lý do dưới đây, chúng tôi tin rằng ai cũng muốn xách ba lô và đi luôn trong dịp Hè 2024 trong năm nay!</em></span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><em>1 trong 7 kỳ quan thiên nhiên thế giới: nằm trong top 7 kỳ quan thiên nhiên thế giới, chắc chắn, vịnh Hạ Long là điểm đến mơ ước của mọi du khách. Không chỉ khách du lịch trong nước, du khách nước ngoài cũng rất thích thú, trầm trồ với tạo hóa thiên nhiên nơi đây.</em></span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><em>Có đầy đủ cơ sở vật chất và dịch vụ chất lượng: những năm qua, Hạ Long có tốc độ phát triển kinh tế cực cao. Hệ thống cơ sở vật chất, hạ tầng được đầu tư đồng bộ và chất lượng. Du khách sẽ được phục vụ đầy đủ các tiện ích, đáp ứng nhu cầu vui chơi, nghỉ dưỡng, mua sắm...</em></span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><em>Nhiều điểm vui chơi, giải trí, khám phá thú vị, hấp dẫn: đến Hạ Long, bạn sẽ được thỏa sức khám phá, trải nghiệm, vui chơi.&nbsp;<strong><a href="https://dulichviet.com.vn/kinh-nghiem-du-lich-ha-long">Kinh nghiệm du lịch Hạ Long</a></strong>&nbsp;của hầu hết mọi người là đừng bỏ lỡ những địa điểm tham quan hấp dẫn như: vịnh Hạ Long, phố cổ, chợ đêm, Tuần Châu..</em></span></li>
</ul>
', N'<p><span style="font-family:Tahoma,Geneva,sans-serif">Lịch trình&nbsp;</span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Lịch khởi hành (Cập nhật 10/08/24)</span></p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 1 |&nbsp;TP.HCM – HÀ NỘI – HẠ LONG (Ăn trưa, chiều)</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:&nbsp;</strong>Quý khách có mặt tại ga quốc nội, sân bay Tân Sơn Nhất trước giờ bay ít nhất hai tiếng.&nbsp;</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đại diện công ty Du Lịch Việt đón và hỗ trợ Quý Khách làm thủ tục đón chuyến bay đi&nbsp;<strong>Hà Nội</strong>.</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đến sân bay&nbsp;<strong>Nội Bài</strong>, Hướng dẫn viên đón đoàn Khởi hành đến&nbsp;<strong>Hạ Long</strong>, trên đường dừng chân tham quan&nbsp;<strong>núi Yên Tử</strong>&nbsp;- ngọn núi cao 1068 m so với mực nước biển, một thắng cảnh thiên nhiên còn lưu giữ hệ thống các di tích lịch sử văn hóa gắn với sự ra đời, hình thành và phát triển của thiền phái Trúc Lâm Yên Tử, được mệnh danh là&nbsp;<strong>“đất tổ Phật giáo Việt Nam”</strong>.</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Núi Yên Tử" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Yen-Tu/dinh-nui-yen-tu-du-lich-viet.jpg" /><br />
<em>Núi Yên Tử</em></span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa:&nbsp;</strong>Dùng cơm trưa.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Quý khách lên núi bằng cáp treo&nbsp;<em>(chi phí cáp treo tự túc),&nbsp;</em>tham quan&nbsp;<strong>chùa Hoa Yên, Bảo Tháp, Trúc Lâm Tam Tổ, Hàng Tùng 700 tuổi</strong>…xuống núi tham quan&nbsp;<strong>Thiền Viện Trúc Lâm&nbsp;</strong>với quả cầu Như Ý nặng 6 tấn được xếp kỷ lục guiness Việt Nam.</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Thiền Viện Trúc Lâm" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Yen-Tu/thien-vien-truc-lam-voi-qua-cau-nhu-y-du-lich-viet.jpg" /><br />
<em>Thiền Viện Trúc Lâm</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn khởi hành về thành phố Hạ Long.</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Chiều:&nbsp;</strong>Dùng bữa chiều. Nghỉ đêm tại Hạ Long.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Quý khách tự do dạo phố, mua sắm tại chợ đêm hoặc tham gia khu&nbsp;<strong>Sunworld Hạ Long Park</strong>&nbsp;với tất cả khu trò chơi trong nhà, ngoài trời hoành tráng có các khu Công viên Rồng, Cáp treo Nữ Hoàng vòng quay Sun wheel…<em>(chi phí tự túc).</em></span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><em><img alt="Sunworld Hạ Long Park" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Ha-Long/Sunworld-Ha-Long-Park-du-lich-viet.jpg" /></em><br />
<em>Sunworld Hạ Long Park</em></span></p>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 2 |&nbsp;HẠ LONG – HÀ NỘI (Ăn sáng, trưa, chiều)</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:</strong>&nbsp;Dùng buffet sáng tại khách sạn.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn xuống thuyền ngoạn cảnh&nbsp;<strong>Vịnh Hạ Long</strong>&nbsp;– Di sản thiên nhiên thế giới với hàng ngàn đảo đá có hình dạng kỳ vĩ - chiêm ngưỡng vẻ đẹp trau chuốt, lộng lẫy của động&nbsp;<strong>Thiên Cung</strong>, vẻ đẹp siêu nhiên của hòn&nbsp;<strong>Đỉnh Hương, Gà Chọi, Chó Đá</strong>…&nbsp;</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Vịnh Hạ Long" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Ha-Long/ngoan-canh-vinh-ha-long-du-lich-viet.jpg" /><br />
<em>Vịnh Hạ Long</em></span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa:&nbsp;</strong>Dùng bữa trưa.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn khởi hành về Hà Nội.</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Chiều:&nbsp;</strong>Dùng bữa chiều. Nghỉ đêm tại Hà Nội.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Quý khách có thể dạo một vòng quanh thủ đô, thưởng thức các món đặc sản: bún chả cá Lả Vọng, phở Hà Nội, búng thang, bún chả, … hoặc thưởng thức café ở phố cổ, Hồ Gươm, tham gia phố đi bộ, chợ đêm, chợ Đồng Xuân, thưởng thức đặc sản và mua quà lưu niệm.&nbsp;</span></li>
</ul>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 3 |&nbsp;HÀ NỘI – LÀO CAI - SAPA (Ăn sáng, trưa, chiều)</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:&nbsp;</strong>Dùng buffet sáng tại khách sạn.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn khởi hành đến&nbsp;<strong>Lào Cai</strong>&nbsp;trên con đường cao tốc dài nhất Việt Nam - mạch nối liền giữa Hà Nội và các tỉnh Tây Bắc.</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa:&nbsp;</strong>Dùng bữa trưa.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn tiếp tục đến&nbsp;<strong>thị trấn vùng cao Sapa</strong>, tận hưởng cảnh sắc núi rừng như tranh vẽ và khám phá cuộc sống của đồng bào dân tộc ít người miền Tây Bắc.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Thị trấn vùng cao Sapa" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Sapa/thi-tran-sapa-mua-xuan-du-lich-viet.jpg" /><br />
<em>Thị trấn vùng cao Sapa</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Thăm&nbsp;<strong>bản Cát Cát</strong>, tìm hiểu nghề dệt nhuộm của&nbsp;<strong>dân tộc H’Mông</strong>&nbsp;và trạm thủy điện Cát Cát thời Pháp – nơi có 3 dòng nước hợp nhau thành dòng suối Mường Hoa.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Bản Cát Cát" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Sapa/ban-cat-cat-du-lich-sapa-gia-re.jpg" /><br />
<em>Bản Cát Cát</em></span><br />
&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Chiều:&nbsp;</strong>Dùng bữa chiều. Nghỉ đêm tại Sapa. Tự do dạo phố, tham quan nhà thờ đá Sapa, tham dự đêm&nbsp;<strong>chợ Tình</strong>&nbsp;(nếu đi vào tối thứ 7).&nbsp;</span></p>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 4 |&nbsp;FANSIPAN – HÀ NỘI – TP.HCM (Ăn sáng, trưa)</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Sáng:&nbsp;</strong>Dùng buffet sáng tại khách sạn.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn khởi hành tham quan chinh phục&nbsp;<strong>Fansipan</strong>, ngọn núi cao nhất Việt Nam</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Đỉnh Fansipan" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Sapa/du-lich-sapa-dinh-fansipan-du-lich-viet(3).jpg" /><br />
<em>Đỉnh Fansipan</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">(3.143 m) thuộc dãy núi Hoàng Liên Sơn, cách thị trấn Sa Pa khoảng 9 km về phía tây nam.&nbsp;</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Du khách chinh phục "Nóc nhà Đông Dương"&nbsp; với hệ thống cáp treo&nbsp;<strong>Fansipan</strong>&nbsp;Sa Pa dài 6,2km đạt 2 kỷ lục Guinness thế giới: Cáp treo ba dây có độ chênh giữa ga đi và ga đến lớn nhất thế giới: 1410m và Cáp treo ba dây dài nhất thế giới: 6292.5m. Từ tuyến cáp treo, du khách có thể cảm nhận được thiên nhiên hùng vĩ, chiêm ngưỡng khung cảnh thung lũng Mường Hoa và rừng quốc gia Hoàng Liên từ trên cao. Ngoài ra, du khách còn có thể đến hành hương tại&nbsp;<strong>Khu du lịch tâm linh – Chùa Trình, Chùa Hạ</strong>&nbsp;tại ga đến&nbsp;<em>(chi phí cáp treo tự túc).</em></span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Fansipan Sa Pa" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Sapa/tour-sapa-kham-pha-noc-nha-dong-duong-du-lich-viet.jpg" /></span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trưa:</strong>&nbsp;Dùng bữa trưa.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn khởi hành về Hà Nội, Hướng dẫn viên tiễn đoàn ra sân bay Nội Bài đón chuyến bay về TP.HCM.</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</strong>Kết thúc chuyến tham quan, chia tay đoàn và hẹn gặp lại.</span></p>
', 2, 5, N'1AC5C6CA-8084-4824-B35B-E8AC93B5D17E', CAST(0xA8470B00 AS Date), CAST(0xAC470B00 AS Date), 20, N'Trong nước', N'Mở bán')
GO
INSERT [dbo].[Tour] ([Tour_id], [Name], [Gia], [MoTa], [LichTrinh], [DiemKhoiHanh_id], [DiemDen_id], [KhachSan_id], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [LoaiTour], [TrangThai]) VALUES (N'TOUR010', N'Du lịch Trung Quốc Tết Âm lịch - Thượng Hải - Vô Tích - Ô Trấn - Hàng Châu từ Sài Gòn 2025', CAST(28999000.00 AS Decimal(12, 2)), N'<p><span style="font-family:Tahoma,Geneva,sans-serif"><em><strong><a href="https://dulichviet.com.vn/du-lich-nuoc-ngoai/du-lich-trung-quoc-mua-xuan-thuong-hai-vo-tich-o-tran-hang-chau-tu-sai-gon-2025">Du lịch Trung Quốc mùa Xuân</a></strong>&nbsp;với hành trình qua các điểm đến nổi tiếng như Thượng Hải, Vô Tích, Ô Trấn và Hàng Châu là một lựa chọn tuyệt vời. Đây là mùa đẹp nhất trong năm để khám phá vẻ đẹp thiên nhiên và văn hóa nơi đây, khi thời tiết mát mẻ, hoa đào, hoa mận nở rộ, tạo nên cảnh sắc vô cùng thơ mộng.</em></span></p>
', N'<p><span style="font-family:Tahoma,Geneva,sans-serif">Lịch trình&nbsp;</span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Lịch khởi hành (Cập nhật 28/11/24)</span></p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 1 |&nbsp;TP.HCM - THƯỢNG HẢI (Ăn nhẹ trên máy bay, Ăn tối)</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">16h30 Quý khách tập trung tại sân bay Tân Sơn Nhất, ga đi quốc tế, làm thủ tục đáp chuyến bay<strong>&nbsp;VN522 (09:05 -14:15)&nbsp;</strong>đi Thượng Hải. Xe và hướng dẫn viên địa phương đón đoàn, sau đó, đoàn tham quan:</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">&nbsp;<strong>Bến Thượng Hải&nbsp;</strong>- từ đây có thể chụp ảnh toàn cảnh các công trình kiến trúc nổi tiếng như tháp truyền hình Đông Phương Minh Châu, tháp Kim Mậu.</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Bến Thượng Hải" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/trung-quoc/ben-thuong-hai-du-lich-viet(3).jpg" /><br />
<em>Bến Thượng Hải</em></span><br />
&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Ăn tối. Sau đó, quý khách có thể tham&nbsp;<strong>gia Chương trình du thuyền trên sông Hoàng Phố ngắm cảnh đẹp hai bờ Tây – Đông thành phố Thượng Hải</strong>&nbsp;dưới những ánh đèn đủ màu sắc của các toà nhà cao tầng dọc 2 bên sông hoặc đi tàu điện ngầm khám phá thành phố Thượng Hải về đêm (<strong>chi phí tự túc 180RMB)</strong></span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Nhận phòng khách sạn. Nghỉ đêm tại Thượng Hải</strong></span></li>
</ul>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 2 |&nbsp;THƯỢNG HẢI - VÔ TÍCH (Ăn ba bữa)</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Ăn sáng tại khách sạn, làm thủ tục trả phòng. Đoàn khởi hành tham quan:</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><strong>&nbsp;Phim trường Tam Quốc Thành</strong>: là phim trường quy mô lớn của Đài truyền hình Trung ương Bắc Kinh, Du khách sẽ có cảm giác như mình được sống lại trong thời đại vua chúa hay được làm một nhân vật trong phim cổ trang của Trung Quốc.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Phim trường Tam Quốc Thành" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/trung-quoc/tham-quan-phim-truong-tam-quoc-thanh-du-lich-viet.jpg" /><br />
<em>Phim trường Tam Quốc Thành</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">&nbsp;Du thuyền thưởng ngoạn toàn cảnh&nbsp;<strong>Tam Quốc Thành</strong>&nbsp;<em>(gồm phí du thuyền</em>).</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Nếu kịp thời gian, Quý khách thưởng thức Show biểu diễn nổi tiếng thời Tam Quốc:&nbsp;<strong>Tam anh chiến Lữ Bố</strong>. (Khung giờ biểu diễn: 10:00 và 16:00<strong>)</strong></span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Ăn tối.&nbsp;<strong>Nghỉ&nbsp; đêm tại Vô Tích 5 sao.</strong></span></p>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 3 |&nbsp;VÔ TÍCH – Ô TRẤN – HÀNG CHÂU (Ăn ba bữa)</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Sáng: Quý khách dùng bữa sáng tại khách sạn.<br />
Sau đó đoàn khởi hành đi&nbsp;<strong>Ô Trấn</strong>&nbsp;tham quan:</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Cửa Hàng Thuốc Đồng Nhân Đường</strong></span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Khám phá Ô TRẤN</strong>&nbsp;-&nbsp; một trấn cổ sông nước lớn nhất Trung Quốc với hơn 1300 năm lịch sử thể hiện qua những cây cầu đá cổ, những &nbsp;con đường lát đá và những công trình gỗ chạm khắc tinh tế. Gần như vẫn giữ được kiến trúc cùng tập tục sinh sống hơn 1.000 năm qua nên Ô Trấn trở thành điểm du lịch mà ai cũng muốn đến một lần.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Khám phá Ô TRẤN" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/trung-quoc/o-tran-du-lich-viet.jpg" /><br />
<em>Khám phá Ô Trấn</em></span><br />
&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Trưa: Đoàn dùng cơm trưa. Sau đó quý khách khởi hành đi&nbsp;<strong>Hàng Châu</strong>&nbsp;và tham quan:</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Cửa hàng trà Long Tĩnh</strong>&nbsp;– tại đây, quý khách tìm hiểu quá trình trồng, hái cà chế biến trà nổi tiếng Hàng Châu, thưởng thức các loại &nbsp;trà nổi tiếng của Trung Hoa.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/trung-quoc/thuong-thuc-tra-long-tinh-du-lich-viet(2).jpg" /><br />
<em>Cửa hàng trà Long Tĩnh</em></span><br />
&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Quý khách ăn tối và&nbsp;<strong>nghỉ đêm tại khách sạn Hàng Châu</strong>.&nbsp;</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Thưởng thức chương trình&nbsp;<strong>Tống Thành Thiên Tình Cổ&nbsp;</strong>là ѕhoᴡ biểu diễn độc đáo thể hiện lại các giai thoại ᴠề những câu chuуện nổi tiếng nhất mà bất cứ du khách nào khi du lịch Trung Quốc đến đâу cũng mong được thưởng thức&nbsp;<em>(chi phí tự túc, 380 RMB/khách).</em></span></li>
</ul>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 4 |&nbsp;HÀNG CHÂU – THƯỢNG HẢI (Ăn ba bữa)</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Sáng: Quý khách dùng bữa sáng tại khách sạn. Sau đó khởi hành tham quan:</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Ngồi Thuyền Thưởng Ngoạn Tây Hồ</strong>&nbsp;- được xem là đẹp và nên thơ nhất trong hơn 36 hồ có&nbsp;&nbsp;&nbsp;&nbsp; cùng tên ở Trung Quốc, nhìn ngắm Quả sơn, Đoạn kiều, Trường kiều, Tô Đê Bạch Đê, Tam Đàn Ấn Nguyệt và Hoa Cảng gắn liền với những truyền thuyết về Lương Sơn Bá - Chúc Anh Đài, nhà thơ Lý Bạch, Thanh xà - Bạch xà.</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Ngồi Thuyền Thưởng Ngoạn Tây Hồ" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/trung-quoc/ngoi-thuyen-dao-quanh-tay-ho-du-lich-viet.jpg" /><br />
<em>Ngồi Thuyền Thưởng Ngoạn Tây Hồ</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Tham quan Miếu Nhạc Phi</strong></span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Miếu Nhạc Phi" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/trung-quoc/mieu-nhac-phi-du-lich-viet(2).jpg" /><br />
<em>Miếu Nhạc Phi</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Tham quan, mua sắm tại cửa hàng bán đồ dùng nhà bếp, cửa hàng bán dao hoặc cửa hàng tơ lụa.</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Trưa: Sau bữa trưa, đoàn khởi hành đi&nbsp;<strong>Thượng Hải</strong></span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Tham quan cửa hàng đá cẩm thạch</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Mua sắm trên phố Nam Kinh</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Lục Gia Chủy</strong>&nbsp;- khu vực rất phát triển nằm trên bán đảo thuộc Sông Hoàng Phố, Thượng Hải. Hàng loạt tòa nhà chọc trời muôn hình vạn trạng điểm tô cho đường chân trời khiến nơi đây tựa như thế giới tương lai. Mỗi khi đêm về, Lục Gia Chủy lại cùng thành phố cuồng nhiệt trong ánh đèn rực rỡ</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Nghỉ đêm tại Thượng Hải</strong>.</span></p>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 5 |&nbsp;THƯỢNG HẢI – TP.HCM (Ăn sáng, trưa)</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn dùng bữa sáng tại khách sạn, làm thủ tục trả phòng. Sau đó đoàn khởi hành tham quan:</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Chùa Phật Ngọc</strong>&nbsp;– một trong những ngôi chùa nổi tiếng tại Trung Quốc. Ngôi chùa này nổi bật với bức tượng Phật bằng ngọc bích trắng của Miến Điện, được chạm khắc vô cùng tỉ mẩn và tinh xảo.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Chùa Phật Ngọc" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/trung-quoc/chua-phat-ngoc-viet-media-travel(1).jpg" /><br />
<em>Chùa Phật Ngọc</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><strong>&nbsp;Miếu Thành Hoàng</strong>&nbsp;– một khu mua sắm sầm&nbsp;&nbsp;&nbsp; uất với những Kiến trúc kết hợp giữa Cổ kính và hiện tại, là một điểm thường được người dân bản địa và du khách ưa thích.</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif">HDV đưa đoàn ra sân bay đáp chuyến bay&nbsp;<strong>VN523 (15:25 -19:05)</strong>&nbsp;về lại Việt Nam. Về đến sân bay Tân Sơn Nhất đoàn làm thủ tục nhập cảnh và nhận lại hành lý cá nhân. Kết thúc chương trình, chia tay và hẹn gặp lại.</span></p>
', 2, 6, N'4667BC21-85E7-47F3-B2E9-9141D6653337', CAST(0xB4470B00 AS Date), CAST(0xB9470B00 AS Date), 25, N'Ngoài nước', N'Mở bán')
GO
INSERT [dbo].[Tour] ([Tour_id], [Name], [Gia], [MoTa], [LichTrinh], [DiemKhoiHanh_id], [DiemDen_id], [KhachSan_id], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [LoaiTour], [TrangThai]) VALUES (N'TOUR011', N'Du lịch Trung Quốc Tết Âm lịch - Thành Đô - Cửu Trại Câu - Gấu Trúc từ Sài Gòn 2025', CAST(34990000.00 AS Decimal(12, 2)), N'<p><span style="font-family:Tahoma,Geneva,sans-serif"><em><strong><a href="https://dulichviet.com.vn/du-lich-nuoc-ngoai/du-lich-trung-quoc-tet-am-lich-thanh-do-cuu-trai-cau-gau-truc-tu-sai-gon-2025">Khám phá Thành Đô - Cửu Trại Câu - Gấu Trúc dịp Tết Âm lịch 2025</a></strong>. Tết Âm lịch 2025 là cơ hội tuyệt vời để khám phá Trung Quốc, với hành trình đầy sắc màu từ Sài Gòn đến Thành Đô, Cửu Trại Câu, và khu bảo tồn Gấu Trúc. Đắm mình trong vẻ đẹp thiên nhiên kỳ ảo của Cửu Trại Câu, thưởng thức ẩm thực đặc sắc tại Thành Đô, và trải nghiệm thế giới dễ thương của những chú gấu trúc đáng yêu - chuyến đi hứa hẹn mang đến những kỷ niệm khó quên cho mùa xuân này. Hãy sẵn sàng để hành trình trở thành câu chuyện tuyệt vời của riêng bạn!</em></span></p>
', N'<p><span style="font-family:Tahoma,Geneva,sans-serif">Lịch trình&nbsp;</span></p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Lịch khởi hành (Cập nhật 28/11/24)</span></p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 1 |&nbsp;TP HỒ CHÍ MINH – THÀNH ĐÔ&nbsp; &nbsp;&nbsp;&nbsp;(Ăn sáng nhẹ trên máy bay, trưa ăn nhẹ, tối)</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Đến giờ hẹn, Quý khách có mặt tại sân bay Tân Sơn Nhất ga đi quốc tế. Trưởng Đoàn hướng dẫn làm thủ tục check in đáp&nbsp;<strong>chuyến bay đi Thành &nbsp;Đô – Trung Quốc 3U3904 (</strong><strong>09:</strong><strong>00-1</strong><strong>3:</strong><strong>35).&nbsp;</strong>Đến Thành Đô, HDV đón đoàn và<strong>&nbsp;gửi phần ăn nhẹ đến Quý khách.</strong><br />
Sau đó khởi hành đi tham quan:</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Khu Phố Cổ Kuanzhai Alley&nbsp;</strong>là một khu phố cổ kính nằm ở trung tâm thành phố Thành Đô, tỉnh Tứ Xuyên, Trung Quốc. Nơi đây nổi tiếng với những con đường nhỏ uốn lượn, những ngôi nhà mái ngói cong cong và những cửa hàng bán đồ lưu niệm độc đáo, thích hợp mua quà khi tham gia tour đi Thành Đô Trung Quốc.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Khu Phố Cổ Kuanzhai Alley" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/trung-quoc/khu-pho-Kuanzhai-Alley-du-lich-viet.jpg" /><br />
<em>Khu Phố Cổ Kuanzhai Alley</em></span><br />
&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Ăn tối. Đoàn nhận phòng. Nghỉ đêm tại Thành Đô.</span></p>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 2 |&nbsp;THÀNH ĐÔ – CỬU TRẠI CÂU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(Ăn sáng, trưa, tối)&nbsp;</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Ăn sáng tại khách sạn. Làm thủ tục trả phòng. Đoàn khởi hành di chuyển đi Cửu Trại Câu, trên đường đi, đoàn tham quan:</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Hồ Điệp Khê</strong><strong>&nbsp;</strong><strong>Hải Tử</strong>&nbsp;nơi đây được hình thành sau động đất xảy ra vào năm 1933, với vẻ đẹp do thiên nhiên ban tặng cùng với màu nước xanh mát thu hút rất nhiều khách du lịch đến tham quan địa điểm này. Nơi đây được đánh giá là di tích đẹp nhất còn xót lại sau động đất, còn được lưu giữ hoàn thiện nhất Trung Quốc cho đến thời điểm hiện tại.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Hồ Điệp Khê Hải Tử" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/trung-quoc/ho-diep-khe-du-lich-viet(2).jpg" /><br />
<em>Hồ Điệp Khê Hải Tử</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Thành cổ Tùng Phan (chụp hình bên ngoài)&nbsp;</strong>- bức tường thành sừng sững tồn tại qua ngàn năm lịch sử. Được xây dựng từ thời nhà Minh, toàn bộ khu vực thành cổ được chia làm hai lớp, với tổng cộng bảy cổng thành, hai cổng bên ngoài và năm cổng bên trong, ngăn cách toàn bộ khu vực dân cư với bên ngoài thành.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Thành cổ Tùng Phan (chụp hình bên ngoài)" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/trung-quoc/thanh-co-tung-phan-du-lich-viet.jpg" /><br />
<em>Thành cổ Tùng Phan (chụp hình bên ngoài)</em></span><br />
&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Ăn tối với&nbsp;<strong>món lẩu Tây Tạng</strong>&nbsp;đặc sắc. Nhận phòng&nbsp;<strong>khách sạn 5*,</strong>&nbsp;nghỉ đêm tại Cửu Trại Câu</span></p>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 3 |&nbsp;CỬU TRẠI CÂU&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(Ăn sáng, trưa, tối)</span></h2>

<p>&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Ăn sáng tại khách sạn, xe đưa quý khách đến với&nbsp;<strong>Khu thắng cảnh</strong><strong>&nbsp;</strong><strong>Cửu Trại Câu</strong>&nbsp;(bao gồm xe sinh thái công cộng)– cảnh quan thiên nhiên tuyệt đẹp và độc nhất vô nhị tại Trung Quốc. Tại đây, quý khách sẽ phải choáng ngợp khi chiêm ngưỡng giữa vẻ đẹp của hàng trăm hồ nước lớn nhỏ từ những ghềnh thác đổ về, điều đặc biệt tại nơi đây chính là màu nước trong hồ có thể thay đổi do ánh sáng mặt trời phản chiếu vào buổi sáng hay buổi chiều. Nơi đây được mệnh danh di sản văn hóa tự nhiên Thế Giới, bởi những quần thể các hồ xung quanh như: Hồ Thụ Chính, Thác Nhật nhược Lang, … Quý khách tự do tản bộ và ngắm cảnh những hồ nước tuyệt đẹp tại nơi đây như: Hồ Hổ, Hồ Hoa Lửa, Hồ Ngọa Hổ, Hồ Trường, Hồ Ngũ Sắc, Hồ Gấu trúc, Hồ Ngũ Hải....(bao gồm xe sinh thái công cộng).</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Khu thắng cảnh Cửu Trại Câu" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/trung-quoc/ho-guong-cuu-trai-cau-du-lich-viet.jpg" /><br />
<em>Khu thắng cảnh Cửu Trại Câu</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Ăn tối, Quý khách có thể xem&nbsp;chương trình ca múa nhạc&nbsp;đặc sắc của người dân tộc Tạng (chi phí tự túc). Đoàn nghỉ đêm tại Cửu Trại Câu.&nbsp;</span></li>
</ul>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 4 |&nbsp;CỬU TRẠI CÂU -&nbsp;ĐÔ GIANG YỂN - (Ăn sáng, trưa, tối)</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Ăn sáng tại khách sạn. Làm thủ tục trả phòng. Đoàn khởi hành tham quan:</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Tham quan và mua sắm tại cửa hàng bạc</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Cửa hàng bách hóa tổng hợp</span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn khởi hành đi Đô Giang Yển, đến Đô Giang Yển đoàn nhận phòng khách sạn. Nghỉ ngơi&nbsp;</span></p>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 5 |&nbsp;ĐÔ GIANG YỂN -&nbsp;THÀNH ĐÔ&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(Ăn sáng, trưa, tối)</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Ăn sáng tại khách sạn. Làm thủ tục trả phòng.</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Đoàn đến với&nbsp;cở sở Gấu Trúc Đô Giang&nbsp;</strong><strong>Yển</strong>&nbsp;– nơi đây được thành lập sau vụ động đất kinh hoàng từng xảy ra tại tỉnh Tứ Xuyên vào năm 2008, từ đó&nbsp;Trung Tâm Nghiên Cứu và Bảo Tồn Gấu Trúc&nbsp;đã cho xây dựng cơ sở để bảo tồn loài động vật hay còn được gọi là Quốc Bảo của Trung Quốc. Cho đến hiện tại nơi đây là trung tâm bảo tồn gấu trúc lớn nhất Trung Quốc và nổi tiếng nhất thế giới&nbsp;(<em>bao gồm xe điện</em>)</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Đoàn đến với cở sở Gấu Trúc Đô Giang Yển" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/trung-quoc/do-giang-yen-du-lich-viet.jpg" /><br />
<em>Đoàn đến với cở sở Gấu Trúc Đô Giang Yển</em></span><br />
&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn tiếp tục khởi hành về Thành Đô, tham quan:</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Phố cổ Cẩm Lý</strong>&nbsp;– một phần của đền Vũ Hầu với kiến trúc được xây dựng theo phong cách triều đại nhà Thanh, nơi đây được coi là thánh địa trong bộ tiểu thuyết nổi tiếng Tam Quốc Diễn Nghĩa. Đây cũng là nơi có những di tích lịch sử tưởng nhớ những người nổi tiếng: Lưu Bị, Gia Cát Lượng.</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Phố cổ Cẩm Lý" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/trung-quoc/pho-co-cam-ly-du-lich-viet.jpg" /><br />
<em>Phố cổ Cẩm Lý</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn thưởng thức&nbsp;<strong>xem show biểu diễn&nbsp; Đổi Mặt</strong>&nbsp;(<em>chi phí tự túc 350RMB</em>)</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn thưởng thức món đặc sản trứ danh&nbsp;<strong>Lẩu Tứ Xuyên.</strong></span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn nghỉ đêm tại&nbsp;<strong>Thành Đô</strong>.</span></li>
</ul>

<p>&nbsp;</p>

<h2><span style="font-family:Tahoma,Geneva,sans-serif">NGÀY 6 |&nbsp;THÀNH ĐÔ - TP.HCM&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(Ăn sáng, trưa, tối trên máy bay)</span></h2>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Sau khi ăn sáng, làm thủ tục trả phòng, Quý khách tham quan:</span></p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Tham quan và mua sắm tại cửa hàng cao su</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif">Đoàn tiếp tục tham quan&nbsp;<strong>Xuân Hi Lộ</strong>&nbsp;con phố thương mại vô cùng nhộn nhịp, có hơn 700 cửa hàng khác nhau trên con đường sầm uất này. Ngoài ra, nơi đây còn là nơi hội tụ nhiều món ăn đường phố nổi tiếng nhất của &nbsp;địa phương.&nbsp;</span></li>
</ul>

<p>&nbsp;</p>

<p><span style="font-family:Tahoma,Geneva,sans-serif"><img alt="Xuân Hi Lộ" src="https://dulichviet.com.vn/images/bandidau/Du-lich-Chau-a/trung-quoc/xuan-hi-lo-du-lich-viet.jpg" /><br />
<em>Xuân Hi Lộ</em></span><br />
&nbsp;</p>

<ul>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Trung tâm thương mại IFS</strong>&nbsp;-&nbsp;<strong>check in Gấu trúc trèo tường</strong>&nbsp;- là tác phẩm kiến trúc mang tính thời đại Loại động vật có nguy cơ tuyệt chủng của toàn thế giới đang được bảo tồn tại&nbsp;Công viên gấu trúc Thành Đô.</span></li>
	<li><span style="font-family:Tahoma,Geneva,sans-serif"><strong>Phố đi bộ văn hóa Dong Jiao Jiyi</strong></span></li>
</ul>

<p><span style="font-family:Tahoma,Geneva,sans-serif">Đến giờ hẹn, HDV đưa đoàn ra sân bay đáp&nbsp;<strong>chuyến bay dự kiến 3U3903&nbsp;</strong><strong>(2</strong><strong>0:35-23:15</strong><strong>) về TPHCM.&nbsp;</strong>Về đến sân bay Tân Sơn Nhất đoàn làm thủ tục nhập cảnh Việt Nam và nhận lại hành lý cá nhân. Kết thúc chương trình, chia tay và hẹn gặp lại Quý khách.<br />
<em>**Trường hợp bất khả kháng như thiên tai, thời tiết, chính trị,... không thể tham quan được các điểm theo chương trình thì sẽ được thay thế bằng các điểm tham quan khác tùy theo tình hình thực tế.</em></span></p>
', 2, 6, N'CD8F7FAA-12DA-4C77-9117-2C49ED8107D9', CAST(0xD2470B00 AS Date), '2025-02-08', 25, N'Ngoài nước', N'Mở bán')
GO
SET IDENTITY_INSERT [dbo].[Image_Tour] ON 

GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (1, N'HaNoi1_1.jpg', N'TOUR001')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (2, N'HaNoi1_2.jpg', N'TOUR001')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (3, N'HaNoi1_3.jpg', N'TOUR001')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (4, N'HaNoi2_1.jpg', N'TOUR002')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (5, N'HaNoi2_2.jpg', N'TOUR002')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (6, N'HaNoi2_3.jpg', N'TOUR002')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (7, N'HaNoi2_4.jpg', N'TOUR002')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (8, N'HaNoi2_5.jpg', N'TOUR002')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (9, N'HaNoi2_6.jpg', N'TOUR002')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (10, N'HaNoi3_1.jpg', N'TOUR003')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (11, N'HaNoi3_2.jpg', N'TOUR003')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (12, N'HaNoi3_3.jpg', N'TOUR003')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (13, N'HaNoi3_4.jpg', N'TOUR003')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (14, N'HaNoi4_1.jpg', N'TOUR004')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (15, N'HaNoi4_2.jpg', N'TOUR004')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (16, N'HaNoi4_3.jpg', N'TOUR004')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (17, N'HaNoi4_4.jpg', N'TOUR004')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (18, N'HaNoi4_5.jpg', N'TOUR004')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (19, N'Hue1_1.jpg', N'TOUR005')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (20, N'Hue1_2.jpg', N'TOUR005')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (21, N'Hue1_3.jpg', N'TOUR005')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (22, N'Hue1_4.jpg', N'TOUR005')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (23, N'Hue1_5.jpg', N'TOUR005')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (24, N'Hue1_6.jpg', N'TOUR005')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (25, N'Hue2_1.jpg', N'TOUR006')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (26, N'Hue2_2.jpg', N'TOUR006')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (27, N'Hue2_3.jpg', N'TOUR006')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (28, N'Hue2_4.jpg', N'TOUR006')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (29, N'Hue2_5.jpg', N'TOUR006')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (30, N'Hue3_1.jpg', N'TOUR007')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (31, N'Hue3_2.jpg', N'TOUR007')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (32, N'Hue3_3.jpg', N'TOUR007')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (33, N'Hue3_4.jpg', N'TOUR007')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (34, N'Hue3_5.jpg', N'TOUR007')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (35, N'QN1_1.jpg', N'TOUR008')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (36, N'QN1_2.jpg', N'TOUR008')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (37, N'QN1_3.jpg', N'TOUR008')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (38, N'QN1_4.jpg', N'TOUR008')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (39, N'QN1_5.jpg', N'TOUR008')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (40, N'QN2_1.jpg', N'TOUR009')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (41, N'QN2_2.jpg', N'TOUR009')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (42, N'QN2_3.jpg', N'TOUR009')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (43, N'QN2_4.jpg', N'TOUR009')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (44, N'QN2_5.jpg', N'TOUR009')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (45, N'TQ1_1.jpg', N'TOUR010')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (46, N'TQ1_2.jpg', N'TOUR010')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (47, N'TQ1_3.jpg', N'TOUR010')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (48, N'TQ1_4.jpg', N'TOUR010')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (49, N'TQ1_5.jpg', N'TOUR010')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (50, N'TQ1_6.jpg', N'TOUR010')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (51, N'TQ1_7.jpg', N'TOUR010')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (52, N'TQ2_1.jpg', N'TOUR011')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (53, N'TQ2_2.jpg', N'TOUR011')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (54, N'TQ2_3.jpg', N'TOUR011')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (55, N'TQ2_4.jpg', N'TOUR011')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (56, N'TQ2_5.jpg', N'TOUR011')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (57, N'TQ2_6.jpg', N'TOUR011')
GO
SET IDENTITY_INSERT [dbo].[Image_Tour] OFF
GO
INSERT [dbo].[NhaHang] ([NhaHang_id], [Name], [TinhThanh_id]) VALUES (N'33B60A3E-CD33-4D60-AA63-C00C68E0C7B3', N'Vietnamese Cuisine Restaurant', 1)
GO
INSERT [dbo].[NhaHang] ([NhaHang_id], [Name], [TinhThanh_id]) VALUES (N'3CACEE0F-24D3-48BF-AA97-1F109EB2A6DD', N'Ngự Uyển Corner', 3)
GO
INSERT [dbo].[NhaHang] ([NhaHang_id], [Name], [TinhThanh_id]) VALUES (N'59B34BB0-28CD-4A3F-B0D9-507FE600EF85', N'Nhà hàng Lao Ma Tau (老码头火锅)', 6)
GO
INSERT [dbo].[NhaHang] ([NhaHang_id], [Name], [TinhThanh_id]) VALUES (N'69E6FA4F-E36E-4151-8C25-2D06226650A6', N'Nhà hàng Tịnh Gia Viên', 3)
GO
INSERT [dbo].[NhaHang] ([NhaHang_id], [Name], [TinhThanh_id]) VALUES (N'6D7CC8FF-E407-4DFD-98EB-46DECBA8CBE2', N'Bayview - Nhà hàng Hạ Long nổi tiếng trên mặt biển', 5)
GO
INSERT [dbo].[NhaHang] ([NhaHang_id], [Name], [TinhThanh_id]) VALUES (N'79AA6DF3-7EAF-4858-8117-710F0B1B613F', N'Home Hanoi Restaurant', 1)
GO
INSERT [dbo].[NhaHang] ([NhaHang_id], [Name], [TinhThanh_id]) VALUES (N'7EB20216-2A06-4080-829E-7420C5A255D7', N'Nhà hàng Đại Dương', 4)
GO
INSERT [dbo].[NhaHang] ([NhaHang_id], [Name], [TinhThanh_id]) VALUES (N'8146E88F-69D3-45D4-BDC5-6A3C40A23D08', N'Nhà hàng Eulji Myun Oak', 8)
GO
INSERT [dbo].[NhaHang] ([NhaHang_id], [Name], [TinhThanh_id]) VALUES (N'849667A8-6D8C-4290-97F0-CFDB49F8B26D', N'Nhà hàng Yulin Chuanchuan Xiang (玉林串串香)', 6)
GO
INSERT [dbo].[NhaHang] ([NhaHang_id], [Name], [TinhThanh_id]) VALUES (N'927B8CE8-8BBD-451D-9E45-7E6D0AD8013D', N'Geylang Huế', 3)
GO
INSERT [dbo].[NhaHang] ([NhaHang_id], [Name], [TinhThanh_id]) VALUES (N'9EC22DD8-79B2-4718-AF04-FF286E3C226C', N'Nhà hàng Song Jook Heon', 8)
GO
INSERT [dbo].[NhaHang] ([NhaHang_id], [Name], [TinhThanh_id]) VALUES (N'A0A5DB76-BAF4-4ECB-BBA0-6F0CFA64CA0C', N'Nihonryori RyuGin Restaurant', 7)
GO
INSERT [dbo].[NhaHang] ([NhaHang_id], [Name], [TinhThanh_id]) VALUES (N'A7A81AAB-D6CD-4B74-87CF-C89688EFD8F0', N'Kamigata Midou Teppanyaki Restaurant', 7)
GO
INSERT [dbo].[NhaHang] ([NhaHang_id], [Name], [TinhThanh_id]) VALUES (N'A97B6177-D57B-47E2-A6E2-5797FE2B39DC', N'Nhà hàng Hồng Hạnh Quảng Ninh', 5)
GO
INSERT [dbo].[NhaHang] ([NhaHang_id], [Name], [TinhThanh_id]) VALUES (N'AE65F089-4BEF-4FD8-9B23-DFBDDA997061', N'Nhà hàng SaBoChi', 4)
GO
INSERT [dbo].[NhaHang] ([NhaHang_id], [Name], [TinhThanh_id]) VALUES (N'B2EE0964-CC4A-4AA3-84D6-DA4C6468AECF', N'Nhà hàng Cánh Buồm Đỏ', 4)
GO
INSERT [dbo].[NhaHang] ([NhaHang_id], [Name], [TinhThanh_id]) VALUES (N'B7B5C56C-B9AC-4AFD-AC8C-61E996FB9292', N'Nhà hàng Gae Hwa Oak', 8)
GO
INSERT [dbo].[NhaHang] ([NhaHang_id], [Name], [TinhThanh_id]) VALUES (N'C4E83F5F-3F03-4BB4-9950-85BEEA0707FA', N'Nhà hàng Cổ Ngư Quảng Ninh', 5)
GO
INSERT [dbo].[NhaHang] ([NhaHang_id], [Name], [TinhThanh_id]) VALUES (N'CF3EEC24-5433-47AD-963E-F1278F030B88', N'Nhà hàng Shu Jiu Xiang (蜀九香火锅)', 6)
GO
INSERT [dbo].[NhaHang] ([NhaHang_id], [Name], [TinhThanh_id]) VALUES (N'D1A45878-E5E4-4844-89D3-4D338200DEC9', N'Nhà Hàng Góc Quê Hà Nội', 1)
GO
INSERT [dbo].[NhaHang] ([NhaHang_id], [Name], [TinhThanh_id]) VALUES (N'E6D38819-87E8-4472-9297-8ED34B4EFE82', N'Wagyu Imari Restaurant', 7)
GO



INSERT INTO [DatTour] ([KhachHang_id], [NgayDat], [Tour_id], [SoNguoi])
VALUES 
('KH001', '2024-11-01', 'TOUR001', 4),
('KH002', '2024-11-05', 'TOUR001', 3),
('KH004', '2024-11-15', 'TOUR002', 5),
('KH005', '2024-11-18', 'TOUR001', 6);

go

INSERT INTO [ThanhToan] ([DatTour_id], [NgayThanhToan], [HinhThuc_id], [TongTien])
VALUES 
(2, '2024-11-02', N'Chuyển khoản ngân hàng', 20000000.00),
(3, '2024-11-06', N'Momo', 21000000.00),
(4, '2024-11-12', N'Chuyển khoản ngân hàng', 65000000.00),
(1, '2024-11-17', N'Chuyển khoản ngân hàng', 40000000.00);

go

INSERT INTO [HuyTour] ([DatTour_id], [NgayHuy], [LyDo], [TrangThai])
VALUES 
(1, GETDATE(), N'Khách hàng bận việc cá nhân', N'Chưa xác nhận'), 
(3, GETDATE(), N'Lý do sức khỏe', N'Chưa xác nhận'), 
(4, GETDATE(), N'Không còn nhu cầu đi tour', N'Chưa xác nhận');

go

INSERT INTO HanhKhach (HoTen, NgaySinh, GioiTinh, DatTour_id, Tour_id)
VALUES 
    (N'Nguyễn Văn An', '1985-06-15', 0, 2, 'TOUR001'),
    (N'Lê Thị Bích', '1990-08-20', 1, 2, 'TOUR001'),
    (N'Trần Văn Cường', '1975-11-05', 0, 2, 'TOUR001'),
    (N'Phạm Thị Dung', '1988-02-13', 1, 2, 'TOUR001'),

    (N'Đỗ Mạnh Hùng', '1992-03-22', 0, 3, 'TOUR001'),
    (N'Vũ Minh Khánh', '1987-12-01', 0, 3, 'TOUR001'),
    (N'Nguyễn Hương Lan', '1995-07-07', 1, 3, 'TOUR001'),

    (N'Bùi Văn Mạnh', '1983-09-10', 0, 4, 'TOUR002'),
    (N'Trương Ngọc Oanh', '1996-01-25', 1, 4, 'TOUR002'),
    (N'Phan Văn Quý', '1989-04-30', 0, 4, 'TOUR002'),
    (N'Hà Thị Mai', '1991-05-14', 1, 4, 'TOUR002'),
    (N'Lê Trung Kiên', '1982-07-21', 0, 4, 'TOUR002'),
    (N'Võ Văn Bình', '1993-03-18', 0, 4, 'TOUR002'),
    (N'Phạm Minh Tuyết', '1997-08-29', 1, 4, 'TOUR002'),
    (N'Đặng Thị Hồng', '1990-10-05', 1, 4, 'TOUR002'),
    (N'Lương Văn Hùng', '1986-04-12', 0, 4, 'TOUR002'),
    (N'Hoàng Ngọc Yến', '1994-09-30', 1, 4, 'TOUR002');
go

EXEC ThemNhanVien @NhanVien_id = 'NV001', @HoTen = N'Lê Nhựt Hùng', @DiaChi = N'123 Đường ABC, Hà Nội', @Email = 'hung.le@example.com', @DienThoai = '0969456712', @GioiTinh = 0, @Password = '123', @VaiTro = N'Quản lý'; 
EXEC ThemNhanVien @NhanVien_id = 'NV002', @HoTen = N'Hoàng Văn Dũng', @DiaChi = N'321 Đường JKL, Hà Nội', @Email = 'dung.hoang@example.com', @DienThoai = '0934567890', @GioiTinh = 0, @Password = '123', @VaiTro = N'Hướng dẫn viên'; 
EXEC ThemNhanVien @NhanVien_id = 'NV003', @HoTen = N'Lê Thị Mai', @DiaChi = N'654 Đường MNO, Đà Nẵng', @Email = 'mai.le@example.com', @DienThoai = '0976543210', @GioiTinh = 1, @Password = '123', @VaiTro = N'Nhân viên'; 
EXEC ThemNhanVien @NhanVien_id = 'NV004', @HoTen = N'Nguyẽn Trí Dũng', @DiaChi = N'24 Đường số 16, TP. HCM', @Email = 'dung.nguyen@example.com', @DienThoai = '0989417295', @GioiTinh = 0, @Password = '123', @VaiTro = N'Nhân viên'; 
EXEC ThemNhanVien @NhanVien_id = 'NV005', @HoTen = N'Lê Thị Trúc Mai', @DiaChi = N'140 Lê Trọng Tấn, TP. HCM', @Email = 'maitruc.le@example.com', @DienThoai = '0989285714', @GioiTinh = 1, @Password = '123', @VaiTro = N'Hướng dẫn viên'; 
EXEC ThemNhanVien @NhanVien_id = 'NV006', @HoTen = N'Nguyễn Bích Trâm', @DiaChi = N'56/12 Cầu Giấy, TP. HCM', @Email = 'tram.bich@example.com', @DienThoai = '0969767512', @GioiTinh = 1, @Password = '123', @VaiTro = N'Hướng dẫn viên'; 
go

INSERT INTO PhanCong_NhanVien VALUES ('TOUR001', 'NV002')
INSERT INTO PhanCong_NhanVien VALUES ('TOUR002', 'NV005')
go
--select*from KhachHang
--select*from DatTour
--select*from PhanCong_NhanVien