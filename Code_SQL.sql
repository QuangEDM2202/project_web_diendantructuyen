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

