-- phpMyAdmin SQL Dump
-- version 4.9.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2020 at 01:41 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.2.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `my_table_product`
--

-- --------------------------------------------------------

--
-- Table structure for table `category_product`
--

CREATE TABLE `category_product` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_520_ci NOT NULL DEFAULT '1',
  `created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_product`
--

INSERT INTO `category_product` (`id`, `name`, `image`, `detail`, `status`, `created`) VALUES
(6, 'Máy lau', '1585046027-maydapxe.jfif', 'Máy lau', 'Used', 1234567),
(7, 'Máy công nghiệp', '1585046063-maymay.jfif', 'Máy công nghiệp', 'New', 1234567),
(8, 'Máy gia công', '1585046082-maytutlua.jfif', '	Máy gia công', 'Used', 1584785457),
(9, 'Máy làm sạch', '1585046113-maynuoc nong.jfif', 'Máy làm sạch', 'New', 1234567),
(11, 'Máy vệ sinh', '1585046158-maygatlienhop.jpg.jfif', 'Máy vệ sinh', 'New', 1584785457),
(35, 'Máy đập công nghiệp', '1585046793-maydapcongnghiep.jfif', 'Máy đập công nghiệp', 'Used', 20120103),
(36, 'Máy lau', '1585046027-maydapxe.jfif', 'Máy lau', 'Used', 1234567),
(37, 'Máy công nghiệp', '1585046063-maymay.jfif', 'Máy công nghiệp', 'New', 1234567),
(38, 'Máy gia công', '1585046082-maytutlua.jfif', '	Máy gia công', 'Used', 1584785457),
(39, 'Máy làm sạch', '1585046113-maynuoc nong.jfif', 'Máy làm sạch', 'New', 1234567);

-- --------------------------------------------------------

--
-- Table structure for table `category_topic`
--

CREATE TABLE `category_topic` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` date NOT NULL,
  `user` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category_topic`
--

INSERT INTO `category_topic` (`id`, `name`, `created`, `user`) VALUES
(1, 'Hướng dẫn sử dụng', '2020-02-04', 'CCC'),
(2, 'Tin tức', '2020-02-05', 'DDD'),
(3, 'Thông tin', '2020-02-04', 'CCC'),
(4, 'Chỉ dẫn', '2020-02-04', 'CCC');

-- --------------------------------------------------------

--
-- Table structure for table `color`
--

CREATE TABLE `color` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `color`
--

INSERT INTO `color` (`id`, `name`) VALUES
(1, 'Màu tím'),
(2, 'Màu đỏ'),
(3, 'Màu xanh'),
(4, 'Màu vàng');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `created` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `comment`
--

INSERT INTO `comment` (`id`, `user_id`, `product_id`, `name`, `content`, `created`) VALUES
(1, 2514556, 12145456, 'Khiếu nại', 'Sản phẩm lỗi', '2020-02-04'),
(2, 124215, 1254211, 'Đổi bảo hành', 'sản phẩm có vấn đề', '2020-02-02'),
(3, 2154545, 54546455, 'Không mua', 'Sản phẩm ok', '2020-02-04'),
(4, 1321564, 5454512, 'Cho em hỏi', 'tư vấn sản phẩm', '2020-02-02'),
(5, 2147483647, 212312321, 'Máy hút', 'Bảo trì', '2012-12-14'),
(6, 2514556, 12145456, 'Khiếu nại', 'Sản phẩm lỗi', '2020-02-04'),
(7, 2154545, 54546455, 'Không mua', 'Sản phẩm ok', '2020-02-04'),
(11, 2514556, 12145456, 'Khiếu nại', 'Sản phẩm lỗi', '2020-02-04'),
(12, 2154545, 54546455, 'Không mua hang', 'Sản phẩm ok', '2020-02-04'),
(13, 2514556, 12145456, 'Khiếu nại', 'Sản phẩm lỗi', '2020-02-04'),
(14, 2154545, 54546455, 'Không mua', 'Sản phẩm ok', '2020-02-04'),
(15, 124215, 1254211, 'Đổi bảo hành', 'sản phẩm có vấn đề', '2020-02-02'),
(16, 1321564, 5454512, 'Cho em hỏi', 'tư vấn sản phẩm', '2020-02-02');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `phone` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `address`, `phone`) VALUES
(5, 'Tran Thi B', '25 Phan chu trinh.', 98653),
(6, 'Nguyen van hao', '36 Bui Thi Nghe', 98562548),
(7, 'Tran Thi Be', '25 Phan chu trinh', 98653256),
(8, 'Nguyen van hao', '36 Bui Thi Nghe', 98562548),
(9, 'Nguyen van hao', '36 Bui Thi Nghe', 98562548),
(10, 'Tran Thi Be', '25 Phan chu trinh.Q5', 98653256),
(11, 'Nguyen van hao', '36 Bui Thi Nghe', 98562548),
(12, 'Tran Thi Be', '25 Phan chu trinh', 98653256),
(15, 'Tran Thi Tao', '45 Phan boi chau', 92512156),
(16, 'Trần Hạo Dân', 'Q3.HCm', 952124466);

-- --------------------------------------------------------

--
-- Table structure for table `info_table`
--

CREATE TABLE `info_table` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `content` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `info_table`
--

INSERT INTO `info_table` (`id`, `name`, `content`) VALUES
(1, 'Giới Thiệu', 'Giới thiệu sản phẩm'),
(2, 'Bảo hành', 'Cửa hàng liên hệ');

-- --------------------------------------------------------

--
-- Table structure for table `login_user`
--

CREATE TABLE `login_user` (
  `id` int(11) NOT NULL,
  `name` varchar(60) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login_user`
--

INSERT INTO `login_user` (`id`, `name`, `username`, `password`) VALUES
(1, 'Tung', 'tung', '123456'),
(0, 'Teo', 'Teo', '123456'),
(1, 'Tung', 'tung', '123456'),
(2, 'Teo', 'Teo', '123456');

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `address` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `order_date` date NOT NULL,
  `deliver_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order`
--

INSERT INTO `order` (`id`, `user_id`, `address`, `order_date`, `deliver_date`) VALUES
(1, 2, 'HCM', '2020-02-02', '2020-02-03'),
(4, 2, 'Vinh Long', '2020-02-27', '2020-02-04'),
(5, 2, 'HCM', '2020-02-02', '2020-02-03'),
(6, 2, 'Vinh Long', '2020-02-27', '2020-02-04');

-- --------------------------------------------------------

--
-- Table structure for table `order_detail`
--

CREATE TABLE `order_detail` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `price` int(11) NOT NULL,
  `quantity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_detail`
--

INSERT INTO `order_detail` (`id`, `order_id`, `product_id`, `price`, `quantity`) VALUES
(4, 4, 4, 5000, 3),
(5, 1, 6, 5000, 10),
(6, 4, 7, 5000, 10),
(39, 1, 2, 3000, 54),
(40, 4, 56, 15000, 30),
(41, 15, 32, 50000, 48),
(43, 54654, 54654, 56456, 564564);

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `id` int(11) NOT NULL,
  `category_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `status` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `picture` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `decription` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) DEFAULT NULL,
  `created` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`id`, `category_id`, `name`, `status`, `image`, `picture`, `decription`, `detail`, `price`, `created`) VALUES
(1, 123, 'Máy lau chén', 'Used', '1585133667-avarta.jpg.jfif', 'Máy lau chén', 'Máy lau chén', 'Máy lau chén', 150000, 20140201),
(333, 333, 'Máy may', 'New', '1585040441-maymay.jfif', 'Máy may', 'Máy may', 'Máy may', 300000, 20141212),
(444, 444, 'Máy quạt', 'Used', '1585040589-maylaukinh.jfif', 'Máy quạt', 'Máy quạt', 'Máy quạt', 500000, 20141215),
(222261, 15, 'Máy gặt liên hợp ', 'New', '1585050069-maygatlienhop.jpg.jfif', 'Máy gặt liên hợp ', 'Máy gặt liên hợp ', 'Máy gặt liên hợp ', 150000, 20140203),
(222262, 65, 'Máy lau kính', 'Used', '1585036691-abc.jfif', 'Máy lau kính', 'Máy lau kính', 'Máy lau kính', 10000, 25123212),
(222263, 15, 'Máy nước nóng', 'New', '1585050053-456.jfif', 'Máy nước nóng', 'Máy nước nóng', 'Máy nước nóng', 200000, 21523521),
(222265, 15, 'Máy gặt liên hợp ', 'Used', '1585050041-maydapxe.jfif', 'Máy gặt liên hợp ', 'Máy gặt liên hợp ', 'Máy gặt liên hợp ', 150000, 20140203),
(222266, 65, 'Máy lau kính', 'Used', '1585036691-abc.jfif', 'Máy lau kính', 'Máy lau kính', 'Máy lau kính', 10000, 25123212),
(222267, 15, 'Máy nước nóng', 'New', '1585043900-456.jfif', 'Máy nước nóng', 'Máy nước nóng', 'Máy nước nóng', 200000, 21523521);

-- --------------------------------------------------------

--
-- Table structure for table `product_color`
--

CREATE TABLE `product_color` (
  `id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `color_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_color`
--

INSERT INTO `product_color` (`id`, `product_id`, `color_id`) VALUES
(1, 5, 1),
(2, 5, 2),
(3, 6, 1),
(4, 6, 3),
(5, 7, 3),
(6, 7, 4),
(7, 8, 2),
(8, 8, 3);

-- --------------------------------------------------------

--
-- Table structure for table `topic`
--

CREATE TABLE `topic` (
  `id` int(11) NOT NULL,
  `category_topic_id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `detail` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `topic`
--

INSERT INTO `topic` (`id`, `category_topic_id`, `name`, `detail`, `image`, `created`) VALUES
(2, 1, 'Hướng dẫn sử dụng máy lau', 'Trên Remote của chiếc robot ILife Vacuum được thiết kế với những chức năng chính sau:\r\n    \r\n-Nút “ CLEAND “ dịch ra có nghĩa là “ DỌN DẸP “ hay “ LÀM SẠCH “ với chiếc nút này bạn có thể điều khiển cho ROBOT hoạt động hay dừn', '1585228668-maydapcongnghiep.jfif', '2020-02-19'),
(3, 2, 'Tin tức nông dân', 'Hiện, trang trại dê DTH farmt liên kết cùng hơn 500 đơn vị phát triển sản xuất theo mô hình khép kín từ đầu vào đến lo bao tiêu đầu ra cho bà con, các hộ liên kết.\r\n\r\nCụ thể, trang trại DTH farmt sẽ chịu trách nhiệm quảng bá thương hiệu, tìm đầu ra và ký ', '1585228745-images.jpg.jfif', '2020-02-03'),
(4, 2, 'Tin tức tiêu dùng', '(Tieudung.vn) - Vẽ vời ra các thông tin tài liệu để khách hàng tin tưởng mình đang có dự án ở một khu đất có thật, rồi nhận tiền mua bán nền đất đến 70 – 80%, thu hàng trăm tỷ đồng của khách hàng, sau đó khất lần khất lữa nhiều năm không hoàn trả lại tiền', '1585228760-maydapcongnghiep.jfif', '2020-02-19'),
(5, 2, 'Tin tức nông dân', 'Hiện, trang trại dê DTH farmt liên kết cùng hơn 500 đơn vị phát triển sản xuất theo mô hình khép kín từ đầu vào đến lo bao tiêu đầu ra cho bà con, các hộ liên kết.Cụ thể, trang trại DTH farmt sẽ chịu trách nhiệm quảng bá thương hiệu, tìm đầu ra và ký ', '1585228772-abc.jfif', '2020-02-03'),
(8, 1, 'Hướng dẫn sử dụng máy lau', 'Trên Remote của chiếc robot ILife Vacuum được thiết kế với những chức năng chính sau:    -Nút “ CLEAND “ dịch ra có nghĩa là “ DỌN DẸP “ hay “ LÀM SẠCH “ với chiếc nút này bạn có thể điều khiển cho ROBOT hoạt động hay dừn', '1585228991-mayquat.jfif', '2020-02-19'),
(14, 45, 'Máy hút chân không', 'Máy hút chân không (Vacuum Sealer) ngày càng được sử dụng rộng rãi để bảo quản thực phẩm trong gia đình, trong lĩnh vực y tế dược phẩm với mục đích kéo dài thời gian bảo quản, đảm bảo chất lượng và độ an toàn khi vận chuyển…', '1585229501-maydapcongnghiep.jfif', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(16) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `phone` int(11) NOT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `email`, `username`, `password`, `address`, `phone`, `image`, `created`) VALUES
(25, 'Tèo', 'teo@gmail.com', 'teo1', '123456', 'Q3, HCM.', 925124125, '1585401946-images.jpg.jfif', 1234567),
(26, 'teo', 'teo@gmail.com', 'teo23', '0000', 'Q3, HCM', 952124466, '1585401961-abc.jfif', 1234567),
(38, 'Tùng', 'b@gmail.com', 'tung', '1111', 'Q3.HCm', 951235466, '1585401978-avarta.jpg.jfif', 1234567),
(39, 'Tùng 2', 'b@gmail.com', 'tung2', '2222', 'Q3.HCm', 945125487, '1585402045-456.jfif', 1234567),
(46, 'Thị Nợ', 'thino@gmail.com', 'thino123', '123', 'Truong cong dinh Q3.HCm', 2147483647, '1585402577-images.jpg.jfif', 20150205);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `category_product`
--
ALTER TABLE `category_product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category_topic`
--
ALTER TABLE `category_topic`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `color`
--
ALTER TABLE `color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `info_table`
--
ALTER TABLE `info_table`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order`
--
ALTER TABLE `order`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_detail`
--
ALTER TABLE `order_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_color`
--
ALTER TABLE `product_color`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `topic`
--
ALTER TABLE `topic`
  ADD PRIMARY KEY (`id`,`category_topic_id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `category_product`
--
ALTER TABLE `category_product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `category_topic`
--
ALTER TABLE `category_topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `color`
--
ALTER TABLE `color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `info_table`
--
ALTER TABLE `info_table`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order`
--
ALTER TABLE `order`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `order_detail`
--
ALTER TABLE `order_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=44;

--
-- AUTO_INCREMENT for table `product`
--
ALTER TABLE `product`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222269;

--
-- AUTO_INCREMENT for table `product_color`
--
ALTER TABLE `product_color`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `topic`
--
ALTER TABLE `topic`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
