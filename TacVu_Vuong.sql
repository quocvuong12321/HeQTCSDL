

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


--Function Trả về số lượng chỗ còn lại (SoLuongCon) của tour dựa trên Tour_id.
create function SoLuongCon (@tourid varchar(36))
returns int
as
begin
	return (select SoLuongCon from Tour where Tour_id  = @tourid)
end

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
    @LoaiTour_id int = NULL,
    @TrangThai nvarchar(255) = NUL
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
			LoaiTour_id = COALESCE(@LoaiTour_id, LoaiTour_id),
			KhuyenMai_id = COALESCE(@KhuyenMai_id, KhuyenMai_id),
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




