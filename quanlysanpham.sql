-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 08, 2023 at 01:34 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `quanlysanpham`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbnhomsanpham`
--

CREATE TABLE `tbnhomsanpham` (
  `manhom` int(11) NOT NULL,
  `tennhom` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbnhomsanpham`
--

INSERT INTO `tbnhomsanpham` (`manhom`, `tennhom`) VALUES
(1, 'Hoa Đà Lạt'),
(2, 'Hoa sinh nhật'),
(3, 'Hoa cưới');

-- --------------------------------------------------------

--
-- Table structure for table `tbsanpham`
--

CREATE TABLE `tbsanpham` (
  `maSP` int(11) NOT NULL,
  `tenSP` varchar(100) NOT NULL,
  `hinhAnhSP` varchar(100) NOT NULL,
  `gioiThieuSP` varchar(1000) NOT NULL,
  `giaSP` int(11) NOT NULL,
  `manhom` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbsanpham`
--

INSERT INTO `tbsanpham` (`maSP`, `tenSP`, `hinhAnhSP`, `gioiThieuSP`, `giaSP`, `manhom`) VALUES
(1, 'Blushing', 'blushing.jpg', 'Bó hoa Blushing là một trong lựa chọn hoàn hảo cho những dịp đặc biệt để dành tặng cho người mình yêu thương.', 249000, 3),
(2, 'Sunny Smile', 'sunny_smile.jpg', 'Bó hoa được gói đẹp mắt và hiện đại với sự kết hợp của Hướng Dương và Salem tím xinh xắn là lựa chọn hoàn hảo cho ngày Valentine hoặc bất kỳ dịp đặc biệt nào.', 299000, 2),
(3, 'Timeless Elegance', 'timeless_elegance.jpg', 'Bó Hoa Timeless Elegance của nhà Flowerstore mang phong cách Hàn Quốc nhẹ nhàng tươi tắn. Đây chắc chắn sẽ là món quà ngọt ngào và tinh tế dành tặng người thương, gia đình hoặc bạn bè thân yêu!', 379000, 1),
(4, 'Joyful Life', 'joyful_life.jpg', 'Bó hoa rực rỡ và tươi tắn với hoa Hướng Dương được gói xinh xắn. Đây sẽ là món quà bất ngờ và hoàn hảo dành tặng người thương, gia đình hoặc bạn bè.', 329000, 3),
(5, 'Happy Success', 'happy_success.jpg', 'Những cành cúc Tana bé xinh tô điểm cho cành cúc Ping Pong chính là món quà vô cùng phù hợp cho buổi lễ Tốt Nghiệp. Cùng lưu giữ những khoảnh khắc đầy cảm xúc ấy với bó hoa của sự thành công và hạnh phúc - Happy Success nhé!', 229000, 2),
(6, 'Beautiful You', 'beautiful_you.jpg', 'Bó hoa hồng đỏ đơn giản được gói rất trẻ trung và thanh lịch là một trong những mẫu Best Seller của chúng tôi. Là lựa chọn hoàn hảo cho ngày Valentine hoặc bất kỳ dịp đặc biệt nào.', 579000, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbtaikhoan`
--

CREATE TABLE `tbtaikhoan` (
  `user` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tbtaikhoan`
--

INSERT INTO `tbtaikhoan` (`user`, `password`) VALUES
('admin', '123456'),
('nhanvien', '123456');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbnhomsanpham`
--
ALTER TABLE `tbnhomsanpham`
  ADD PRIMARY KEY (`manhom`);

--
-- Indexes for table `tbsanpham`
--
ALTER TABLE `tbsanpham`
  ADD PRIMARY KEY (`maSP`),
  ADD KEY `manhom` (`manhom`);

--
-- Indexes for table `tbtaikhoan`
--
ALTER TABLE `tbtaikhoan`
  ADD PRIMARY KEY (`user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbnhomsanpham`
--
ALTER TABLE `tbnhomsanpham`
  MODIFY `manhom` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbsanpham`
--
ALTER TABLE `tbsanpham`
  MODIFY `maSP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbsanpham`
--
ALTER TABLE `tbsanpham`
  ADD CONSTRAINT `FK_sanpham_nhomsanpham` FOREIGN KEY (`manhom`) REFERENCES `tbnhomsanpham` (`manhom`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
