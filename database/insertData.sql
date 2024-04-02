INSERT INTO loaighe(tenLoai,phuThu) VALUES

("Thường",0),
("Couple",20),
("VIP",40)
;


INSERT INTO `ghe` (`maGhe`, `tinhtrang`) VALUES

(1, b'0'),
(2, b'0'),
(3, b'0'),
(4, b'0'),
(5, b'0'),
(6, b'0'),
(7, b'0'),
(8, b'0'),
(9, b'0'),
(10, b'0'),
(11, b'0'),
(12, b'0'),
(13, b'0'),
(14, b'0'),
(15, b'0'),
(16, b'0'),
(17, b'0'),
(18, b'0'),
(19, b'0'),
(20, b'0'),
(21, b'0'),
(22, b'0'),
(23, b'0'),
(24, b'0'),
(25, b'0'),
(26, b'0'),
(27, b'0'),
(28, b'0'),
(29, b'0'),
(30, b'0');


INSERT INTO phong(maPhong,maGhe) VALUES

(1,1),
(1,2),
(1,3),
(1,4),
(1,5),
(1,6),
(1,7),
(1,8),
(1,9),
(1,10),
(2,11),
(2,12),
(2,13),
(2,14),
(2,15),
(2,16),
(2,17),
(2,18),
(2,19),
(2,20),
(3,21),
(3,22),
(3,23),
(3,24),
(3,25),
(3,26),
(3,27),
(3,28),
(3,29),
(3,30);


INSERT INTO phim(ngayBD,ngayKT,gia,quocGia,tenPhim,theLoai,thoiLuong) VALUES

("2022-12-06","2022-12-31",75000,"VietNam","Hạnh phúc máu", "Tâm lý", 120),
("2022-12-06","2022-12-31",75000,"Việt Nam","Hạnh phúc máu", "Tâm lý", 90),
("2022-12-06","2022-12-31",75000,"Mỹ","Avatar 2", "Hành động", 120),
("2022-12-06","2022-12-31",75000,"Mỹ","Aquaman And The Lost Kingdom (2023)", "Hành động", 180),
("2022-12-06","2022-12-31",75000,"Việt Nam","Captain Marvel 2 (2023)", "Khoa học viễn tưởng", 180),
("2022-12-06","2022-12-31",75000,"Nhật Bản","Detective Conan: The Bride of Halloween", "Hoạt hình", 120),
("2022-12-06","2022-12-31",75000,"Mỹ","DC League of super pets", "Hoạt hình", 120),
("2022-12-06","2022-12-31",75000,"Mỹ","Dead On The Nile", "Tâm lý", 120),
("2022-12-06","2022-12-31",75000,"Mỹ","The Lost City", "Hài", 90),
("2022-12-06","2022-12-31",75000,"Mỹ","Escape Room", "Kinh dị", 120),
("2022-12-06","2022-12-31",75000,"Việt Nam","Bạch Liên Hoa", "Cổ trang", 120),
("2022-12-06","2022-12-31",75000,"ViệtNam","Kẻ Độc Hành", "Kinh dị - Hài", 120),
("2022-12-06","2022-12-31",75000,"Nhật Bản","Your Name", "Tình cảm", 180),
("2022-12-06","2022-12-31",75000,"Mỹ","Moana", "Tâm lý", 90),
("2022-12-06","2022-12-31",75000,"Hồng Kông","Series IP Man 4", "Võ thuật", 120)

;

INSERT INTO `hoadon` (`maHD`, `ngayDat`, `email`, `tongTien`, `maKM`) VALUES
(1, '2022-12-17', 'admin@gmail.com', 150, 1),
(4, '2022-12-02', 'user1@gmail.com', 123, 1),
(6, '2022-12-17', 'user1@gmail.com', 123, 1),
(10, '2022-12-16', 'user1@gmail.com', 140, 1);

INSERT INTO `chitiethoadon` (`maHD`, `soluongXC`, `maXC`, `maBapNuoc`, `soluongBapNuoc`) VALUES
(1, 1, 1, 1, 1),
(6, 1, 3, 1, 2);

INSERT INTO `khuyenmai` (`maKM`, `chuDe`, `noiDung`, `anh`, `ngayBD`, `ngayKT`) VALUES
(1, 'Giảm 50k', 'Giảm 50k cho hóa đơn trên 200k', NULL, '2022-12-15', '2022-12-31'),
(2, 'Giảm 100k', 'Giảm 100k với hóa đơn trên 1000k', NULL, '2022-12-22', '2022-12-29'),
(3, 'Giảm 2k', 'Giảm 2k khách mới', NULL, '2022-12-14', '2022-12-14');

INSERT INTO `taikhoan` (`email`, `matKhau`, `ten`, `admin`, `sdt`) VALUES
('admin@gmail.com', '1234', 'hanh', b'1', '0878053999'),
('user1@gmail.com', '1234', 'user1', b'0', NULL);

INSERT INTO `xuatchieu` (`maXC`, `ngaygio`, `maPhong`, `maPhim`, `maRap`) VALUES
(1, '2022-12-17', 2, 2, 1),
(3, '2022-12-17', 2, 12, 1),
(4, '2022-12-02', 2, 5, 2);


