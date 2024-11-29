

INSERT INTO TinhThanh Values
(N'Hà Nội'),            
(N'Hồ Chí Minh'),       
(N'Thừa Thiên Huế'),    
(N'Quảng Bình'),         
(N'Quảng Ninh'),        
(N'Trung Quốc'),
(N'Nhật Bản'),
(N'Hàn Quốc');
         

go

INSERT INTO [KhachSan] (KhachSan_id, Name, TinhThanh_id) VALUES 
('KS001', N'Khách Sạn 1', 1),
('KS002', N'Khách Sạn 2', 2),
('KS003', N'Khách Sạn 3', 3);

go

INSERT INTO [NhaHang] (NhaHang_id, Name, TinhThanh_id) VALUES 
('NH001', N'Nhà Hàng 1', 1),
('NH002', N'Nhà Hàng 2', 2),
('NH003', N'Nhà Hàng 3', 3);

go

INSERT INTO [KhachHang] ([KhachHang_id], [Name], [Email], [DienThoai], [DiaChi], [Password], [Gioitinh])
VALUES 
('KH001', N'Nguyễn Văn A', N'nguyenvana@example.com', '0123456789', N'123 Đường ABC, Hà Nội', N'password123', 1),
('KH002', N'Phạm Thị B', N'phamthib@example.com', '0987654321', N'456 Đường XYZ, Đà Nẵng', N'password456', 0),
('KH003', N'Lê Minh C', N'leminhc@example.com', '0912345678', N'789 Đường 123, Sapa', N'password789', 1),
('KH004', N'Hoàng Thị D', N'hoangthid@example.com', '0908765432', N'101 Đường 456, Phú Quốc', N'password101', 0),
('KH005', N'Trần Minh E', N'tranmine@example.com', '0986123456', N'202 Đường 789, Thái Lan', N'password202', 1);

go

INSERT [dbo].[Tour] ([Tour_id], [Name], [Gia], [MoTa], [LichTrinh], [DiemKhoiHanh_id], [DiemDen_id], [KhachSan_id], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [LoaiTour], [TrangThai]) VALUES (N'Tour001', N'Du lịch Đà Nẵng mùa Thu - Hội An - Huế 3N2Đ từ Sài Gòn 2024', CAST(5999000.00 AS Decimal(12, 2)), N'<div class="title" style="-webkit-text-stroke-width:0px; border-bottom:1px solid rgba(0, 0, 0, 0.15); margin-bottom:10px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px 0px 10px; text-align:start"><span style="font-size:20px"><strong><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff">Điểm nhấn hành trình</span></span></span></strong></span></div>

<div class="content" style="-webkit-text-stroke-width:0px; padding:0px; text-align:start">
<table cellspacing="0" style="border-collapse:collapse; border-spacing:0px; border:undefined; box-sizing:border-box; max-width:100%; width:793.325px">
	<tbody>
		<tr>
			<td style="width:118.988px"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Hành trình</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><strong><span style="color:#555555">Đà Nẵng - Cao Nguyên Bà Nà - Phố Cổ Hội An - Cố Đố Huế</span></strong></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Lịch trình</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>3 ngày 2 đêm</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Khởi hành</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>07,14,21,28/09; 05,12,19,26/10; 02,09,16,23,30/11; 07,14,21/12/2024&nbsp;</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Vận chuyển</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Máy bay khứ hồi &amp; Xe du lịch đời mới</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff">&nbsp;</span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff">&nbsp;</span></span></span></span></td>
		</tr>
	</tbody>
</table>

<p style="text-align:justify"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="font-family:Arial"><em>Du lịch Đà Nẵng mùa Thu - Hội An - Huế 3N2Đ từ Sài Gòn 2024. Du lịch Đà Nẵng được mệnh danh là ‘’thành phố đáng đến’’ với dòng sông Hàn thơ mộng với cây cầu Rồng biểu tượng của Thành phố biển&nbsp;<strong><a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">du lịch Đà Nẵng</a>&nbsp;</strong>- nơi mà quý khách có thể cảm nhận được sự pha trộn&nbsp;giữa khí hậu miền Bắc, miền Nam. Ngoài ra&nbsp;<strong>Đà Nẵng</strong>&nbsp;còn sở hữu nhiều danh lam thắng cảnh làm say lòng người như: Bà Nà Hills, Bán Đảo Sơn Trà, Ngũ Hành Sơn,&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">Đà Nẵng</a>, phố cổ Hội An….&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear"><strong>Tour du lịch Đà Nẵng</strong></a>&nbsp;sẽ đưa quý khách khám phá bãi biển được Forbes lựa chọn là bãi biển quyến rũ nhất hành tinh với bờ biển dài,làn nước trong xanh, không khí mát mẻ …Du lịch Hè trên&nbsp;thành phố biển Đà Nẵng đã khiến nơi này khoác lên mình bộ một áo mớ với nắng, với gió, và với cát biển. Tham khảo&nbsp;<a href="https://dulichviet.com.vn/tin-tuc/kinh-nghiem-du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear"><strong>kinh nghiệm du lịch Đà Nẵng</strong></a>&nbsp;và Đặt ngay&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear"><strong>tour Đà Nẵng</strong></a>&nbsp;của&nbsp;<strong>Du Lịch Việt</strong>&nbsp;để khám phá Đà Nẵng có gì mà lại luôn là điểm đến hấp dẫn như vậy trong hành trình tour&nbsp;Du lịch Đà Nẵng mùa Thu - Hội An - Huế 3N2Đ từ Sài Gòn 2024</em></span></span></span></span></span></p>

<p style="text-align:justify"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="font-family:Arial"><em><strong>Tag:</strong>&nbsp;Du lịch mùa Thu<strong>,</strong><a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">Du lịch Đà Nẵng Thu</a>,&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">Du lịch Đà Nẵng Thu 2024</a>,&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">Tour Đà Nẵng Thu</a>,&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">tìm tour Đà Nẵng Thu</a>,&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">tìm tour Đà Nẵng Thu 2024</a>,&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">tour Đà Nẵng Thu&nbsp;giá rẻ</a>,&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">du lịch Đà Nẵng Thu giá rẻ 2024</a>,&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">du lịch Đà Nẵng Thu giá tốt</a>,&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">Tour du lịch Thu Đà Nẵng</a>,&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">Tour Đà Nẵng Thu 2024</a>,&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">Tour du lịch Đà Nẵng Thu 2024</a></em></span></span></span></span></span></p>
</div>
', N'<div class="boxTour" id="flag1" style="margin-bottom:40px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px">
<div class="title" style="border-bottom:1px solid rgba(0, 0, 0, 0.15); margin-bottom:10px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px 0px 10px"><span style="font-size:20px"><strong>Điểm nhấn hành trình</strong></span></div>

<div class="content" style="padding:0px">
<table cellspacing="0" style="border-collapse:collapse; border-spacing:0px; border:undefined; box-sizing:border-box; max-width:100%; width:793.325px">
	<tbody>
		<tr>
			<td style="width:118.988px"><span style="color:#555555"><strong>Hành trình</strong></span></td>
			<td><strong><span style="color:#555555">Đà Nẵng - Cao Nguyên Bà Nà - Phố Cổ Hội An - Cố Đố Huế</span></strong></td>
		</tr>
		<tr>
			<td><span style="color:#555555"><strong>Lịch trình</strong></span></td>
			<td><span style="color:#555555"><strong>3 ngày 2 đêm</strong></span></td>
		</tr>
		<tr>
			<td><span style="color:#555555"><strong>Khởi hành</strong></span></td>
			<td><span style="color:#555555"><strong>07,14,21,28/09; 05,12,19,26/10; 02,09,16,23,30/11; 07,14,21/12/2024&nbsp;</strong></span></td>
		</tr>
		<tr>
			<td><span style="color:#555555"><strong>Vận chuyển</strong></span></td>
			<td><span style="color:#555555"><strong>Máy bay khứ hồi &amp; Xe du lịch đời mới</strong></span></td>
		</tr>
		<tr>
			<td>&nbsp;</td>
			<td>&nbsp;</td>
		</tr>
	</tbody>
</table>

<p style="text-align:justify"><span style="font-family:Arial"><em>Du lịch Đà Nẵng mùa Thu - Hội An - Huế 3N2Đ từ Sài Gòn 2024. Du lịch Đà Nẵng được mệnh danh là ‘’thành phố đáng đến’’ với dòng sông Hàn thơ mộng với cây cầu Rồng biểu tượng của Thành phố biển&nbsp;<strong><a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">du lịch Đà Nẵng</a>&nbsp;</strong>- nơi mà quý khách có thể cảm nhận được sự pha trộn&nbsp;giữa khí hậu miền Bắc, miền Nam. Ngoài ra&nbsp;<strong>Đà Nẵng</strong>&nbsp;còn sở hữu nhiều danh lam thắng cảnh làm say lòng người như: Bà Nà Hills, Bán Đảo Sơn Trà, Ngũ Hành Sơn,&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">Đà Nẵng</a>, phố cổ Hội An….&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear"><strong>Tour du lịch Đà Nẵng</strong></a>&nbsp;sẽ đưa quý khách khám phá bãi biển được Forbes lựa chọn là bãi biển quyến rũ nhất hành tinh với bờ biển dài,làn nước trong xanh, không khí mát mẻ …Du lịch Hè trên&nbsp;thành phố biển Đà Nẵng đã khiến nơi này khoác lên mình bộ một áo mớ với nắng, với gió, và với cát biển. Tham khảo&nbsp;<a href="https://dulichviet.com.vn/tin-tuc/kinh-nghiem-du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear"><strong>kinh nghiệm du lịch Đà Nẵng</strong></a>&nbsp;và Đặt ngay&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear"><strong>tour Đà Nẵng</strong></a>&nbsp;của&nbsp;<strong>Du Lịch Việt</strong>&nbsp;để khám phá Đà Nẵng có gì mà lại luôn là điểm đến hấp dẫn như vậy trong hành trình tour&nbsp;Du lịch Đà Nẵng mùa Thu - Hội An - Huế 3N2Đ từ Sài Gòn 2024</em></span></p>

<p style="text-align:justify"><span style="font-family:Arial"><em><strong>Tag:</strong>&nbsp;Du lịch mùa Thu<strong>,</strong><a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">Du lịch Đà Nẵng Thu</a>,&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">Du lịch Đà Nẵng Thu 2024</a>,&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">Tour Đà Nẵng Thu</a>,&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">tìm tour Đà Nẵng Thu</a>,&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">tìm tour Đà Nẵng Thu 2024</a>,&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">tour Đà Nẵng Thu&nbsp;giá rẻ</a>,&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">du lịch Đà Nẵng Thu giá rẻ 2024</a>,&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">du lịch Đà Nẵng Thu giá tốt</a>,&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">Tour du lịch Thu Đà Nẵng</a>,&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">Tour Đà Nẵng Thu 2024</a>,&nbsp;<a href="https://dulichviet.com.vn/du-lich-da-nang" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">Tour du lịch Đà Nẵng Thu 2024</a></em></span></p>

<div class="linkMore text-right" style="padding:0px; text-align:right"><a href="javascript:void(0)" style="box-sizing:border-box; color:#333333; text-decoration:none; transition:0.3s linear">Xem thêm »</a></div>
</div>
</div>

<div class="boxTour" id="flag2" style="margin-bottom:40px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px">
<div class="title" style="border-bottom:1px solid rgba(0, 0, 0, 0.15); margin-bottom:10px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px 0px 10px"><span style="font-size:20px"><strong>Lịch trình&nbsp;</strong></span>

<div style="border-radius:5px; padding:0px 5px"><span style="font-size:20px"><span style="font-size:12px"><span style="background-color:#008fea"><span style="color:#ffffff">Lịch khởi hành (Cập nhật 23/09/24)</span></span></span></span></div>
</div>

<div class="content" style="padding:0px">
<div class="listDay" style="padding:0px 0px 0px 30px">
<div class="active day" style="margin-bottom:15px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px">
<div class="titDay" style="border-radius:5px; padding:5px 10px">
<h2><strong><span style="background-color:#ed0080"><span style="color:#ffffff"><span style="font-size:18px"><span style="color:#ffffff">NGÀY 1 |</span></span>&nbsp;TP.HCM -ĐÀ NẴNG – BÀ NÀ (Ăn tối) (Ăn trưa tự túc).</span></span></strong></h2>
</div>

<div class="arrow-up" style="border-bottom:10px solid #f3f3f3; border-left:10px solid transparent; border-right:10px solid transparent; margin-bottom:0px; margin-left:15px; margin-right:0px; margin-top:2px; padding:0px; width:0px">&nbsp;</div>

<div class="contDay" style="border-radius:5px; padding:5px 10px">
<div class="desc the-content" style="padding:0px">
<p>&nbsp;</p>

<div style="padding:0px; text-align:justify"><span style="font-size:15px"><span style="background-color:#f3f3f3"><strong>Sáng:&nbsp;</strong>Quý khách có mặt tại ga quốc nội, sân bay Tân Sơn Nhất trước giờ bay ít nhất hai tiếng<strong>&nbsp;.</strong></span></span></div>

<ul style="margin-left:10px; margin-right:0px">
	<li style="text-align:justify"><span style="font-size:15px"><span style="background-color:#f3f3f3">Đại diện công ty&nbsp;<strong>Du Lịch Việt</strong>&nbsp;đón và hỗ trợ Quý Khách làm thủ tục đón chuyến bay đi&nbsp;<strong>Đà Nẵng.</strong></span></span></li>
	<li style="text-align:justify"><span style="font-size:15px"><span style="background-color:#f3f3f3">Đến sân bay<strong>&nbsp;Đà Nẵng</strong>, Hướng dẫn viên đón đoàn<strong>&nbsp;</strong>tham khởi hành đến với&nbsp;<strong>cao nguyên Bà Nà</strong>&nbsp;nơi có khí hậu Châu Âu độc đáo và nổi tiếng với tuyến cáp treo kỷ lục mới của thế giới - Ngắm toàn cảnh thành phố Đà Nẵng từ trên cáp treo&nbsp;<em>(chi phí cáp treo tự túc).</em>&nbsp;</span></span></li>
</ul>

<div style="padding:0px; text-align:center"><span style="font-size:15px"><span style="background-color:#f3f3f3"><img alt="Cao nguyên Bà Nà" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/tham-quan-cao-nguyen-ba-na-hill-du-lich-viet.jpg" style="border:0px; box-sizing:border-box; height:auto !important; max-width:100%; vertical-align:middle" /><br />
<em>Cao nguyên Bà Nà</em><br />
&nbsp;</span></span></div>

<ul style="margin-left:10px; margin-right:0px">
	<li style="text-align:justify"><span style="font-size:15px"><span style="background-color:#f3f3f3">Quý khách tự do tham quan, vui chơi giải trí tại Bà Nà với&nbsp;<strong>Công Viên Fantasy</strong>,&nbsp;<strong>Rạp chiếu phim 3D Mega 360 độ</strong>&nbsp;với công nghệ hiện đại nhất và duy nhất có ở Viêt Nam,&nbsp;<strong>Hai rạp chiếu phim 4D và 5Di</strong>,&nbsp;<strong>Xe Trượt Ống</strong>,&nbsp;<strong>Hầm rượu, Vườn hoa tình yêu</strong>,&nbsp;<strong>Bảo Tàng Sáp, chụp hình tại Cầu Vàng điểm tham quan mới siêu hot tại Bà Nà.</strong></span></span></li>
</ul>

<div style="padding:0px; text-align:center"><span style="font-size:15px"><span style="background-color:#f3f3f3"><strong><img alt="Fantasy" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/cong-vien-Fantasy-da-nang-du-lich-viet(1).jpg" style="border:0px; box-sizing:border-box; height:389px; max-width:100%; vertical-align:middle; width:700px" /></strong><br />
&nbsp;</span></span></div>

<div style="padding:0px; text-align:justify"><span style="font-size:15px"><span style="background-color:#f3f3f3"><strong>Trưa:&nbsp;</strong>Quý khách vui lòng tự túc bữa ăn trưa.</span></span></div>

<ul style="margin-left:10px; margin-right:0px">
	<li style="text-align:justify"><span style="font-size:15px"><span style="background-color:#f3f3f3">Du khách có thể tìm thấy những biểu tượng mang tính tâm linh như chùa chiền, đền đài hay tượng các đức Phật. Chắc hẳn sẽ là điểm dừng chân cho những ai mong cầu bình an và sức khỏe cho gia đình:&nbsp;<strong>Chùa Linh Ứng, Đền Lĩnh Chúa Linh Từ, Tháp Linh Phong Tự, Tượng Thích Ca Mâu Ni, Lầu Chuông, Nhà Bia, Miếu Bà, Trú Vũ Trà Quán.</strong></span></span></li>
</ul>

<div style="padding:0px; text-align:justify"><span style="font-size:15px"><span style="background-color:#f3f3f3">&nbsp;</span></span></div>

<div style="padding:0px; text-align:center"><span style="font-size:15px"><span style="background-color:#f3f3f3"><strong><img alt="Chùa Linh Ứng" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/tham-quan-chua-linh-ung-du-lich-viet.jpg" style="border:0px; box-sizing:border-box; height:389px; max-width:100%; vertical-align:middle; width:700px" /></strong></span></span></div>

<div style="padding:0px; text-align:justify"><span style="font-size:15px"><span style="background-color:#f3f3f3"><strong>Chiều:</strong>&nbsp;Dùng cơm chiều tại nhà hàng.Nghỉ đêm tại Đà Nẵng.<br />
<strong>Tối: Qúy khách tự do tham quan khám phá thành phố Đà Nẵng về đêm như cầu Sông Hàn, Cầu Rồng…</strong></span></span></div>

<p>&nbsp;</p>
</div>
</div>
</div>

<div class="active day" style="margin-bottom:15px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px">
<div class="titDay" style="border-radius:5px; padding:5px 10px">
<h2><strong><span style="background-color:#ed0080"><span style="color:#ffffff"><span style="font-size:18px"><span style="color:#ffffff">NGÀY 2 |</span></span>&nbsp;NGŨ HÀNH SƠN – HỘI AN (Ăn sáng, trưa, chiều ).</span></span></strong></h2>
</div>

<div class="arrow-up" style="border-bottom:10px solid #f3f3f3; border-left:10px solid transparent; border-right:10px solid transparent; margin-bottom:0px; margin-left:15px; margin-right:0px; margin-top:2px; padding:0px; width:0px">&nbsp;</div>

<div class="contDay" style="border-radius:5px; padding:5px 10px">
<div class="desc the-content" style="padding:0px">
<p>&nbsp;</p>

<div style="padding:0px; text-align:justify"><span style="font-size:15px"><span style="background-color:#f3f3f3"><strong>Sáng:</strong>&nbsp;Dùng buffet sáng tại khách sạn.</span></span></div>

<ul style="margin-left:10px; margin-right:0px">
	<li style="text-align:justify"><span style="font-size:15px"><span style="background-color:#f3f3f3">Tham quan&nbsp;<strong>Ngũ Hành Sơn</strong>&nbsp;- đỉnh&nbsp;<strong>Kim Sơn</strong>, với dáng núi trông như một quả chuông úp sấp. Đoàn ghé thăm&nbsp;<strong>Chùa Quan Thế Âm</strong>,&nbsp;<strong>động Quan Âm</strong>,&nbsp;<strong>Bảo tàng văn hóa Phật Giáo</strong>… ghé thăm và mua sắm quà lưu niệm tại<strong>&nbsp;làng nghề điêu khắc đá Non Nước.</strong></span></span></li>
</ul>

<div style="padding:0px; text-align:center"><span style="font-size:15px"><span style="background-color:#f3f3f3"><strong><img alt="Ngũ Hành Sơn" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/tour-da-nang-tham-quan-ngu-hanh-son-du-lich-viet.jpg" style="border:0px; box-sizing:border-box; height:389px; max-width:100%; vertical-align:middle; width:700px" /></strong><br />
Ngũ Hành Sơn</span></span></div>

<div style="padding:0px; text-align:justify"><span style="font-size:15px"><span style="background-color:#f3f3f3"><strong>Trưa:&nbsp;</strong>Dùng bữa trưa tại nhà hàng.</span></span></div>

<ul style="margin-left:10px; margin-right:0px">
	<li style="text-align:justify"><span style="font-size:15px"><span style="background-color:#f3f3f3">Tham quan&nbsp;<strong>Phố Cổ Hội An</strong>&nbsp;-&nbsp;<strong><em>di sản văn hoá thế giới</em></strong><em>với&nbsp;</em><strong>Chùa Cầu Nhật Bản, Hội Quán Phúc Kiến, Nhà Cổ Phùng Hưng&nbsp;</strong>…</span></span></li>
</ul>

<div style="padding:0px; text-align:center"><span style="font-size:15px"><span style="background-color:#f3f3f3"><img alt="Phố cổ Hội An" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/pho-co-hoi-an-du-lich-mua-thu-du-lich-viet.jpg" style="border:0px; box-sizing:border-box; height:389px; max-width:100%; vertical-align:middle; width:700px" /><br />
Phố cổ Hội An</span></span></div>

<div style="padding:0px; text-align:justify"><span style="font-size:15px"><span style="background-color:#f3f3f3"><strong>Chiều:&nbsp;</strong>Dùng cơm chiều tại nhà hàng.Nghỉ đêm tại&nbsp;<strong>Đà Nẵng</strong>.</span></span></div>

<p>&nbsp;</p>
</div>
</div>
</div>

<div class="active day" style="margin-bottom:15px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px">
<div class="titDay" style="border-radius:5px; padding:5px 10px">
<h2><strong><span style="background-color:#ed0080"><span style="color:#ffffff"><span style="font-size:18px"><span style="color:#ffffff">NGÀY 3 |</span></span>&nbsp;ĐÀ NẴNG – HUẾ - TP.HCM (Ăn sáng, trưa).</span></span></strong></h2>
</div>

<div class="arrow-up" style="border-bottom:10px solid #f3f3f3; border-left:10px solid transparent; border-right:10px solid transparent; margin-bottom:0px; margin-left:15px; margin-right:0px; margin-top:2px; padding:0px; width:0px">&nbsp;</div>

<div class="contDay" style="border-radius:5px; padding:5px 10px">
<div class="desc the-content" style="padding:0px">
<p style="text-align:start">&nbsp;</p>

<div style="-webkit-text-stroke-width:0px; padding:0px; text-align:justify"><span style="font-size:15px"><span style="background-color:#f3f3f3"><span style="font-size:15px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#f3f3f3"><strong>Sáng:&nbsp;</strong>Dùng buffet sáng tại khách sạn.</span></span></span></span></span></span></div>

<ul style="margin-left:10px; margin-right:0px">
	<li style="text-align:justify"><span style="font-size:15px"><span style="background-color:#f3f3f3">Tham quan một vòng&nbsp;<strong>bán đảo Sơn Trà</strong>…viếng Linh Ứng Tự và thưởng ngoạn vẻ đẹp của biển Mỹ Khê (được đánh giá là một trong những bãi biển quyến rũ nhất hành tinh).</span></span></li>
</ul>

<div style="-webkit-text-stroke-width:0px; padding:0px; text-align:center"><span style="font-size:15px"><span style="background-color:#f3f3f3"><span style="font-size:15px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#f3f3f3"><img alt="Bán đảo Sơn Trà" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Da-Nang/tua-da-nang-tham-quan-ban-dao-son-tra-du-lich-viet.jpg" style="border:0px; box-sizing:border-box; height:389px; max-width:100%; vertical-align:middle; width:700px" /><br />
Bán đảo Sơn Trà<br />
&nbsp;</span></span></span></span></span></span></div>

<ul style="margin-left:10px; margin-right:0px">
	<li style="text-align:justify"><span style="font-size:15px"><span style="background-color:#f3f3f3">Đoàn khởi hành đến&nbsp;<strong>Huế&nbsp;</strong>qua đường hầm Hải Vân-hầm đường bộ dài nhất Đông Nam Á.</span></span></li>
</ul>

<div style="-webkit-text-stroke-width:0px; padding:0px; text-align:justify"><span style="font-size:15px"><span style="background-color:#f3f3f3"><span style="font-size:15px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#f3f3f3"><strong>Trưa:</strong>&nbsp; &nbsp;Dùng cơm trưa.</span></span></span></span></span></span></div>

<ul style="margin-left:10px; margin-right:0px">
	<li style="text-align:justify"><span style="font-size:15px"><span style="background-color:#f3f3f3">Tham quan&nbsp;<strong>Huế</strong>&nbsp;với&nbsp;<strong>Đại Nội</strong>&nbsp;– Hoàng Thành của 13 vị vua triều Nguyễn, nơi có hơn 100 công trình kiến trúc đẹp: Ngọ Môn, Điện Thái Hòa, Tử Cấm Thành, Thế Miếu, Hiển Lâm Các, Cửu Đỉnh,</span></span></li>
	<li style="text-align:justify"><span style="font-size:15px"><span style="background-color:#f3f3f3">Tham quan&nbsp;<strong>chùa Thiên Mụ</strong>&nbsp;–&nbsp;&nbsp;<em>ngôi chùa cổ nhất Cố đô Huế.</em></span></span></li>
</ul>

<div style="-webkit-text-stroke-width:0px; padding:0px; text-align:center"><span style="font-size:15px"><span style="background-color:#f3f3f3"><span style="font-size:15px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#f3f3f3"><em><img alt="Chùa Thiên Mụ" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Hue/chua-thien-mu-mua-thu-du-lich-viet.jpg" style="border:0px; box-sizing:border-box; height:389px; max-width:100%; vertical-align:middle; width:700px" /></em><br />
Chùa Thiên Mụ</span></span></span></span></span></span></div>

<ul style="margin-left:10px; margin-right:0px">
	<li style="text-align:justify"><span style="font-size:15px"><span style="background-color:#f3f3f3">Điểm đến này không chỉ thu hút du khách đến để ngắm cảnh đẹp mà còn là nơi linh thiêng để tham quan, tìm hiểu về lịch sử, văn hóa và tâm linh của người dân Việt Nam.</span></span></li>
	<li style="text-align:justify"><span style="font-size:15px"><span style="background-color:#f3f3f3">Hướng dẫn viên tiễn đoàn ra sân bay Huế đón chuyến bay về&nbsp; TP.HCM.</span></span></li>
</ul>

<div style="-webkit-text-stroke-width:0px; padding:0px; text-align:center"><span style="font-size:15px"><span style="background-color:#f3f3f3"><span style="font-size:15px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#f3f3f3">Kết thúc chương trình tham quan, chia tay và hẹn gặp lại Quý khách.</span></span></span></span></span></span></div>
</div>
</div>
</div>
</div>
</div>
</div>
', 2, 3, N'KS002', CAST(0xC0470B00 AS Date), CAST(0xC5470B00 AS Date), 25, N'Trong nước', N'Mở bán')
GO
INSERT [dbo].[Tour] ([Tour_id], [Name], [Gia], [MoTa], [LichTrinh], [DiemKhoiHanh_id], [DiemDen_id], [KhachSan_id], [NgayKhoiHanh], [NgayKetThuc], [SoLuongCon], [LoaiTour], [TrangThai]) VALUES (N'Tour002', N'Du lịch miền Tây mùa Thu - Tiền Giang - Châu Đốc - Cần Thơ từ Sài Gòn 2024', CAST(3099000.00 AS Decimal(12, 2)), N'<div class="title" style="-webkit-text-stroke-width:0px; border-bottom:1px solid rgba(0, 0, 0, 0.15); margin-bottom:10px; margin-left:0px; margin-right:0px; margin-top:0px; padding:0px 0px 10px; text-align:start"><span style="font-size:20px"><strong><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff">Điểm nhấn hành trình</span></span></span></strong></span></div>

<div class="content" style="-webkit-text-stroke-width:0px; padding:0px; text-align:start">
<table cellspacing="0" style="border-collapse:collapse; border-spacing:0px; border:undefined; box-sizing:border-box; max-width:100%; width:793.325px">
	<tbody>
		<tr>
			<td style="width:118.988px"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Hành trình</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Tiền Giang - Cần Thơ - Châu Đốc - Rừng Tràm Trà Sư</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Lịch trình</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>3 ngày 2 đêm</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Khởi hành</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Thứ 2,5,7 hàng tuần</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Vận chuyển</strong></span></span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="color:#555555"><strong>Xe du lịch đời mới</strong></span></span></span></span></span></td>
		</tr>
		<tr>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff">&nbsp;</span></span></span></span></td>
			<td><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff">&nbsp;</span></span></span></span></td>
		</tr>
	</tbody>
</table>

<p style="text-align:justify"><span style="font-size:14px"><span style="color:#333333"><span style="font-family:Muli,sans-serif"><span style="background-color:#ffffff"><span style="font-family:Arial"><em>Du lịch miền Tây - Nằm ở miền Nam về hướng Tây của đất nước hình chữ "S". Mang trong mình vẻ đẹp khung cảnh sông nước hữu tình và những nét đẹp văn hóa được kế thừa từ ngàn xưa, Miền Tây được quan tâm và phát triển nền dịch vụ du lịch sinh thái nghỉ dưỡng. Tham gia các tour du lịch Miền Tây tại công ty Du Lịch Việt sẽ đưa du khách đến với những cánh đồng lúa thẳng cánh cò bay, những dòng kênh xanh mát, vườn cây trĩu quả cùng những người dân chân chất thật thà,... Những tour Miền tây sẽ hứa hẹn sẽ để lại cho du khách những kỷ niệm khó quên trong kỳ nghỉ của mình.</em></span></span></span></span></span></p>
</div>
', N'<p>Lịch trình&nbsp;</p>

<p>Lịch khởi hành (Cập nhật 03/11/24)</p>

<h2>NGÀY 1 |&nbsp;TP. HCM – CHÂU ĐỐC (Ăn sáng, trưa, chiều)</h2>

<p>&nbsp;</p>

<p>Sáng Xe và Hướng Dẫn Viên Công Ty Du Lịch Việt&nbsp; đón Quý khách tại điểm hẹn.</p>

<ul>
	<li>Khởi hành đi&nbsp;<strong>Châu Đốc (An Giang).&nbsp;</strong>Quý khách dừng chân dùng bữa sáng tại&nbsp;<strong>Trung L</strong><strong>ương</strong>, &nbsp;&nbsp;&nbsp; Đoàn tiếp tục hành trình đến&nbsp;<strong>Châu Đốc</strong>.</li>
</ul>

<p><strong>Trưa</strong>&nbsp;&nbsp; Dùng cơm trưa.&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>

<ul>
	<li>Đoàn di chuyển tham quan&nbsp;<strong>Rừng Tràm Trà Sư</strong>&nbsp;– là khu rừng ngập nước tiêu biểu cho vùng Tây sông Hậu, là nơi sinh sống nhiều loài thực vật và chim cò quý hiếm được ghi vào sách đỏ Việt Nam. Nghe thuyết minh và xem tư liệu về Rừng Tràm.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="Rừng tràm Trà Sư" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Chau-Doc/du-lich-chau-doc-rung-tram-tra-su-du-lich-viet.jpg" /><br />
<em>Rừng tràm Trà Sư</em><br />
&nbsp;</p>

<ul>
	<li>Đi&nbsp;<strong>Tắc Ráng</strong>&nbsp;len lỏi theo những con rạch qua&nbsp;<strong>Lung Sen</strong>&nbsp;vào rừng tràm, chèo xuồng ba lá qua các con rạch ngắm cánh rừng biếc xanh bạt ngàn mênh mông, nở đầy những bông hoa tràm trắng tinh khiết trong nắng sớm, hương tràm thoảng đưa nhẹ nhàng khiến tinh thần trở nên thư thái. Lắng nghe tiếng từng nhịp chèo khua trên dòng nước, tiếng cá vẫy đuôi tạo nên những âm thanh là lạ, tiếng chim hót véo von trên ngọn tràm – những âm thanh rất đặc trưng của miền Tây vào mùa nước nổi.</li>
	<li>Đoàn khởi hành tham quan và hành hương tại&nbsp;<strong>Núi Cấm</strong>&nbsp;hay còn gọi là&nbsp;<strong>Thiên Cẩm Sơn</strong>&nbsp;có độ cao 705 m so với mặt nước biển, là ngọn núi cao nhất trong Thất Sơn.</li>
</ul>

<p>&nbsp;</p>

<p><img alt="Núi Cấm" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Chau-Doc/thien-cam-son-du-lich-tet-am-lich-du-lich-viet.jpg" /><br />
<em>Núi Cấm</em><br />
&nbsp;</p>

<ul>
	<li>Núi có dáng vẻ hùng vĩ, khí hậu mát mẻ, phong cảnh đẹp và cây cối luôn xanh tươi. Trên núi có các danh lam và danh thắng như:&nbsp;<strong>Chùa Vạn Linh, chùa Phật Lớn, tượng Phật Di Lặc, hồ Thủy Liêm.</strong></li>
</ul>

<p><strong>Chiều</strong>&nbsp; Dùng cơm chiều. Nghỉ đêm khách sạn tại&nbsp;<strong>Châu Đốc.</strong></p>

<p>&nbsp;</p>

<h2>NGÀY 2 |&nbsp;CHÂU ĐỐC – CẦN THƠ (Ăn sáng, trưa, chiều)</h2>

<p>&nbsp;</p>

<p><strong>Sáng</strong>&nbsp;Dùng bữa sáng</p>

<ul>
	<li>Viếng&nbsp;<strong>Tây An Cổ Tự&nbsp;</strong>(Chùa Tây An Núi Sam) - ngôi chùa có kiến trúc kết hợp phong cách nghệ thuật Ấn Độ và kiến trúc cổ dân tộc đầu tiên tại Việt Nam.</li>
	<li>Viếng<strong>&nbsp;Lăng Thoại Ngọc Hầu</strong>,<strong>&nbsp;</strong>đền thờ ông Thoại Ngọc Hầu, mộ ông cùng hai phu nhân được xây vào thập niên 30 của thế kỷ 20.</li>
</ul>

<p><img alt="Lăng Thoại Ngọc Hầu" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Chau-Doc/lang-thoai-ngoc-hau-du-lich-viet.jpg" /><br />
<em>Lăng Thoại Ngọc Hầu</em><br />
&nbsp;</p>

<ul>
	<li>Hành hương tại<strong>&nbsp;Miếu Bà Chúa Xứ Núi Sam,&nbsp;</strong>một di tích lịch sử, kiến trúc và tâm linh quan trọng của tỉnh An Giang. Ðược lập vào năm 1820, kiến trúc theo kiểu chữ "quốc".</li>
</ul>

<p><img alt="Miếu Bà chúa xứ Núi Sam" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Chau-Doc/mieu-ba-chua-xu-chau-doc-du-lich-viet.jpg" /><br />
<em>Miếu Bà chúa xứ Núi Sam</em></p>

<p><strong>Trưa&nbsp;</strong>Dùng cơm trưa.</p>

<ul>
	<li>Đoàn khởi hành đến&nbsp;<strong>Cần Thơ</strong>, viếng thăm&nbsp;<strong>Thiền Viện Trúc Lâm Phương Nam</strong>&nbsp;được xem là một trong những công trình nghệ thuật độc đáo của đất Tây Đô - ngôi chùa rộng nhất khu vực Đồng bằng sông Cửu Long, được xây dựng trên diện tích gần 4 ha, với kết cấu lợp ngói, khung cột gỗ lim, chánh điện rộng cùng nhà tổ, nhiều tượng Phật được làm bằng gỗ Du Sam.</li>
</ul>

<p><img alt="Thiền viện trúc lâm Phương Nam" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Can-Tho/thien-vien-truc-lam-phuong-nam-viet-media-travel.jpg" /><br />
<em>Thiền viện trúc lâm Phương Nam</em><br />
&nbsp;</p>

<p><strong>Chiều</strong>&nbsp; Dùng cơm chiều.</p>

<ul>
	<li>Nghỉ đêm khách sạn tại&nbsp;<strong>Cần Thơ.</strong></li>
</ul>

<p>&nbsp;</p>

<h2>NGÀY 3 |&nbsp;CẦN THƠ – TIỀN GIANG – TP. HCM (Ăn sáng, trưa)</h2>

<p>&nbsp;</p>

<p>Sáng Du khách đến bến&nbsp;<strong>Ninh Kiều</strong>: Thuyền đưa Quý khách tham quan&nbsp;<strong>chợ nổi Cái Răng -&nbsp;</strong>một trong những chợ trên sông nổi tiếng ở miền Tây Nam Bộ với cảnh nhộn nhịp buôn bán trên sông, một nét văn hóa rất đặc sắc ở vùng đồng bằng sông nước Cửu Long.<br />
&nbsp;</p>

<p><img alt="Chợ nổi Cái Răng" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Can-Tho/du-lich-can-tho-cho-noi-cai-rang-du-lich-viet.jpg" /><br />
<em>Chợ nổi Cái Răng</em><br />
&nbsp;</p>

<ul>
	<li>Về lại khách sạn, dùng bữa sáng. Đoàn khởi hành đến Tiền Giang.</li>
	<li>Đến&nbsp;<strong>Mỹ Tho</strong>, tham quan&nbsp;<strong>chùa V</strong><strong>ĩ</strong><strong>nh Tràng</strong>&nbsp;với lối kiến trúc kết hợp Châu Âu và Châu Á.</li>
</ul>

<p><img alt="Chùa Vĩnh Tràng" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Can-Tho/chua-vinh-trang-du-lich-viet.jpg" /><br />
<em>Chùa Vĩnh Tràng</em><br />
&nbsp;</p>

<ul>
	<li>Đoàn xuống&nbsp;<strong>b</strong><strong>ế</strong><strong>n đò 30/04</strong>, Quý khách xuống thuyền thưởng ngoạn cảnh sông nước miền Tây Nam Bộ với&nbsp;<strong>4 cù lao</strong>:&nbsp;<strong>Long</strong>,&nbsp;<strong>Lân</strong>&nbsp;,&nbsp;<strong>Quy</strong>,&nbsp;<strong>Phụng</strong>, thưởng thức hương vị ngọt ngào của trái dừa xiêm.</li>
</ul>

<p><img alt="4 cù lao: Long, Lân , Quy, Phụng" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Can-Tho/kham-pha-tu-linh-long-lan-quy-phung-du-lich-viet.jpg" /><br />
<br />
&nbsp;</p>

<ul>
	<li>Thuyền đưa đoàn đi tham quan&nbsp;<strong>cù lao Thới Sơn</strong>, đi bộ trên đường làng, tham quan trại nuôi ong mật, uống trà mật ong, thưởng thức các loại mứt đặc sản. Tham quan vườn cây ăn trái, thưởng thức các loại trái cây tại vườn, nghe nhạc tài tử Nam Bộ. Đi xuồng chèo trong rạch dừa nước thiên nhiên.</li>
</ul>

<p><img alt="Cù lao Thới Sơn" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Can-Tho/cu-lao-thoi-son-du-lich-viet.jpg" /><br />
<em>Cù lao Thới Sơn</em><br />
&nbsp;</p>

<ul>
	<li>Thuyền lớn đưa khách sang Bến Tre tham quan lò kẹo dừa nổi tiếng Bến Tre.</li>
	<li>Tham quan&nbsp;<strong>Cồn Phụng ( Di tích Ông Đạo Dừa)</strong>.&nbsp;&nbsp;&nbsp;</li>
</ul>

<p>&nbsp;</p>

<p><img alt="Cồn Phụng ( Di tich ông Đạo Dừa)" src="https://dulichviet.com.vn/images/bandidau/NOI-DIA/Can-Tho/di-tich-dao-dua-con-phung-du-lich-viet(1).jpg" /><br />
<em>Cồn Phụng ( Di tich ông Đạo Dừa)</em><br />
&nbsp;</p>

<p><strong>Trưa&nbsp;</strong>Dùng cơm trưa.</p>

<ul>
	<li>Khởi hành về TP.HCM, kết thúc hành trình tour, Chào tạm biệt và hẹn gặp lại.</li>
</ul>
', 2, 19, N'KS003', CAST(0x8F470B00 AS Date), CAST(0x93470B00 AS Date), 25, N'Ngoài nước', N'Mở bán')

go

set IDENTITY_INSERT [Image_Tour] on
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (1, N'DL07.jpg', N'Tour001')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (2, N'DN01.jpg', N'Tour001')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (3, N'DN02.jpg', N'Tour001')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (4, N'DN03.jpg', N'Tour001')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (5, N'DN04.jpg', N'Tour001')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (6, N'DN05.jpg', N'Tour001')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (7, N'DN06.jpg', N'Tour001')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (8, N'DN07.jpg', N'Tour001')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (9, N'DN08.jpg', N'Tour001')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (10, N'DN09.jpg', N'Tour001')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (11, N'NT_DL1.jpg', N'Tour002')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (12, N'NT_DL2.jpg', N'Tour002')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (13, N'NT_DL3.jpg', N'Tour002')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (14, N'NT_DL4.jpg', N'Tour002')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (15, N'NT_DL5.jpg', N'Tour002')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (16, N'NT_DL6.jpg', N'Tour002')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (17, N'NT_DL7.jpg', N'Tour002')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (18, N'NT_DL8.jpg', N'Tour002')
GO
INSERT [dbo].[Image_Tour] ([Img_id], [Name], [Tour_id]) VALUES (19, N'NT01.jpg', N'Tour002')
set IDENTITY_INSERT [Image_Tour] off
go


INSERT INTO [DatTour] ([GhiChu], [KhachHang_id], [NgayDat], [Tour_id], [SoNguoi])
VALUES 
(N'Đặt tour cho gia đình', 'KH001', '2024-11-01', 'Tour001', 4),
(N'Đặt tour cho nhóm bạn', 'KH002', '2024-11-05', 'Tour001', 3),
(N'Đặt tour cho gia đình', 'KH004', '2024-11-15', 'Tour002', 5),
(N'Đặt tour cho nhóm bạn', 'KH005', '2024-11-18', 'Tour001', 6);

go

INSERT INTO [ThanhToan] ([DatTour_id], [NgayThanhToan], [HinhThuc_id], [TongTien])
VALUES 
(2, '2024-11-02', N'Chuyển khoản ngân hàng', 20000000.00),
(3, '2024-11-06', N'Momo', 21000000.00),
(4, '2024-11-12', N'Chuyển khoản ngân hàng', 65000000.00),
(1, '2024-11-17', N'Chuyển khoản ngân hàng', 40000000.00)

go

INSERT INTO HanhKhach (HoTen, NgaySinh, GioiTinh, DatTour_id, Tour_id)
VALUES 
    (N'Nguyễn Văn An', '1985-06-15', 0, 2, 'Tour001'),
    (N'Lê Thị Bích', '1990-08-20', 1, 2, 'Tour001'),
    (N'Trần Văn Cường', '1975-11-05', 0, 2, 'Tour001'),
    (N'Phạm Thị Dung', '1988-02-13', 1, 2, 'Tour001'),

    (N'Đỗ Mạnh Hùng', '1992-03-22', 0, 3, 'Tour001'),
    (N'Vũ Minh Khánh', '1987-12-01', 0, 3, 'Tour001'),
    (N'Nguyễn Hương Lan', '1995-07-07', 1, 3, 'Tour001'),

    (N'Bùi Văn Mạnh', '1983-09-10', 0, 4, 'Tour002'),
    (N'Trương Ngọc Oanh', '1996-01-25', 1, 4, 'Tour002'),
    (N'Phan Văn Quý', '1989-04-30', 0, 4, 'Tour002'),
    (N'Hà Thị Mai', '1991-05-14', 1, 4, 'Tour002'),
    (N'Lê Trung Kiên', '1982-07-21', 0, 4, 'Tour002'),
    (N'Võ Văn Bình', '1993-03-18', 0, 4, 'Tour002'),
    (N'Phạm Minh Tuyết', '1997-08-29', 1, 4, 'Tour002'),
    (N'Đặng Thị Hồng', '1990-10-05', 1, 4, 'Tour002'),
    (N'Lương Văn Hùng', '1986-04-12', 0, 4, 'Tour002'),
    (N'Hoàng Ngọc Yến', '1994-09-30', 1, 4, 'Tour002');
go


INSERT INTO [NhanVien] ([NhanVien_id], [HoTen], [Email], [DiaChi], [DienThoai], [GioiTinh], [Password], [VaiTro])
VALUES 
('NV001', N'Lê Nhựt Hùng', 'hung.le@example.com', N'123 Đường ABC, Hà Nội', '0123456789', 0, 'password1', N'Quản lý'),
('NV002', N'Hoàng Văn Dũng', 'dung.hoang@example.com', N'321 Đường JKL, Hà Nội', '0934567890', 0, 'password4', N'Hướng dẫn viên'),
('NV003', N'Lê Thị Mai', 'mai.le@example.com', N'654 Đường MNO, Đà Nẵng', '0976543210', 1, 'password5', N'Nhân viên'),
('NV004', N'Lê Thị Trúc Mai', 'maitruc.le@example.com', N'654 Đường MNO, Đà Nẵng', '0971143210', 1, 'password2', N'Hướng dẫn viên');
go

INSERT INTO [PhanCong_NhanVien] ([Tour_id], [NhanVien_id])
VALUES 
('Tour001', 'NV002'),
('Tour002', 'NV002')
go