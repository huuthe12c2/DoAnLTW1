-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 28, 2018 at 12:27 PM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ltw1`
--

-- --------------------------------------------------------

--
-- Table structure for table `manufactures`
--

CREATE TABLE `manufactures` (
  `manu_ID` int(11) NOT NULL,
  `manu_name` varchar(50) CHARACTER SET utf8 NOT NULL,
  `manu_image` varchar(225) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `manufactures`
--

INSERT INTO `manufactures` (`manu_ID`, `manu_name`, `manu_image`) VALUES
(1, 'Apple', 'open_graph_logo.png'),
(2, 'Microsoft', 'microsoft.png'),
(3, 'Sony', 'sony-og.jpg'),
(4, 'SamSung', 'BrandLogos-SAMSUNG-Retina-COLOR.png'),
(5, 'Oppo', 'fb_1200x628.png');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `ID` int(50) NOT NULL,
  `name` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `manu_ID` int(11) DEFAULT NULL,
  `type_ID` int(11) NOT NULL,
  `price` bigint(10) NOT NULL,
  `image` varchar(50) NOT NULL,
  `description` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `feature` tinyint(1) NOT NULL DEFAULT '0',
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`ID`, `name`, `manu_ID`, `type_ID`, `price`, `image`, `description`, `feature`, `date`) VALUES
(45, 'Điện thoại iPhone 6s Plus 128GB', 1, 1, 27490000, 'iphone-6s-plus-128gb-400-1-400x450.png', 'Màn hình:	Retina HD, 5.5", 1080 x 1920 pixels\r\nCamera sau:	12 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	iOS 9\r\nCPU:	Apple A9, 2 nhân, 1.8 GHz\r\nChip đồ hoạ:	PowerVR GT7600\r\nRAM:	2GB\r\nBộ nhớ trong:	128GB\r\nHỗ trợ thẻ tối đa:	Không\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	2750 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot', 1, '2016-04-29'),
(46, 'Điện thoại iPhone 6s Plus 64GB', 1, 1, 24490000, 'iphone-6s-plus-128gb-400-1-400x450.png', 'Màn hình:	Retina HD, 5.5", 1080 x 1920 pixels\r\nCamera sau:	12 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	iOS 9\r\nCPU:	Apple A9, 2 nhân, 1.8 GHz\r\nChip đồ hoạ:	PowerVR GT7600\r\nRAM:	2GB\r\nBộ nhớ trong:	128GB\r\nHỗ trợ thẻ tối đa:	Không\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	2750 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot', 1, '2016-04-29'),
(47, 'Điện thoại Sony Xperia Z5 Premium Dual\n', 3, 1, 19990000, 'sony-xperia-z5-premium-detail-400x460.png', 'Màn hình:	IPS-LCD, 5.5", 2160 x 3840 Pixels\r\nCamera sau:	23 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	Android 5.1 (Lollipop)\r\nCPU:	Snapdragon 810, 8 nhân, Quad-core 1.5 GHz Cortex-A53 & Quad-core 2 GHz Cortex-A57\r\nChip đồ hoạ:	Adreno 430\r\nRAM:	3GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	200GB\r\nSố khe SIM:	2 SIM 2 sóng, Nano SIM\r\nDung lượng pin:	3430 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 1, '2016-01-02'),
(48, 'Điện thoại Sony Xperia Z5 Compact', 3, 1, 14990000, 'sony-xperia-z5-premium-detail-400x460.png', 'Màn hình:	IPS-LCD, 5.5", 2160 x 3840 Pixels\r\nCamera sau:	23 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	Android 5.1 (Lollipop)\r\nCPU:	Snapdragon 810, 8 nhân, Quad-core 1.5 GHz Cortex-A53 & Quad-core 2 GHz Cortex-A57\r\nChip đồ hoạ:	Adreno 430\r\nRAM:	3GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	200GB\r\nSố khe SIM:	2 SIM 2 sóng, Nano SIM\r\nDung lượng pin:	3430 mAh\n\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 0, '2016-04-29'),
(49, 'Điện thoại iPhone 6s Plus 16GB', 1, 1, 19490000, 'iphone-6s-plus-128gb-400-1-400x450.png', 'Màn hình:	Retina HD, 5.5", 1080 x 1920 pixels\r\nCamera sau:	12 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	iOS 9\r\nCPU:	Apple A9, 2 nhân, 1.8 GHz\r\nChip đồ hoạ:	PowerVR GT7600\r\nRAM:	2GB\r\nBộ nhớ trong:	128GB\r\nHỗ trợ thẻ tối đa:	Không\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	2750 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot', 1, '2016-01-08'),
(50, 'Điện thoại iPhone 6s 128GB', 1, 1, 20490000, 'iphone-6s-plus-128gb-400-1-400x450.png', 'Màn hình:	Retina HD, 5.5", 1080 x 1920 pixels\r\nCamera sau:	12 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	iOS 9\r\nCPU:	Apple A9, 2 nhân, 1.8 GHz\r\nChip đồ hoạ:	PowerVR GT7600\r\nRAM:	2GB\r\nBộ nhớ trong:	128GB\r\nHỗ trợ thẻ tối đa:	Không\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	2750 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot', 0, '2016-01-08'),
(51, 'Điện thoại iPhone 6s 64GB', 1, 1, 18490000, 'iphone-6s-plus-128gb-400-1-400x450.png', 'Màn hình:	Retina HD, 5.5", 1080 x 1920 pixels\r\nCamera sau:	12 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	iOS 9\r\nCPU:	Apple A9, 2 nhân, 1.8 GHz\r\nChip đồ hoạ:	PowerVR GT7600\r\nRAM:	2GB\r\nBộ nhớ trong:	128GB\r\nHỗ trợ thẻ tối đa:	Không\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	2750 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot', 0, '2016-01-03'),
(52, 'Điện thoại iPhone 6s 16GB', 1, 1, 14490000, 'iphone-6s-plus-128gb-400-1-400x450.png', 'Màn hình:	Retina HD, 5.5", 1080 x 1920 pixels\r\nCamera sau:	12 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	iOS 9\r\nCPU:	Apple A9, 2 nhân, 1.8 GHz\r\nChip đồ hoạ:	PowerVR GT7600\r\nRAM:	2GB\r\nBộ nhớ trong:	128GB\r\nHỗ trợ thẻ tối đa:	Không\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	2750 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot', 0, '2016-01-03'),
(53, 'Điện thoại iPhone 5s Plus 128GB', 1, 1, 17490000, 'iphone-5s-16gb-6-400x460.png', 'Màn hình:	Retina HD, 5.5", 1080 x 1920 pixels\r\nCamera sau:	12 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	iOS 9\r\nCPU:	Apple A9, 2 nhân, 1.8 GHz\r\nChip đồ hoạ:	PowerVR GT7600\r\nRAM:	2GB\r\nBộ nhớ trong:	128GB\r\nHỗ trợ thẻ tối đa:	Không\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	2750 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot', 0, '2016-01-03'),
(54, 'Điện thoại iPhone 5s 128GB', 1, 1, 8490000, 'iphone-5s-16gb-6-400x460.png', 'Màn hình:	Retina HD, 5.5", 1080 x 1920 pixels\r\nCamera sau:	12 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	iOS 9\r\nCPU:	Apple A9, 2 nhân, 1.8 GHz\r\nChip đồ hoạ:	PowerVR GT7600\r\nRAM:	2GB\r\nBộ nhớ trong:	128GB\r\nHỗ trợ thẻ tối đa:	Không\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	2750 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot', 0, '2016-01-05'),
(55, 'Điện thoại Microsoft Lumia 950 XL', 2, 1, 16000000, 'microsoft-lumia-950-xl-400x460.png', 'Màn hình:	AMOLED 16 triệu màu, 5.7", 1440 x 2560 pixels\r\nCamera sau:	20 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	Windows 10 (for Mobile)\r\nCPU:	Snapdragon 810, 8 nhân, 4 nhân 1.5 GHz Cortex-A53 & 4 nhân 2 GHz Cortex-A57\r\nChip đồ hoạ:	Adreno 430\r\nRAM:	3GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	200GB\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	3340 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot\r\n', 1, '2016-04-29'),
(56, 'Điện thoại Microsoft Lumia 950', 2, 1, 14000000, 'microsoft-lumia-950-xl-400x460.png', 'Màn hình:	AMOLED 16 triệu màu, 5.7", 1440 x 2560 pixels\r\nCamera sau:	20 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	Windows 10 (for Mobile)\r\nCPU:	Snapdragon 810, 8 nhân, 4 nhân 1.5 GHz Cortex-A53 & 4 nhân 2 GHz Cortex-A57\r\nChip đồ hoạ:	Adreno 430\r\nRAM:	3GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	200GB\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	3340 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot\r\n', 0, '2016-01-04'),
(57, 'Điện thoại Microsoft Lumia 650 XL', 2, 1, 4600000, 'microsoft-lumia-950-xl-400x460.png', 'Màn hình:	AMOLED 16 triệu màu, 5.7", 1440 x 2560 pixels\r\nCamera sau:	20 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	Windows 10 (for Mobile)\r\nCPU:	Snapdragon 810, 8 nhân, 4 nhân 1.5 GHz Cortex-A53 & 4 nhân 2 GHz Cortex-A57\r\nChip đồ hoạ:	Adreno 430\r\nRAM:	3GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	200GB\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	3340 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot\r\n', 1, '2016-01-10'),
(58, 'Điện thoại Microsoft Lumia 650', 2, 1, 3700000, 'microsoft-lumia-950-xl-400x460.png', 'Màn hình:	AMOLED 16 triệu màu, 5.7", 1440 x 2560 pixels\r\nCamera sau:	20 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	Windows 10 (for Mobile)\r\nCPU:	Snapdragon 810, 8 nhân, 4 nhân 1.5 GHz Cortex-A53 & 4 nhân 2 GHz Cortex-A57\r\nChip đồ hoạ:	Adreno 430\r\nRAM:	3GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	200GB\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	3340 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot\r\n', 0, '2016-04-29'),
(59, 'Điện thoại Microsoft Lumia 550', 2, 1, 3000000, 'microsoft-lumia-950-xl-400x460.png', 'Màn hình:	AMOLED 16 triệu màu, 5.7", 1440 x 2560 pixels\r\nCamera sau:	20 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	Windows 10 (for Mobile)\r\nCPU:	Snapdragon 810, 8 nhân, 4 nhân 1.5 GHz Cortex-A53 & 4 nhân 2 GHz Cortex-A57\r\nChip đồ hoạ:	Adreno 430\r\nRAM:	3GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	200GB\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	3340 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot\r\n', 0, '2016-01-04'),
(60, 'Điện thoại Microsoft Lumia 535', 2, 1, 2400000, 'microsoft-lumia-950-xl-400x460.png', 'Màn hình:	AMOLED 16 triệu màu, 5.7", 1440 x 2560 pixels\r\nCamera sau:	20 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	Windows 10 (for Mobile)\r\nCPU:	Snapdragon 810, 8 nhân, 4 nhân 1.5 GHz Cortex-A53 & 4 nhân 2 GHz Cortex-A57\r\nChip đồ hoạ:	Adreno 430\r\nRAM:	3GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	200GB\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	3340 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot\r\n', 0, '2016-01-04'),
(61, 'Điện thoại Microsoft Lumia 430', 2, 1, 1600000, 'microsoft-lumia-950-xl-400x460.png', 'Màn hình:	AMOLED 16 triệu màu, 5.7", 1440 x 2560 pixels\r\nCamera sau:	20 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	Windows 10 (for Mobile)\r\nCPU:	Snapdragon 810, 8 nhân, 4 nhân 1.5 GHz Cortex-A53 & 4 nhân 2 GHz Cortex-A57\r\nChip đồ hoạ:	Adreno 430\r\nRAM:	3GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	200GB\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	3340 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, Wi-Fi hotspot\r\n', 0, '2016-01-03'),
(62, 'Điện thoại OPPO R7 Plus', 5, 1, 11500000, 'oppo-r7-plus-detail-400x533.png', 'Màn hình:	AMOLED 16 triệu màu, 6.0", 1080 x 1920 pixels\r\nCamera sau:	13 MP, Quay phim FullHD 1080p@30fps\r\nCamera trước:	8 MP\r\nHệ điều hành:	Android 5.1 (Lollipop)\r\nCPU:	Snapdragon 615, 8 nhân, Quad-core 1.5GHz + Quad-core 1.0GHz\r\nChip đồ hoạ:	Adreno 405\r\nRAM:	3GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	128 GB\r\nSố khe SIM:	2 SIM 2 sóng, Nano SIM\r\nDung lượng pin:	4100 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 1, '2016-01-04'),
(63, 'Điện thoại OPPO R7s', 5, 1, 9500000, 'oppo-r7-plus-detail-400x533.png', 'Màn hình:	AMOLED 16 triệu màu, 6.0", 1080 x 1920 pixels\r\nCamera sau:	13 MP, Quay phim FullHD 1080p@30fps\r\nCamera trước:	8 MP\r\nHệ điều hành:	Android 5.1 (Lollipop)\r\nCPU:	Snapdragon 615, 8 nhân, Quad-core 1.5GHz + Quad-core 1.0GHz\r\nChip đồ hoạ:	Adreno 405\r\nRAM:	3GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	128 GB\r\nSố khe SIM:	2 SIM 2 sóng, Nano SIM\r\nDung lượng pin:	4100 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 1, '2016-01-03'),
(64, 'Điện thoại OPPO F1', 5, 1, 6400000, 'oppo-r7-plus-detail-400x533.png', 'Màn hình:	AMOLED 16 triệu màu, 6.0", 1080 x 1920 pixels\r\nCamera sau:	13 MP, Quay phim FullHD 1080p@30fps\r\nCamera trước:	8 MP\r\nHệ điều hành:	Android 5.1 (Lollipop)\r\nCPU:	Snapdragon 615, 8 nhân, Quad-core 1.5GHz + Quad-core 1.0GHz\r\nChip đồ hoạ:	Adreno 405\r\nRAM:	3GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	128 GB\r\nSố khe SIM:	2 SIM 2 sóng, Nano SIM\r\nDung lượng pin:	4100 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 0, '2016-04-29'),
(65, 'Điện thoại OPPO Neo7', 5, 1, 4000000, 'oppo-r7-plus-detail-400x533.png', 'Màn hình:	AMOLED 16 triệu màu, 6.0", 1080 x 1920 pixels\r\nCamera sau:	13 MP, Quay phim FullHD 1080p@30fps\r\nCamera trước:	8 MP\r\nHệ điều hành:	Android 5.1 (Lollipop)\r\nCPU:	Snapdragon 615, 8 nhân, Quad-core 1.5GHz + Quad-core 1.0GHz\r\nChip đồ hoạ:	Adreno 405\r\nRAM:	3GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	128 GB\r\nSố khe SIM:	2 SIM 2 sóng, Nano SIM\r\nDung lượng pin:	4100 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 0, '2016-01-08'),
(66, 'Điện thoại OPPO R7 Lite', 5, 1, 6500000, 'oppo-r7-plus-detail-400x533.png', 'Màn hình:	AMOLED 16 triệu màu, 6.0", 1080 x 1920 pixels\r\nCamera sau:	13 MP, Quay phim FullHD 1080p@30fps\r\nCamera trước:	8 MP\r\nHệ điều hành:	Android 5.1 (Lollipop)\r\nCPU:	Snapdragon 615, 8 nhân, Quad-core 1.5GHz + Quad-core 1.0GHz\r\nChip đồ hoạ:	Adreno 405\r\nRAM:	3GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	128 GB\r\nSố khe SIM:	2 SIM 2 sóng, Nano SIM\r\nDung lượng pin:	4100 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, Dual-band, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 0, '2016-01-01'),
(67, 'Điện thoại Samsung Galaxy S6 Edge Plus', 4, 1, 20000000, 'samsung-galaxy-s6-edge-plus-400x533.png', 'Màn hình:	Quad HD, 5.7", 1440 x 2560 pixels\r\nCamera sau:	16 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	Android 5.1 (Lollipop)\r\nCPU:	Exynos 7420, 8 nhân, 4x1.5GHz Cortex-A53 & 4x2.1 GHz Cortex-A57\r\nChip đồ hoạ:	Mali-T760\r\nRAM:	4GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	Không\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	3000 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 1, '2016-01-08'),
(68, 'Điện thoại Samsung Galaxy S6 Edge 64GB', 4, 1, 18500000, 'samsung-galaxy-s6-edge-plus-400x533.png', 'Màn hình:	Quad HD, 5.7", 1440 x 2560 pixels\r\nCamera sau:	16 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	Android 5.1 (Lollipop)\r\nCPU:	Exynos 7420, 8 nhân, 4x1.5GHz Cortex-A53 & 4x2.1 GHz Cortex-A57\r\nChip đồ hoạ:	Mali-T760\r\nRAM:	4GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	Không\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	3000 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 0, '2016-01-05'),
(69, 'Điện thoại Samsung Galaxy Note 5', 4, 1, 18000000, 'samsung-galaxy-s6-edge-plus-400x533.png', 'Màn hình:	Quad HD, 5.7", 1440 x 2560 pixels\r\nCamera sau:	16 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	Android 5.1 (Lollipop)\r\nCPU:	Exynos 7420, 8 nhân, 4x1.5GHz Cortex-A53 & 4x2.1 GHz Cortex-A57\r\nChip đồ hoạ:	Mali-T760\r\nRAM:	4GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	Không\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	3000 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 0, '2016-01-04'),
(70, 'Điện thoại Samsung Galaxy S6 Edge 32GB', 4, 1, 17500000, 'samsung-galaxy-s6-edge-plus-400x533.png', 'Màn hình:	Quad HD, 5.7", 1440 x 2560 pixels\r\nCamera sau:	16 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	Android 5.1 (Lollipop)\r\nCPU:	Exynos 7420, 8 nhân, 4x1.5GHz Cortex-A53 & 4x2.1 GHz Cortex-A57\r\nChip đồ hoạ:	Mali-T760\r\nRAM:	4GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	Không\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	3000 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 0, '2016-01-04'),
(71, 'Điện thoại Samsung Galaxy S6 32GB', 4, 1, 14500000, 'samsung-galaxy-s6-edge-plus-400x533.png', 'Màn hình:	Quad HD, 5.7", 1440 x 2560 pixels\r\nCamera sau:	16 MP, Quay phim 4K 2160p@30fps\r\nCamera trước:	5 MP\r\nHệ điều hành:	Android 5.1 (Lollipop)\r\nCPU:	Exynos 7420, 8 nhân, 4x1.5GHz Cortex-A53 & 4x2.1 GHz Cortex-A57\r\nChip đồ hoạ:	Mali-T760\r\nRAM:	4GB\r\nBộ nhớ trong:	32 GB\r\nHỗ trợ thẻ tối đa:	Không\r\nSố khe SIM:	1 Sim, Nano SIM\r\nDung lượng pin:	3000 mAh\r\nKết nối:	Wi-Fi 802.11 a/b/g/n/ac, DLNA, Wi-Fi Direct, Wi-Fi hotspot', 1, '2016-01-08'),
(72, 'iPad Pro 3G 128GB', 1, 2, 26999000, 'ipad-pro-wifi-cellular-128gb-300-200x200.jpg', 'iPad Pro được trang bị màn hình 12.9 inch, lớn nhất từ trước đến nay đối với các sản phẩm tablet phổ biến Apple trang bị cho iPad Pro vi xử lý A9X có hiệu năng cực kỳ mạnh mẽ và khả năng xử lý đồ họa vượt trội Camera iSign 8.0MP và camera Facetime 1.2MP đảm bảo chất lượng ảnh chụp cũng như video call', 1, '2016-04-29'),
(73, 'iPad Pro wifi 32GB', 1, 2, 19999000, 'ipad-pro-wifi-cellular-128gb-300-200x200.jpg', 'iPad Pro được trang bị màn hình 12.9 inch, lớn nhất từ trước đến nay đối với các sản phẩm tablet phổ biến Apple trang bị cho iPad Pro vi xử lý A9X có hiệu năng cực kỳ mạnh mẽ và khả năng xử lý đồ họa vượt trội Camera iSign 8.0MP và camera Facetime 1.2MP đảm bảo chất lượng ảnh chụp cũng như video call', 1, '2016-04-28'),
(74, 'Galaxy Tab A 9.7', 4, 2, 7990000, 'samsung-galaxy-tab-a-plus-97-sm-p555-n-190x190.jpg', 'Bút S-pen giúp Galaxy Tab A Plus trở thành 1 trợ thủ đắc lực cho người dùng văn phòng. Có thể phác thảo nhanh, tốc ký hay đơn giản là những ghi chú.\nGalaxy Tab A có thiết kế đẹp, khung viền kim loại sáng bóng tạo cảm giác chắc chắn. Màn hình lớn đến 9.7 inch cho bạn giải trí, xem phim thú vị hơn.\nHỗ trợ khe Sim giúp Tab A có thể nghe gọi, nhắn tin như 1 chiếc smartphone', 1, '2016-04-29'),
(75, 'Galaxy Tab S2 8', 4, 2, 9990000, 'samsung-galaxy-tab-a-plus-97-sm-p555-n-190x190.jpg', 'Bút S-pen giúp Galaxy Tab A Plus trở thành 1 trợ thủ đắc lực cho người dùng văn phòng. Có thể phác thảo nhanh, tốc ký hay đơn giản là những ghi chú.\r\nGalaxy Tab A có thiết kế đẹp, khung viền kim loại sáng bóng tạo cảm giác chắc chắn. Màn hình lớn đến 9.7 inch cho bạn giải trí, xem phim thú vị hơn.\r\nHỗ trợ khe Sim giúp Tab A có thể nghe gọi, nhắn tin như 1 chiếc smartphone', 1, '2016-04-29'),
(76, 'Máy tính bảng Samsung Galaxy Tab A6 7.0', 4, 2, 4490000, 'samsung-galaxy-tab-a-70-400x460.png', 'Bút S-pen giúp Galaxy Tab A Plus trở thành 1 trợ thủ đắc lực cho người dùng văn phòng. Có thể phác thảo nhanh, tốc ký hay đơn giản là những ghi chú.\r\nGalaxy Tab A có thiết kế đẹp, khung viền kim loại sáng bóng tạo cảm giác chắc chắn. Màn hình lớn đến 9.7 inch cho bạn giải trí, xem phim thú vị hơn.\r\nHỗ trợ khe Sim giúp Tab A có thể nghe gọi, nhắn tin như 1 chiếc smartphone', 1, '2016-04-29'),
(77, 'Máy tính bảng Lenovo Phab 2GB', 4, 2, 4490000, 'lenovo-phab-2gb-400x460-400x460.png', 'Bút S-pen giúp Galaxy Tab A Plus trở thành 1 trợ thủ đắc lực cho người dùng văn phòng. Có thể phác thảo nhanh, tốc ký hay đơn giản là những ghi chú.\r\nGalaxy Tab A có thiết kế đẹp, khung viền kim loại sáng bóng tạo cảm giác chắc chắn. Màn hình lớn đến 9.7 inch cho bạn giải trí, xem phim thú vị hơn.\r\nHỗ trợ khe Sim giúp Tab A có thể nghe gọi, nhắn tin như 1 chiếc smartphone', 1, '2016-04-29');

-- --------------------------------------------------------

--
-- Table structure for table `producttype`
--

CREATE TABLE `producttype` (
  `type_ID` int(11) NOT NULL,
  `type_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `producttype`
--

INSERT INTO `producttype` (`type_ID`, `type_name`) VALUES
(1, 'Cellphone'),
(2, 'Tablet'),
(3, 'Laptop'),
(4, 'Speaker');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `User_ID` int(11) NOT NULL,
  `Username` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Password` varchar(200) COLLATE utf8_unicode_ci NOT NULL,
  `email` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `FirstName` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `LastName` varchar(225) COLLATE utf8_unicode_ci NOT NULL,
  `avatar` varchar(225) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`User_ID`, `Username`, `Password`, `email`, `FirstName`, `LastName`, `avatar`) VALUES
(1, 'phuongthao', '123', 'abc@mail.com', 'Thao', 'Phuong', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `manufactures`
--
ALTER TABLE `manufactures`
  ADD PRIMARY KEY (`manu_ID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `maloai` (`manu_ID`);

--
-- Indexes for table `producttype`
--
ALTER TABLE `producttype`
  ADD PRIMARY KEY (`type_ID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`User_ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `manufactures`
--
ALTER TABLE `manufactures`
  MODIFY `manu_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `ID` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;
--
-- AUTO_INCREMENT for table `producttype`
--
ALTER TABLE `producttype`
  MODIFY `type_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `User_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
