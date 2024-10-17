-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 03, 2024 at 07:01 AM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wishcart`
--

-- --------------------------------------------------------

--
-- Table structure for table `cart_list`
--

CREATE TABLE `cart_list` (
  `id` int NOT NULL,
  `customer_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `category_list`
--

CREATE TABLE `category_list` (
  `id` int NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `category_list`
--

INSERT INTO `category_list` (`id`, `name`, `description`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 'Sports Eye Protection', 'Sports eyewear is an ideal option for various activities whether indoor or outdoor. Lenses with impact resistance are important types of eyewear to help prevent any injuries to the eyes and keeping dust away. An anti-glare coating can help with glare from indoor lighting in a gymnasium or stadium-lit settings.', 1, 1, '2023-01-30 10:03:37', '2024-02-28 14:59:58'),
(2, 'Sunglasses', 'Prescription sunglasses are one of the most important types of eyewear with many modifications.  Sunglasses that have lenses with your eyes specific prescription designed into them, can help you see clearly while reducing the brightness and glare from your surroundings.', 1, 1, '2023-01-30 10:05:04', '2024-02-28 15:00:02'),
(3, 'BEDS', 'wide range of BEDs \r\nsingle,double,queen size and king size beds\r\n', 1, 0, '2023-01-30 10:06:13', '2024-03-26 10:48:51'),
(4, 'Clothes', 'Cloths', 1, 1, '2023-04-23 10:41:37', '2024-02-28 14:59:49'),
(5, 'SOFA', 'Wide range of Sofa', 1, 0, '2023-04-23 10:42:10', '2024-03-26 10:49:31'),
(6, 'Cup-board', 'All  types of cupboard available', 1, 1, '2023-04-23 10:42:27', '2024-05-03 11:57:04'),
(7, 'Budget and Expense Tracker ', 'q', 0, 1, '2024-03-15 08:37:41', '2024-03-15 08:37:47'),
(8, 'mens wear', 'all mens cloth available', 1, 1, '2024-03-15 08:38:15', '2024-03-15 08:38:55'),
(9, 'Mens wear', 'mens wear', 1, 0, '2024-05-03 11:57:21', '2024-05-03 11:57:21'),
(10, 'Women wear', 'womenn', 1, 0, '2024-05-03 11:57:37', '2024-05-03 11:57:37'),
(11, 'Electronics', 'Electronics', 1, 0, '2024-05-03 11:57:55', '2024-05-03 11:57:55'),
(12, 'Shoes', 'wide range of shoes', 1, 0, '2024-05-03 11:58:21', '2024-05-03 11:58:21');

-- --------------------------------------------------------

--
-- Table structure for table `customer_list`
--

CREATE TABLE `customer_list` (
  `id` int NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text,
  `lastname` text NOT NULL,
  `gender` varchar(100) NOT NULL,
  `contact` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text,
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer_list`
--

INSERT INTO `customer_list` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `email`, `password`, `avatar`, `date_created`, `date_updated`) VALUES
(1, 'Mark', 'D', 'Cooper', 'Male', '0912356498', 'mcooper@mail.com', 'c7162ff89c647f444fcaa5c635dac8c3', 'uploads/customers/1.png?v=1675045908', '2023-01-30 10:31:48', '2023-01-30 10:49:25'),
(2, 'aaa', 'ccc', 'bbb', 'Male', '121212121212', 'gxlcsxcotlsb@valanides.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, '2023-03-22 19:02:02', '2023-03-22 19:02:02'),
(3, 'Pawan', 'Pramod', 'Yadav', 'Male', '1234567890', 'cuubmejqphsnryp@valanides.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, '2023-03-22 19:06:03', '2023-03-22 19:06:03'),
(4, 'Shekhar', '', 'Padhy', 'Male', '121212121212', 'kvpugwcilvmv@valanides.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, '2023-03-22 19:06:56', '2023-03-22 19:06:56'),
(5, 'Shekhar', '', 'Padhy', 'Male', '121212121212', 'shekharpadhy123@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, '2023-03-22 19:07:45', '2023-03-22 19:07:45'),
(6, 'Singh', '', 'p9322', 'Male', '121212121212', 'Singhp9322@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', NULL, '2023-03-22 20:36:53', '2023-03-22 20:36:53'),
(7, 'devika', 'b', 'bhandari', 'Female', '9004671986', 'devika@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'uploads/customers/7.png?v=1710474130', '2024-03-15 09:12:10', '2024-03-15 09:13:49'),
(8, 'raj', 'b', 'kundra', 'Male', '890078978', 'Raj@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 'uploads/customers/8.png?v=1710474344', '2024-03-15 09:15:41', '2024-03-15 09:15:44');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `order_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '0',
  `price` float(12,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`order_id`, `product_id`, `quantity`, `price`) VALUES
(9, 24, 1, 499.00);

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int NOT NULL,
  `code` varchar(100) NOT NULL,
  `customer_id` int NOT NULL,
  `delivery_address` text NOT NULL,
  `total_amount` float(12,2) NOT NULL DEFAULT '0.00',
  `status` tinyint(1) NOT NULL DEFAULT '0' COMMENT '0=pending,\r\n1=packed,\r\n2=out for delivery,\r\n3=paid\r\n',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `code`, `customer_id`, `delivery_address`, `total_amount`, `status`, `date_created`, `date_updated`) VALUES
(2, '2023013000002', 1, 'Sample Address only 101', 1623.96, 3, '2023-01-30 10:34:56', '2023-01-30 10:51:56'),
(3, '2023032200001', 5, 'aaaa', 711.98, 0, '2023-03-22 19:18:31', '2023-03-22 19:18:31'),
(4, '2023032200002', 5, 'dsdsd', 699.99, 0, '2023-03-22 19:49:50', '2023-03-22 19:49:50'),
(5, '2023032200003', 5, 'dsdsd', 699.99, 0, '2023-03-22 19:49:57', '2023-03-22 19:49:57'),
(6, '2023032200004', 5, 'dsdsd', 699.99, 0, '2023-03-22 19:53:06', '2023-03-22 19:53:06'),
(7, '2023032200005', 5, 'aaaa', 355.99, 2, '2023-03-22 19:54:39', '2023-03-22 20:15:54'),
(8, '2023032200006', 6, 'gdfdg', 788.99, 3, '2023-03-22 20:37:16', '2023-03-22 20:38:01'),
(9, '2024031500001', 8, 'navi mumbai', 499.00, 2, '2024-03-15 09:16:35', '2024-03-15 09:25:27');

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int NOT NULL,
  `category_id` int NOT NULL,
  `brand` text NOT NULL,
  `name` text NOT NULL,
  `description` text NOT NULL,
  `dose` varchar(250) DEFAULT NULL,
  `price` float(12,2) NOT NULL DEFAULT '0.00',
  `image_path` text,
  `status` tinyint(1) NOT NULL DEFAULT '1',
  `delete_flag` tinyint(1) NOT NULL DEFAULT '0',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `category_id`, `brand`, `name`, `description`, `dose`, `price`, `image_path`, `status`, `delete_flag`, `date_created`, `date_updated`) VALUES
(20, 5, 'Wakefit', 'prenium sofa', 'prenium look sofa set', NULL, 34999.00, 'uploads/medicines//sofa2.jfif?v=1711430895', 1, 0, '2024-03-15 08:56:03', '2024-03-26 10:58:15'),
(21, 5, 'Wakefit', 'sofa set', 'affordable sofa set for all', NULL, 14999.00, 'uploads/medicines//sofa3.jfif?v=1711430999', 1, 0, '2024-03-15 08:57:05', '2024-03-26 10:59:59'),
(22, 6, 'burberry', 'Prenium cupboard', 'women\'s skirt wide range of collection', NULL, 65449.00, 'uploads/medicines//cupboard2.jfif?v=1711430561', 1, 0, '2024-03-15 08:58:11', '2024-03-26 10:52:41'),
(23, 6, 'burberry', 'wooden cupboard', 'long cubboard', NULL, 11999.00, 'uploads/medicines//cupboard1.jfif?v=1711430481', 1, 0, '2024-03-15 08:58:54', '2024-03-26 10:51:21'),
(24, 5, 'Wakefit', 'L-shape sofa', 'wide range and good quality', NULL, 33499.00, 'uploads/medicines//sofa1.jfif?v=1711430944', 1, 0, '2024-03-15 09:01:05', '2024-03-26 10:59:04'),
(25, 3, 'khakee', 'kids special bed', 'beds in  fancy look,sofa cum bed', NULL, 11299.00, 'uploads/medicines//bed2.jfif?v=1711430685', 1, 0, '2024-03-15 09:02:18', '2024-03-26 10:54:45'),
(26, 3, 'khakee', 'Bed in comfort', 'Prenium beds', NULL, 599.00, 'uploads/medicines//bed1.jfif?v=1711430621', 1, 0, '2024-03-15 09:03:07', '2024-03-26 10:53:41'),
(27, 3, 'khakee', 'Double Decker Bed', 'up down bed', NULL, 17999.00, 'uploads/medicines//bed3.jfif?v=1711430769', 1, 0, '2024-03-15 09:03:51', '2024-03-26 10:56:09'),
(28, 12, 'jordan', 'jordan shoes', 'jordan shoes', NULL, 80000.00, 'uploads/medicines//jordan.jpg?v=1714717761', 1, 0, '2024-05-03 11:59:21', '2024-05-03 11:59:21'),
(29, 12, 'Red tape', 'red tape shoes', 'bset and affordable shoes', NULL, 1199.00, 'uploads/medicines//shoes1.jpg?v=1714717801', 1, 0, '2024-05-03 12:00:01', '2024-05-03 12:00:01'),
(30, 12, 'canvas ', 'canvas shoes', 'canvas shoes', NULL, 1999.00, 'uploads/medicines//shoes2.jpg?v=1714717839', 1, 0, '2024-05-03 12:00:39', '2024-05-03 12:00:39'),
(31, 12, 'bata', 'formal shoes', 'formal shoes for office', NULL, 1099.00, 'uploads/medicines//shoes3.jpg?v=1714717877', 1, 0, '2024-05-03 12:01:17', '2024-05-03 12:01:17'),
(32, 9, 'us polo', 'thsirt', 'tshirt', NULL, 899.00, 'uploads/medicines//tshirt.jpg?v=1714717923', 1, 0, '2024-05-03 12:02:03', '2024-05-03 12:02:03'),
(33, 9, 'oversized', 'oversized product', 'oversized thsirt astehteic choice', NULL, 899.00, 'uploads/medicines//oversized.jpg?v=1714717965', 1, 0, '2024-05-03 12:02:45', '2024-05-03 12:02:45'),
(34, 9, 'levis', 'shirt', 'mens shirt', NULL, 700.00, 'uploads/medicines//shirt.jpg?v=1714717994', 1, 0, '2024-05-03 12:03:14', '2024-05-03 12:03:14'),
(35, 10, 'burbeerry', 'onepiece', 'red color cloth', NULL, 999.00, 'uploads/medicines//women4.jpg?v=1714718056', 1, 0, '2024-05-03 12:04:16', '2024-05-03 12:04:16'),
(36, 10, 'panneri', 'saree', 'women saree  ', NULL, 989.00, 'uploads/medicines//women2.jpg?v=1714718092', 1, 0, '2024-05-03 12:04:52', '2024-05-03 12:04:52'),
(37, 10, 'jump suit', 'jump suit', 'jump suit', NULL, 1999.00, 'uploads/medicines//women1.jpg?v=1714718131', 1, 0, '2024-05-03 12:05:31', '2024-05-03 12:05:31'),
(38, 10, 'longee', 'long dress', 'women dress in yellow colour', NULL, 1999.00, 'uploads/medicines//women3.jpg?v=1714718175', 1, 0, '2024-05-03 12:06:15', '2024-05-03 12:06:15'),
(39, 11, 'oneplus', 'oneplus nord ce3', '...', NULL, 19999.00, 'uploads/medicines//mobile.jpg?v=1714719049', 1, 0, '2024-05-03 12:20:49', '2024-05-03 12:20:49'),
(40, 11, 'nikea', 'camera', 'camera', NULL, 999.00, 'uploads/medicines//camera.jpg?v=1714719123', 1, 0, '2024-05-03 12:22:03', '2024-05-03 12:22:03'),
(41, 11, 'jbl', 'headphones', 'best bass earphone', NULL, 999.00, 'uploads/medicines//headphones.jpg?v=1714719171', 1, 0, '2024-05-03 12:22:51', '2024-05-03 12:22:51'),
(42, 11, 'ps5', 'gaming console', 'gaming console', NULL, 9999.00, 'uploads/medicines//gameconsole.jpg?v=1714719220', 1, 0, '2024-05-03 12:23:40', '2024-05-03 12:23:40');

-- --------------------------------------------------------

--
-- Table structure for table `stock_list`
--

CREATE TABLE `stock_list` (
  `id` int NOT NULL,
  `product_id` int NOT NULL,
  `code` varchar(100) NOT NULL,
  `quantity` float(12,2) NOT NULL DEFAULT '0.00',
  `date_created` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `stock_list`
--

INSERT INTO `stock_list` (`id`, `product_id`, `code`, `quantity`, `date_created`, `date_updated`) VALUES
(17, 23, 'rr', 200.00, '2024-03-15 09:08:33', '2024-03-15 09:08:33'),
(18, 22, 'qw', 100.00, '2024-03-15 09:08:51', '2024-03-15 09:08:51'),
(19, 26, 'k1', 200.00, '2024-03-15 09:09:08', '2024-03-15 09:09:08'),
(20, 25, 'k2', 100.00, '2024-03-15 09:09:24', '2024-03-15 09:09:24'),
(21, 27, 'k3', 50.00, '2024-03-15 09:09:37', '2024-03-15 09:09:37'),
(22, 20, 'm1', 400.00, '2024-03-15 09:09:50', '2024-03-15 09:09:50'),
(23, 21, 'm2', 40.00, '2024-03-15 09:10:29', '2024-03-15 09:10:29'),
(24, 24, 'w3', 100.00, '2024-03-15 09:10:49', '2024-03-15 09:10:49'),
(25, 31, '78267', 100.00, '2024-05-03 12:23:53', '2024-05-03 12:23:53'),
(26, 35, '...', 200.00, '2024-05-03 12:24:08', '2024-05-03 12:24:08'),
(27, 30, '222', 344.00, '2024-05-03 12:24:20', '2024-05-03 12:24:20'),
(28, 41, 'uu', 1000.00, '2024-05-03 12:24:38', '2024-05-03 12:24:38'),
(29, 28, 'ww', 50.00, '2024-05-03 12:24:51', '2024-05-03 12:24:51'),
(30, 37, 'hjgsh', 899.00, '2024-05-03 12:25:29', '2024-05-03 12:25:29'),
(31, 34, '67ty', 800.00, '2024-05-03 12:25:50', '2024-05-03 12:25:50'),
(32, 32, '788', 788.00, '2024-05-03 12:26:05', '2024-05-03 12:26:05'),
(33, 38, '898', 999.00, '2024-05-03 12:26:26', '2024-05-03 12:26:26'),
(34, 40, 'camera', 34.00, '2024-05-03 12:26:51', '2024-05-03 12:26:51'),
(35, 39, '67we', 1000.00, '2024-05-03 12:27:09', '2024-05-03 12:27:09'),
(36, 33, 'uudd', 2343.00, '2024-05-03 12:27:24', '2024-05-03 12:27:24'),
(37, 36, 'tre', 999.00, '2024-05-03 12:27:54', '2024-05-03 12:27:54'),
(38, 42, '098', 899.00, '2024-05-03 12:28:28', '2024-05-03 12:28:28');

-- --------------------------------------------------------

--
-- Table structure for table `stock_out`
--

CREATE TABLE `stock_out` (
  `id` int NOT NULL,
  `order_id` int NOT NULL,
  `stock_id` int NOT NULL,
  `quantity` int NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Stash House'),
(6, 'short_name', 'Stash House'),
(11, 'logo', 'uploads/logo.png?v=1711430259'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/cover.png?v=1709112903'),
(17, 'phone', '456-987-1231'),
(18, 'mobile', '09123456987 / 094563212222 '),
(19, 'email', 'info@sample.com'),
(20, 'address', '7087 Henry St. Clifton Park, NY 12065');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_donation`
--

CREATE TABLE `tbl_donation` (
  `id` int NOT NULL,
  `donation` float NOT NULL,
  `user_id` int NOT NULL,
  `date` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_donation`
--

INSERT INTO `tbl_donation` (`id`, `donation`, `user_id`, `date`) VALUES
(16, 55, 6, '2023-04-22'),
(17, 66, 6, '2023-04-22'),
(18, 77, 6, '2023-04-22'),
(19, 77, 6, '2023-04-22'),
(20, 77, 6, '2023-04-22');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `middlename` text,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `date_added` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `date_updated` datetime DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='2';

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `middlename`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', '', 'Admin', 'admin', '21232f297a57a5a743894a0e4a801fc3', 'uploads/avatars/1.png?v=1649834664', NULL, 1, '2021-01-20 14:02:37', '2024-02-28 13:17:42'),
(8, 'Claire', '', 'Blake', 'cblake', 'cd74fae0a3adf459f73bbf187607ccea', 'uploads/avatars/8.png?v=1675047323', NULL, 2, '2023-01-30 10:55:23', '2023-01-30 10:55:23');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `category_list`
--
ALTER TABLE `category_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `customer_list`
--
ALTER TABLE `customer_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `stock_list`
--
ALTER TABLE `stock_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `stock_out`
--
ALTER TABLE `stock_out`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `stock_id` (`stock_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_donation`
--
ALTER TABLE `tbl_donation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cart_list`
--
ALTER TABLE `cart_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `category_list`
--
ALTER TABLE `category_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `customer_list`
--
ALTER TABLE `customer_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=43;

--
-- AUTO_INCREMENT for table `stock_list`
--
ALTER TABLE `stock_list`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `stock_out`
--
ALTER TABLE `stock_out`
  MODIFY `id` int NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_donation`
--
ALTER TABLE `tbl_donation`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD CONSTRAINT `customer_id_fk_cl` FOREIGN KEY (`customer_id`) REFERENCES `customer_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_id_fk_cl` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_id_fk_oi` FOREIGN KEY (`order_id`) REFERENCES `order_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_id_fk_oi` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `customer_id_fk_ol` FOREIGN KEY (`customer_id`) REFERENCES `customer_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_list`
--
ALTER TABLE `product_list`
  ADD CONSTRAINT `category_id_fk_pl` FOREIGN KEY (`category_id`) REFERENCES `category_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stock_list`
--
ALTER TABLE `stock_list`
  ADD CONSTRAINT `product_id_fk_sl` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `stock_out`
--
ALTER TABLE `stock_out`
  ADD CONSTRAINT `order_id_fk_so` FOREIGN KEY (`order_id`) REFERENCES `order_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `stock_id_fk_so` FOREIGN KEY (`stock_id`) REFERENCES `stock_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
