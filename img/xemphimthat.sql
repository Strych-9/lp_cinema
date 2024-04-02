-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 18, 2022 lúc 04:04 PM
-- Phiên bản máy phục vụ: 10.4.25-MariaDB
-- Phiên bản PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `xemphimthat`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `bapnuoc`
--

CREATE TABLE `bapnuoc` (
  `maBapNuoc` int(11) NOT NULL,
  `tenSP` varchar(100) DEFAULT NULL,
  `gia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `bapnuoc`
--

INSERT INTO `bapnuoc` (`maBapNuoc`, `tenSP`, `gia`) VALUES
(1, 'Combo Gia Đình', 120),
(2, 'Combo Noel', 150);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binhluan`
--

CREATE TABLE `binhluan` (
  `maBL` int(11) NOT NULL,
  `maPhim` int(11) NOT NULL,
  `email` varchar(256) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `maHD` int(11) NOT NULL,
  `soluongXC` int(11) NOT NULL,
  `maXC` int(11) NOT NULL,
  `maBapNuoc` int(11) NOT NULL,
  `soluongBapNuoc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `chitiethoadon`
--

INSERT INTO `chitiethoadon` (`maHD`, `soluongXC`, `maXC`, `maBapNuoc`, `soluongBapNuoc`) VALUES
(1, 1, 1, 1, 1),
(6, 1, 3, 1, 2);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ghe`
--

CREATE TABLE `ghe` (
  `maGhe` int(11) NOT NULL,
  `tinhtrang` bit(1) DEFAULT NULL,
  `loaiGhe` varchar(20) NOT NULL DEFAULT 'Thường'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `ghe`
--

INSERT INTO `ghe` (`maGhe`, `tinhtrang`, `loaiGhe`) VALUES
(1, b'0', 'Thường'),
(2, b'0', 'Couple'),
(3, b'0', 'Thường'),
(4, b'0', 'Couple'),
(5, b'0', 'Thường'),
(6, b'0', 'VIP'),
(7, b'0', 'Thường'),
(8, b'0', 'VIP'),
(9, b'0', 'Thường'),
(10, b'0', 'Couple'),
(11, b'0', 'Thường'),
(12, b'0', 'VIP'),
(13, b'0', 'Thường'),
(14, b'0', 'Couple'),
(15, b'0', 'Thường'),
(16, b'0', 'VIP'),
(17, b'0', 'Thường'),
(18, b'0', 'VIP'),
(19, b'0', 'Thường'),
(20, b'0', 'VIP'),
(21, b'0', 'Thường'),
(22, b'0', 'Couple'),
(23, b'0', 'Thường'),
(24, b'0', 'Couple'),
(25, b'0', 'Thường'),
(26, b'0', 'Thường'),
(27, b'0', 'VIP'),
(28, b'0', 'Thường'),
(29, b'0', 'Thường'),
(30, b'0', 'VIP');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `maHD` int(11) NOT NULL,
  `ngayDat` date NOT NULL,
  `email` varchar(256) NOT NULL,
  `tongTien` int(11) DEFAULT NULL,
  `maKM` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `hoadon`
--

INSERT INTO `hoadon` (`maHD`, `ngayDat`, `email`, `tongTien`, `maKM`) VALUES
(1, '2022-12-17', 'admin@gmail.com', 150, 1),
(4, '2022-12-02', 'user1@gmail.com', 123, 1),
(6, '2022-12-17', 'user1@gmail.com', 123, 1),
(10, '2022-12-16', 'user1@gmail.com', 140, 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `maKM` int(11) NOT NULL,
  `chuDe` varchar(255) NOT NULL,
  `noiDung` varchar(1000) NOT NULL,
  `anh` varchar(255) DEFAULT NULL,
  `ngayBD` date NOT NULL,
  `ngayKT` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`maKM`, `chuDe`, `noiDung`, `anh`, `ngayBD`, `ngayKT`) VALUES
(1, 'Giảm 50k', 'Giảm 50k cho hóa đơn trên 200k', NULL, '2022-12-15', '2022-12-31'),
(2, 'Giảm 100k', 'Giảm 100k với hóa đơn trên 1000k', NULL, '2022-12-22', '2022-12-29'),
(3, 'Giảm 100k', 'Giảm 100k với hóa đơn trên 1000k', NULL, '2022-12-22', '2022-12-29'),
(4, 'Giảm 2k', 'Giảm 2k khách mới', NULL, '2022-12-14', '2022-12-14');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaighe`
--

CREATE TABLE `loaighe` (
  `maLoai` int(11) NOT NULL,
  `tenLoai` varchar(20) DEFAULT NULL,
  `phuThu` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `loaighe`
--

INSERT INTO `loaighe` (`maLoai`, `tenLoai`, `phuThu`) VALUES
(1, 'Thường', 0),
(2, 'Couple', 20),
(3, 'VIP', 40);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phim`
--

CREATE TABLE `phim` (
  `maPhim` int(11) NOT NULL,
  `ngayBD` date NOT NULL,
  `ngayKT` date NOT NULL,
  `anh` varchar(255) DEFAULT './img/imgCard.jpg',
  `daoDien` varchar(255) DEFAULT NULL,
  `dienVien` varchar(255) DEFAULT NULL,
  `gia` int(11) NOT NULL,
  `hangPhim` varchar(255) DEFAULT NULL,
  `phienBan` varchar(255) DEFAULT NULL,
  `quocGia` varchar(255) NOT NULL,
  `tenPhim` varchar(255) NOT NULL,
  `theLoai` varchar(255) NOT NULL,
  `thoiLuong` int(11) NOT NULL,
  `trangThai` bit(1) NOT NULL DEFAULT b'0',
  `video` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phim`
--

INSERT INTO `phim` (`maPhim`, `ngayBD`, `ngayKT`, `anh`, `daoDien`, `dienVien`, `gia`, `hangPhim`, `phienBan`, `quocGia`, `tenPhim`, `theLoai`, `thoiLuong`, `trangThai`, `video`) VALUES
(1, '2022-12-06', '2022-12-31', './img/imgCard.jpg', NULL, NULL, 180000, NULL, NULL, 'VietNam', 'Hạnh phúc máu', 'Tâm lý', 120, b'1', NULL),
(2, '2022-12-06', '2022-12-31', './img/imgCard.jpg', NULL, NULL, 75000, NULL, NULL, 'Mỹ', 'Rio 2', 'Hoạt hình', 90, b'0', NULL),
(3, '2022-12-06', '2022-12-31', './img/imgCard.jpg', NULL, NULL, 75000, NULL, NULL, 'Mỹ', 'Avatar 2', 'Hành động', 120, b'1', NULL),
(4, '2022-12-06', '2022-12-31', './img/imgCard.jpg', NULL, NULL, 75000, NULL, NULL, 'Mỹ', 'Aquaman And The Lost Kingdom (2023)', 'Hành động', 180, b'0', NULL),
(5, '2022-12-06', '2022-12-31', './img/imgCard.jpg', NULL, NULL, 180000, NULL, NULL, 'Việt Nam', 'Captain Marvel 2 (2023)', 'Khoa học viễn tưởng', 180, b'0', NULL),
(6, '2022-12-06', '2022-12-31', './img/imgCard.jpg', NULL, NULL, 75000, NULL, NULL, 'Nhật Bản', 'Detective Conan: The Bride of Halloween', 'Hoạt hình', 120, b'1', NULL),
(7, '2022-12-06', '2022-12-31', './img/imgCard.jpg', NULL, NULL, 75000, NULL, NULL, 'Mỹ', 'DC League of super pets', 'Hoạt hình', 120, b'0', NULL),
(8, '2022-12-06', '2022-12-31', './img/imgCard.jpg', NULL, NULL, 75000, NULL, NULL, 'Mỹ', 'Dead On The Nile', 'Tâm lý', 120, b'0', NULL),
(9, '2022-12-06', '2022-12-31', './img/imgCard.jpg', NULL, NULL, 75000, NULL, NULL, 'Mỹ', 'The Lost City', 'Hài', 90, b'0', NULL),
(10, '2022-12-06', '2022-12-31', './img/imgCard.jpg', NULL, NULL, 120000, NULL, NULL, 'Mỹ', 'Escape Room', 'Kinh dị', 120, b'0', NULL),
(11, '2022-12-06', '2022-12-31', './img/imgCard.jpg', NULL, NULL, 75000, NULL, NULL, 'Việt Nam', 'Bạch Liên Hoa', 'Cổ trang', 120, b'1', NULL),
(12, '2022-12-06', '2022-12-31', './img/imgCard.jpg', NULL, NULL, 120000, NULL, NULL, 'ViệtNam', 'Kẻ Độc Hành', 'Kinh dị - Hài', 120, b'1', NULL),
(13, '2022-12-06', '2022-12-31', './img/imgCard.jpg', NULL, NULL, 75000, NULL, NULL, 'Nhật Bản', 'Your Name', 'Tình cảm', 180, b'0', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phong`
--

CREATE TABLE `phong` (
  `maPhong` int(11) NOT NULL,
  `maGhe` int(11) NOT NULL,
  `trangthai` bit(1) NOT NULL DEFAULT b'0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `phong`
--

INSERT INTO `phong` (`maPhong`, `maGhe`, `trangthai`) VALUES
(1, 1, b'0'),
(1, 2, b'0'),
(1, 3, b'0'),
(1, 4, b'0'),
(1, 5, b'0'),
(1, 6, b'0'),
(1, 7, b'0'),
(1, 8, b'0'),
(1, 9, b'0'),
(1, 10, b'0'),
(2, 11, b'0'),
(2, 12, b'0'),
(2, 13, b'0'),
(2, 14, b'0'),
(2, 15, b'0'),
(2, 16, b'0'),
(2, 17, b'0'),
(2, 18, b'0'),
(2, 19, b'0'),
(2, 20, b'0'),
(3, 21, b'0'),
(3, 22, b'0'),
(3, 23, b'0'),
(3, 24, b'0'),
(3, 25, b'0'),
(3, 26, b'0'),
(3, 27, b'0'),
(3, 28, b'0'),
(3, 29, b'0'),
(3, 30, b'0');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `rap`
--

CREATE TABLE `rap` (
  `maRap` int(11) NOT NULL,
  `maPhong` int(11) NOT NULL,
  `diachi` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `rap`
--

INSERT INTO `rap` (`maRap`, `maPhong`, `diachi`) VALUES
(1, 1, '123 Hai Bà Trưng Quận 1 TPHCM'),
(2, 2, '72 Thành Thái Quận 10 TPHCM');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `taikhoan`
--

CREATE TABLE `taikhoan` (
  `email` varchar(256) NOT NULL,
  `matKhau` varchar(255) NOT NULL,
  `ten` varchar(100) NOT NULL,
  `admin` bit(1) NOT NULL DEFAULT b'0',
  `sdt` varchar(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `taikhoan`
--

INSERT INTO `taikhoan` (`email`, `matKhau`, `ten`, `admin`, `sdt`) VALUES
('admin@gmail.com', '1234', 'hanh', b'1', '0878053999'),
('user1@gmail.com', '1234', 'user1', b'0', NULL);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `xuatchieu`
--

CREATE TABLE `xuatchieu` (
  `maXC` int(11) NOT NULL,
  `ngaygio` date NOT NULL,
  `maPhong` int(11) NOT NULL,
  `maPhim` int(11) NOT NULL,
  `maRap` int(11) NOT NULL DEFAULT 1
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `xuatchieu`
--

INSERT INTO `xuatchieu` (`maXC`, `ngaygio`, `maPhong`, `maPhim`, `maRap`) VALUES
(1, '2022-12-17', 2, 2, 1),
(3, '2022-12-17', 2, 12, 1),
(4, '2022-12-02', 2, 5, 2);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `bapnuoc`
--
ALTER TABLE `bapnuoc`
  ADD PRIMARY KEY (`maBapNuoc`);

--
-- Chỉ mục cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD PRIMARY KEY (`maBL`),
  ADD KEY `maPhim` (`maPhim`),
  ADD KEY `email` (`email`);

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD PRIMARY KEY (`maHD`,`maXC`,`maBapNuoc`),
  ADD KEY `maXC` (`maXC`),
  ADD KEY `maBapNuoc` (`maBapNuoc`);

--
-- Chỉ mục cho bảng `ghe`
--
ALTER TABLE `ghe`
  ADD PRIMARY KEY (`maGhe`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`maHD`),
  ADD KEY `maKM` (`maKM`),
  ADD KEY `email` (`email`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`maKM`);

--
-- Chỉ mục cho bảng `loaighe`
--
ALTER TABLE `loaighe`
  ADD PRIMARY KEY (`maLoai`);

--
-- Chỉ mục cho bảng `phim`
--
ALTER TABLE `phim`
  ADD PRIMARY KEY (`maPhim`);

--
-- Chỉ mục cho bảng `phong`
--
ALTER TABLE `phong`
  ADD PRIMARY KEY (`maPhong`,`maGhe`),
  ADD KEY `maGhe` (`maGhe`);

--
-- Chỉ mục cho bảng `rap`
--
ALTER TABLE `rap`
  ADD PRIMARY KEY (`maRap`,`maPhong`),
  ADD KEY `maPhong` (`maPhong`);

--
-- Chỉ mục cho bảng `taikhoan`
--
ALTER TABLE `taikhoan`
  ADD PRIMARY KEY (`email`);

--
-- Chỉ mục cho bảng `xuatchieu`
--
ALTER TABLE `xuatchieu`
  ADD PRIMARY KEY (`maXC`),
  ADD KEY `maPhong` (`maPhong`),
  ADD KEY `maPhim` (`maPhim`),
  ADD KEY `maRap` (`maRap`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `bapnuoc`
--
ALTER TABLE `bapnuoc`
  MODIFY `maBapNuoc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  MODIFY `maBL` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  MODIFY `maHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT cho bảng `ghe`
--
ALTER TABLE `ghe`
  MODIFY `maGhe` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  MODIFY `maHD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  MODIFY `maKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT cho bảng `loaighe`
--
ALTER TABLE `loaighe`
  MODIFY `maLoai` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `phim`
--
ALTER TABLE `phim`
  MODIFY `maPhim` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT cho bảng `phong`
--
ALTER TABLE `phong`
  MODIFY `maPhong` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT cho bảng `rap`
--
ALTER TABLE `rap`
  MODIFY `maRap` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT cho bảng `xuatchieu`
--
ALTER TABLE `xuatchieu`
  MODIFY `maXC` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `binhluan`
--
ALTER TABLE `binhluan`
  ADD CONSTRAINT `binhluan_ibfk_1` FOREIGN KEY (`maPhim`) REFERENCES `phim` (`maPhim`),
  ADD CONSTRAINT `binhluan_ibfk_2` FOREIGN KEY (`email`) REFERENCES `taikhoan` (`email`);

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`maHD`) REFERENCES `hoadon` (`maHD`),
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`maXC`) REFERENCES `xuatchieu` (`maXC`),
  ADD CONSTRAINT `chitiethoadon_ibfk_3` FOREIGN KEY (`maBapNuoc`) REFERENCES `bapnuoc` (`maBapNuoc`),
  ADD CONSTRAINT `chitiethoadon_ibfk_4` FOREIGN KEY (`maHD`) REFERENCES `hoadon` (`maHD`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_1` FOREIGN KEY (`maKM`) REFERENCES `khuyenmai` (`maKM`),
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`email`) REFERENCES `taikhoan` (`email`);

--
-- Các ràng buộc cho bảng `phong`
--
ALTER TABLE `phong`
  ADD CONSTRAINT `phong_ibfk_1` FOREIGN KEY (`maGhe`) REFERENCES `ghe` (`maGhe`);

--
-- Các ràng buộc cho bảng `rap`
--
ALTER TABLE `rap`
  ADD CONSTRAINT `rap_ibfk_1` FOREIGN KEY (`maPhong`) REFERENCES `phong` (`maPhong`);

--
-- Các ràng buộc cho bảng `xuatchieu`
--
ALTER TABLE `xuatchieu`
  ADD CONSTRAINT `xuatchieu_ibfk_1` FOREIGN KEY (`maPhong`) REFERENCES `phong` (`maPhong`),
  ADD CONSTRAINT `xuatchieu_ibfk_2` FOREIGN KEY (`maPhim`) REFERENCES `phim` (`maPhim`),
  ADD CONSTRAINT `xuatchieu_ibfk_3` FOREIGN KEY (`maRap`) REFERENCES `rap` (`maRap`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
