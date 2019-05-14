-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th5 14, 2019 lúc 08:29 PM
-- Phiên bản máy phục vụ: 10.1.37-MariaDB
-- Phiên bản PHP: 7.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web2`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `chitiethoadon`
--

CREATE TABLE `chitiethoadon` (
  `MaHD` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaSP` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `SoLuong` int(11) NOT NULL,
  `DonGia` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `danhgia`
--

CREATE TABLE `danhgia` (
  `MaSP` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaND` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `SoSao` int(11) NOT NULL,
  `BinhLuan` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `NgayLap` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoadon`
--

CREATE TABLE `hoadon` (
  `MaHD` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaKH` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `NgayLap` datetime NOT NULL,
  `NguoiNhan` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `TongTien` float NOT NULL,
  `TrangThai` varchar(70) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khuyenmai`
--

CREATE TABLE `khuyenmai` (
  `MaKM` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenKM` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `LoaiKM` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GiaTriKM` float NOT NULL,
  `NgayBD` datetime NOT NULL,
  `NgayKT` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `khuyenmai`
--

INSERT INTO `khuyenmai` (`MaKM`, `TenKM`, `LoaiKM`, `GiaTriKM`, `NgayBD`, `NgayKT`) VALUES
('', 'Không khuyến mãi', 'Nothing', 0, '2019-04-08 00:00:00', '2022-04-17 00:00:00'),
('KM1', 'Giảm giá', 'GiamGia', 500000, '2019-05-01 00:00:00', '2019-05-31 00:00:00'),
('KM2', 'Giá rẻ online', 'GiaReOnline', 1000000, '2019-05-01 00:00:00', '2019-05-31 00:00:00'),
('KM3', 'Trả góp', 'TraGop', 0, '2019-05-01 00:00:00', '2019-05-31 00:00:00'),
('KM4', 'Mới ra mắt', 'MoiRaMat', 0, '2019-05-01 00:00:00', '2019-05-31 00:00:00');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loaisanpham`
--

CREATE TABLE `loaisanpham` (
  `MaLSP` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenLSP` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `HinhAnh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `Mota` varchar(200) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `loaisanpham`
--

INSERT INTO `loaisanpham` (`MaLSP`, `TenLSP`, `HinhAnh`, `Mota`) VALUES
('LSP1', 'Apple', '', 'Các sản phẩm của Apple'),
('LSP2', 'Oppo', '', 'Camara Selphi cuc chat tu Oppo'),
('LSP3', 'SamSung', '', 'Khuyen mai lon tu SamSung'),
('LSP4', 'Phillip', '', 'Cac san pham tuyet dep tu Phillip'),
('LSP5', 'Nokia', '', 'Các sản phẩm đến từ thương hiệu Nokia'),
('LSP6', 'Blackbery', '', 'BlackBery is the best'),
('LSP7', 'Huawei', '', 'Các sản phẩm đến từ thương hiệu Huawei'),
('LSP8', 'Vivo', '', 'Các sản phẩm đến từ Vivo'),
('LSP9', 'Xiaomi', '', 'Các sản phẩm đến từ thương hiệu Xiaomi');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `nguoidung`
--

CREATE TABLE `nguoidung` (
  `MaND` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Ho` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Ten` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `GioiTinh` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `SDT` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `Email` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `DiaChi` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `TaiKhoan` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MatKhau` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `MaQuyen` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `nguoidung`
--

INSERT INTO `nguoidung` (`MaND`, `Ho`, `Ten`, `GioiTinh`, `SDT`, `Email`, `DiaChi`, `TaiKhoan`, `MatKhau`, `MaQuyen`) VALUES
('ND1', 'Tran', 'Van Hoang', '', '0', 'hoang@gmail.com', '', '', '', ''),
('ND2', 'Nguyen', 'Haiba', '', '0', 'hbb@gmail.com', '', '', '', ''),
('ND3', 'Tran', 'Thu Hien', '', '0', 'thuhien@gmail.com', '', '', '', '');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phanquyen`
--

CREATE TABLE `phanquyen` (
  `MaQuyen` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenQuyen` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `ChiTietQuyen` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `phanquyen`
--

INSERT INTO `phanquyen` (`MaQuyen`, `TenQuyen`, `ChiTietQuyen`) VALUES
('', 'Customer', 'Khách hàng có tài khoản');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `sanpham`
--

CREATE TABLE `sanpham` (
  `MaSP` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `MaLSP` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `TenSP` varchar(70) COLLATE utf8_unicode_ci NOT NULL,
  `DonGia` float NOT NULL,
  `SoLuong` int(10) UNSIGNED NOT NULL DEFAULT '1',
  `HinhAnh` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `MaKM` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ManHinh` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `HDH` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CamSau` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CamTruoc` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `CPU` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Ram` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Rom` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SDCard` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `Pin` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `SoSao` int(11) NOT NULL,
  `SoDanhGia` int(11) NOT NULL,
  `TrangThai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Đang đổ dữ liệu cho bảng `sanpham`
--

INSERT INTO `sanpham` (`MaSP`, `MaLSP`, `TenSP`, `DonGia`, `SoLuong`, `HinhAnh`, `MaKM`, `ManHinh`, `HDH`, `CamSau`, `CamTruoc`, `CPU`, `Ram`, `Rom`, `SDCard`, `Pin`, `SoSao`, `SoDanhGia`, `TrangThai`) VALUES
('SP1', 'LSP1', 'IPhone X', 20, 102, 'iphone-xr-128gb-red-400x400.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
('SP10', 'LSP1', 'iPhone Xr 256GB', 23.9, 76, 'iphone-xr-256gb-white-400x400.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
('SP11', 'LSP2', 'OPPO R17 Pro', 15.9, 99, 'oppo-r17-pro-2-400x460.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
('SP12', 'LSP8', 'Vivo V15', 7.9, 257, 'vivo-v15-quanghai-400x460.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
('SP13', 'LSP6', 'Blackberry Evolve', 7.9, 46, 'blackberry-evolve6xvk3-640.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
('SP14', 'LSP7', 'Huawei Y9 (2019)', 5.5, 37, 'huawei-y9-2019-blue-400x460.jpg', 'KM2', '', '', '', '', '', '', '', '', '', 0, 0, 0),
('SP15', 'LSP2', 'OPPO F7', 5.5, 361, 'oppo-f7-red-mtp-400x460.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
('SP16', 'LSP9', 'Xiaomi Mi 8', 11.9, 41, 'xiaomi-mi-8-1-400x460-400x460.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
('SP17', 'LSP9', 'Xiaomi Redmi Note 6 Pro 64GB', 5.6, 68, 'xiaomi-redmi-note-6-pro-black-1-400x460.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
('SP18', 'LSP3', 'Samsung Galaxy Note 9 512GB', 24, 60, 'samsung-galaxy-note-9-512gb-blue-400x460.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
('SP19', 'LSP7', 'Huawei Mate 20', 13, 45, 'huawei-mate-20-black-400x460.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
('SP2', 'LSP2', 'Oppo A7', 8.2, 70, 'oppo-a7-400x460.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
('SP20', 'LSP8', 'Vivo Y85', 5, 36, 'vivo-y85-red-docquyen-400x460.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
('SP21', 'LSP8', 'Vivo V11', 8, 30, 'vivo-v11-400x460.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
('SP22', 'LSP1', 'iPhone Xs Max 512GB', 39, 45, 'iphone-xs-max-512gb-gold-400x460.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
('SP23', 'LSP2', 'OPPO Fid X', 19.9, 49, 'oppo-find-x-1-400x460-400x460.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
('SP24', 'LSP1', 'Iphone abc', 25, 20, 'iphone-xr-256gb-white-400x400.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
('SP3', 'LSP5', 'Nokia 8.1', 7.9, 69, 'nokia-81-silver-400x460.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
('SP4', 'LSP4', 'Philips S327', 3.9, 56, 'philips-s327-400-400x460.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
('SP5', 'LSP1', 'iPhone 8 Plus 256GB', 25.7, 167, 'iphone-8-plus-256gb-gold-400x460.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
('SP6', 'LSP5', 'Nokia 6.1 Plus', 6.5, 44, 'nokia-61-plus-3-400x460.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
('SP7', 'LSP2', 'Oppo NEO 3', 15.4, 101, 'oppo-a7-32gb-gold-400x400.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 1),
('SP8', 'LSP7', 'Huawei P30 Pro', 23, 69, 'huawei-p30-pro-1-400x460.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 0),
('SP9', 'LSP3', 'Samsung Galaxy S10+ (512GB)', 29, 57, 'samsung-galaxy-s10-plus-512gb-ceramic-black-400x460.jpg', '', '', '', '', '', '', '', '', '', '', 0, 0, 0);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD KEY `MaHD` (`MaHD`),
  ADD KEY `MaSP` (`MaSP`);

--
-- Chỉ mục cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD KEY `MaSP` (`MaSP`),
  ADD KEY `MaND` (`MaND`);

--
-- Chỉ mục cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD PRIMARY KEY (`MaHD`),
  ADD KEY `MaKH` (`MaKH`);

--
-- Chỉ mục cho bảng `khuyenmai`
--
ALTER TABLE `khuyenmai`
  ADD PRIMARY KEY (`MaKM`);

--
-- Chỉ mục cho bảng `loaisanpham`
--
ALTER TABLE `loaisanpham`
  ADD PRIMARY KEY (`MaLSP`);

--
-- Chỉ mục cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD PRIMARY KEY (`MaND`),
  ADD KEY `MaQuyen` (`MaQuyen`);

--
-- Chỉ mục cho bảng `phanquyen`
--
ALTER TABLE `phanquyen`
  ADD PRIMARY KEY (`MaQuyen`);

--
-- Chỉ mục cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD PRIMARY KEY (`MaSP`),
  ADD KEY `LoaiSP` (`MaLSP`),
  ADD KEY `MaKM` (`MaKM`);

--
-- Các ràng buộc cho các bảng đã đổ
--

--
-- Các ràng buộc cho bảng `chitiethoadon`
--
ALTER TABLE `chitiethoadon`
  ADD CONSTRAINT `chitiethoadon_ibfk_1` FOREIGN KEY (`MaHD`) REFERENCES `hoadon` (`MaHD`),
  ADD CONSTRAINT `chitiethoadon_ibfk_2` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`);

--
-- Các ràng buộc cho bảng `danhgia`
--
ALTER TABLE `danhgia`
  ADD CONSTRAINT `danhgia_ibfk_1` FOREIGN KEY (`MaSP`) REFERENCES `sanpham` (`MaSP`),
  ADD CONSTRAINT `danhgia_ibfk_2` FOREIGN KEY (`MaND`) REFERENCES `nguoidung` (`MaND`);

--
-- Các ràng buộc cho bảng `hoadon`
--
ALTER TABLE `hoadon`
  ADD CONSTRAINT `hoadon_ibfk_2` FOREIGN KEY (`MaKH`) REFERENCES `nguoidung` (`MaND`);

--
-- Các ràng buộc cho bảng `nguoidung`
--
ALTER TABLE `nguoidung`
  ADD CONSTRAINT `nguoidung_ibfk_1` FOREIGN KEY (`MaQuyen`) REFERENCES `phanquyen` (`MaQuyen`);

--
-- Các ràng buộc cho bảng `sanpham`
--
ALTER TABLE `sanpham`
  ADD CONSTRAINT `sanpham_ibfk_1` FOREIGN KEY (`MaLSP`) REFERENCES `loaisanpham` (`MaLSP`),
  ADD CONSTRAINT `sanpham_ibfk_2` FOREIGN KEY (`MaKM`) REFERENCES `khuyenmai` (`MaKM`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
