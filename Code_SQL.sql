--sp check dang nhap
create proc sp_loginAdmin
@hoten NVARCHAR(50),
@matkhau NVARCHAR(30)
as
select * FROM dbo.users WHERE hoten=@hoten AND matkhau=@matkhau

--sp load danh sach user
create proc sp_LoadDanhSachUser
as
SELECT * FROM dbo.users



--sp lay danh sach bai dang tru noi dung
alter proc sp_getDSBaiDangKhongNoiDung
AS
begin
SELECT MaBaiDang,tieude,ngaydang,trangthai,dbo.users.hoten AS [hoten],dbo.chude.tenchude AS[tenchude]
FROM dbo.baidang,dbo.chude,dbo.users
WHERE dbo.chude.MaChuDe=dbo.baidang.MaChuDe AND dbo.users.MaUser = dbo.baidang.MaUser
end


--Sp lay danh sach chu de - 
create proc sp_layDSChuDe
as
SELECT * FROM dbo.chude

--sp dang bai viet
alter proc sp_TaoBaiDangMoi
@tieude nvarchar(50),
@noidung NTEXT,
@MaUser INT,
@MaChuDe INT
as
BEGIN
	DECLARE @MaBaiDang int 
	SELECT @MaBaiDang =( SELECT COUNT(MaBaiDang) FROM dbo.baidang)
	SELECT @MaBaiDang = @MaBaiDang + 1
	INSERT INTO dbo.baidang
	        ( MaBaiDang ,
	          tieude ,
	          noidung ,
	          ngaydang ,
	          trangthai ,
	          MaUser ,
	          MaChuDe
	        )
	VALUES  ( @MaBaiDang , -- MaBaiDang - int
	          @tieude , -- tieude - nvarchar(50)
	          @noidung , -- noidung - ntext
	          GETDATE() , -- ngaydang - datetime
	          N'Chờ duyệt' , -- trangthai - nvarchar(30)
	          @MaUser , -- MaUser - int
	          @MaChuDe  -- MaChuDe - int
	        )
END

SELECT * FROM dbo.baidang

--sp load noi dung Chi tiet bai dang theo ID
alter proc sp_chiTietBaiDangTheoID
@MaBaiDang int
as
SELECT noidung,MaBaiDang,tieude,trangthai,hoten,quyen,tenchude,ngaydang
FROM dbo.baidang,dbo.chude,dbo.users
WHERE MaBaiDang=@MaBaiDang AND dbo.baidang.MaUser=dbo.users.MaUser AND dbo.baidang.MaChuDe = dbo.chude.MaChuDe


--sp duyet bai dang
create proc sp_DuyetBaiDang
@MaBaiDang int
as
UPDATE dbo.baidang SET trangthai=N'Đã Duyệt' WHERE MaBaiDang=@MaBaiDang


--sp không duyệt bài đăng --> ẩn
alter proc sp_KhongDuyetBaiDang
@MaBaiDang int
as
UPDATE dbo.baidang SET trangthai=N'Không Chấp nhận' WHERE MaBaiDang=@MaBaiDang

-----------------------------------------------------------------------------
----------------- Phần thống kê-----------------------------------
--sp Tổng số thành viên trong group
CREATE PROC sp_DemSoThanhVien
as
SELECT COUNT(MaUser) AS [Tổng số thành viên]
FROM dbo.users
---Các view thống kê tổng số người dùng,bài đăng,bình luận,chủ đề
CREATE VIEW view_SoTV
AS
SELECT COUNT(MaUser) AS [Tổng số thành viên]
FROM dbo.users
SELECT * FROM view_SoTV


CREATE VIEW view_SoBaiDang
as
SELECT COUNT(MaBaiDang) AS [Tổng số bài đăng]
FROM dbo.baidang
SELECT * FROM view_SoBaiDang

CREATE VIEW view_SoBinhLuan
as
SELECT COUNT(MaBinhLuan) AS [Tổng số bình luận]
FROM dbo.binhluan

SELECT * FROM view_SoBinhLuan

CREATE VIEW view_SoChuDe
as
SELECT COUNT(MaChuDe) AS [Tổng số Chủ đề]
FROM dbo.chude
SELECT * FROM view_SoChuDe

--sp thống kê tổng số từng mục
CREATE PROC sp_ThongKeTungMuc
as
SELECT *FROM view_SoTV,view_SoBaiDang,view_SoBinhLuan,view_SoChuDe



--sp dem sl các trạng thái bài đăng
CREATE VIEW v1
as
SELECT COUNT(MaBaiDang) AS[SL chờ duyệt] FROM dbo.baidang WHERE trangthai=N'Chờ Duyệt'
CREATE VIEW v2
as
SELECT COUNT(MaBaiDang) AS[SL đã duyệt]FROM dbo.baidang WHERE trangthai=N'Đã Duyệt'
CREATE VIEW v3
as
SELECT COUNT(MaBaiDang) AS[SL không chấp nhận]FROM dbo.baidang WHERE trangthai=N'Không Chấp nhận'

-- proc :
CREATE PROC sp_DemSLTungLoaiBaiDang
AS
SELECT * FROM v1,v2,v3

