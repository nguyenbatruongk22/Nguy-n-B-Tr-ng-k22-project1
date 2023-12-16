-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th12 16, 2023 lúc 10:16 AM
-- Phiên bản máy phục vụ: 10.4.32-MariaDB
-- Phiên bản PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `nguyễn bá trường k22`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `binh_luan`
--

CREATE TABLE `binh_luan` (
  `MaBL` int(11) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL,
  `Tieu_de` varchar(100) NOT NULL,
  `Noi_dung` text NOT NULL,
  `Ngay_BL` datetime NOT NULL,
  `Trang_thai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `ct_hoa_don`
--

CREATE TABLE `ct_hoa_don` (
  `MaHD` int(11) NOT NULL,
  `MaSPTC` int(11) NOT NULL,
  `So_luong_ban` int(11) NOT NULL,
  `Gia_ban` float NOT NULL,
  `Tra_lai` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hinh_anh`
--

CREATE TABLE `hinh_anh` (
  `MaHA` int(11) NOT NULL,
  `Ten_file_anh` varchar(50) NOT NULL,
  `Trang_thai` tinyint(4) NOT NULL,
  `MaSP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `hoa_don`
--

CREATE TABLE `hoa_don` (
  `MaHD` int(11) NOT NULL,
  `Ngay_HD` datetime NOT NULL,
  `Hoten_nguoinhan` varchar(100) NOT NULL,
  `Diachi_nguoinhan` varchar(200) NOT NULL,
  `Dienthoai_nguoinhan` varchar(30) NOT NULL,
  `Diachi_email` varchar(50) NOT NULL,
  `Ngay_giao_hang` datetime NOT NULL,
  `Trang_thai` tinyint(4) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `MaPTVC` int(11) NOT NULL,
  `MaPTTT` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `khach_hang`
--

CREATE TABLE `khach_hang` (
  `MaKH` int(11) DEFAULT NULL,
  `Ho_ten` varchar(100) NOT NULL,
  `Tai_khoan` varchar(50) NOT NULL,
  `Mat_khau` varchar(32) NOT NULL,
  `Dia_chi` varchar(200) NOT NULL,
  `Dien_thoai` varchar(30) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Ngay_sinh` datetime NOT NULL,
  `Ngay_cap_nhat` tinyint(4) NOT NULL,
  `Gioi_tinh` int(11) NOT NULL,
  `Tich_diem` int(11) NOT NULL,
  `Trang_thai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `kich_co`
--

CREATE TABLE `kich_co` (
  `MaKC` int(11) NOT NULL,
  `Ten_KC` varchar(50) NOT NULL,
  `Trang_thai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `lien_he`
--

CREATE TABLE `lien_he` (
  `MaLH` int(11) NOT NULL,
  `Tieu_de` varchar(200) NOT NULL,
  `Dia_chi` varchar(250) NOT NULL,
  `Dien_thoai` varchar(250) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Facebook` varchar(100) NOT NULL,
  `Sky` varchar(100) NOT NULL,
  `Logo` varchar(50) NOT NULL,
  `Trang_thai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `loai_san_pham`
--

CREATE TABLE `loai_san_pham` (
  `MaLSP` int(11) NOT NULL,
  `Ten_loai` varchar(50) NOT NULL,
  `Trang_thai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `mau_sac`
--

CREATE TABLE `mau_sac` (
  `MaMS` int(11) NOT NULL,
  `Ten_MS` varchar(50) NOT NULL,
  `Trang_thai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `phan_hoi`
--

CREATE TABLE `phan_hoi` (
  `MaLH` int(11) NOT NULL,
  `Tieu_de` varchar(200) NOT NULL,
  `Noi_dung` text NOT NULL,
  `Ngay_gui` datetime NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Facebook` varchar(100) NOT NULL,
  `Sky` varchar(100) NOT NULL,
  `Tra_loi` text NOT NULL,
  `Trang_thai` tinyint(4) NOT NULL,
  `Da_xem` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pt_thanh_toan`
--

CREATE TABLE `pt_thanh_toan` (
  `MaPTTT` int(11) NOT NULL,
  `Ten_PTTT` varchar(50) NOT NULL,
  `Trang_thai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `pt_van_chuyen`
--

CREATE TABLE `pt_van_chuyen` (
  `MaPTVC` int(11) NOT NULL,
  `Ten_PTVC` varchar(50) NOT NULL,
  `Do_dai` int(11) NOT NULL,
  `Don_gia` float NOT NULL,
  `Trang_thai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `quan_tri`
--

CREATE TABLE `quan_tri` (
  `Tai_khoan` varchar(50) NOT NULL,
  `Mat_khau` varchar(32) NOT NULL,
  `Trang_thai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham`
--

CREATE TABLE `san_pham` (
  `Ma_SP` int(11) NOT NULL,
  `Ten_sp` varchar(200) NOT NULL,
  `Mo_ta` varchar(250) NOT NULL,
  `Thong_tin` text NOT NULL,
  `Gia_nhap` float NOT NULL,
  `Gia_cu` float NOT NULL,
  `Luot_xem` int(11) NOT NULL,
  `Ngay_cap_nhat` datetime NOT NULL,
  `Trang_thai` tinyint(4) NOT NULL,
  `MaLSP` int(11) NOT NULL,
  `MaNH` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `san_pham_ct`
--

CREATE TABLE `san_pham_ct` (
  `MaSPCT` int(11) NOT NULL,
  `So_luong` int(11) NOT NULL,
  `MaMS` int(11) NOT NULL,
  `MaKH` int(11) NOT NULL,
  `MaSP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tin_tuc`
--

CREATE TABLE `tin_tuc` (
  `MaTT` int(11) NOT NULL,
  `Tieu_de` varchar(200) NOT NULL,
  `Mo_ta` varchar(250) NOT NULL,
  `Noi_dung` text NOT NULL,
  `Loai_tin` varchar(100) NOT NULL,
  `Ngay_dang_tin` datetime NOT NULL,
  `Ngay_cap_nhat` datetime NOT NULL,
  `Hinh_anh` varchar(50) NOT NULL,
  `Trang_thai` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `san_pham_ct`
--
ALTER TABLE `san_pham_ct`
  ADD UNIQUE KEY `MaMS` (`MaMS`),
  ADD UNIQUE KEY `MaKH` (`MaKH`),
  ADD UNIQUE KEY `MaSP` (`MaSP`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
