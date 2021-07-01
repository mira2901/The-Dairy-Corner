-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 21, 2021 at 10:14 AM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dairy`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `adm_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `code` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`adm_id`, `username`, `password`, `email`, `code`, `date`) VALUES
(9, 'mira', 'd657d95186fa956aa0b70a8d8dfd78bb', 'mira@gmail.com', 'QX5ZMN', '2021-06-03 03:45:45');

-- --------------------------------------------------------

--
-- Table structure for table `admin_codes`
--

CREATE TABLE `admin_codes` (
  `id` int(222) NOT NULL,
  `codes` varchar(6) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin_codes`
--

INSERT INTO `admin_codes` (`id`, `codes`) VALUES
(1, 'QX5ZMN'),
(2, 'QFE6ZM'),
(3, 'QMZR92'),
(4, 'QPGIOV'),
(5, 'QSTE52'),
(6, 'QMTZ2J');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `c_id` int(222) NOT NULL,
  `c_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`c_id`, `c_name`, `date`) VALUES
(11, 'Milk', '2021-06-10 08:45:37'),
(12, 'Cheese', '2021-06-14 08:21:17'),
(13, 'Ghee', '2021-06-03 09:17:47'),
(15, 'Curd (Dahi)', '2021-06-14 08:21:43'),
(16, 'Flavoured Milk', '2021-06-14 08:22:57'),
(17, 'Butter ', '2021-06-14 08:23:06'),
(18, 'Butter Milk', '2021-06-14 08:23:11'),
(19, 'Paneer ', '2021-06-14 08:23:21'),
(20, 'Yogurt', '2021-06-14 08:23:33');

-- --------------------------------------------------------

--
-- Table structure for table `company`
--

CREATE TABLE `company` (
  `id` int(222) NOT NULL,
  `name` varchar(222) NOT NULL,
  `image` text NOT NULL,
  `description` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `company`
--

INSERT INTO `company` (`id`, `name`, `image`, `description`, `date`) VALUES
(1, 'Amul', '60baec7f37215.png', 'Amul, is an Indian dairy cooperative society, based at Anand in the Indian state of Gujarat.Formed in 1946, it is a cooperative brand managed by a cooperative body, the Gujarat Co-operative Milk Marketing Federation Ltd. ', '2021-06-05 03:16:15'),
(3, 'Mother Dairy', '60bdacdea4e99.jpg', '  Mother Dairy Fruit & Vegetable Pvt Ltd is an Indian food processing company that manufactures, markets and sells milk, milk products and other edible products.', '2021-06-07 05:21:34');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `p_id` int(222) NOT NULL,
  `id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `name` varchar(222) NOT NULL,
  `description` varchar(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `img` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`p_id`, `id`, `c_id`, `name`, `description`, `price`, `img`, `date`) VALUES
(18, 1, 11, 'Amul Taaza Homogenised Toned Milk, 1L Tetra Pack', 'This is a Vegetarian product, No need to boil,Cut open and drink, No need to refrigerate till open, Stays fresh for 2 days after opening if kept in refrigerator, No powder or water added, No preservative or chemical, Easy ', '64.00', '60c1d33f613fc.jpg', '2021-06-20 14:17:26'),
(19, 1, 11, 'Lactose free milk 250 ML', 'MILK', '25.00', '60c49d3e6ed03.jpg', '2021-06-20 14:17:26'),
(20, 1, 11, 'Amul camel milk 500 ML', 'Camel milk', '50.00', '60c49d9d100df.jpg', '2021-06-20 14:17:26'),
(21, 1, 11, 'Amul camel milk 250 ML', 'Camel milk', '25.00', '60c49dc5bc60a.jpg', '2021-06-20 14:17:26'),
(22, 1, 11, 'Amul Cow milk 500 ML', 'Cow milk', '30.00', '60c49e3282179.png', '2021-06-20 14:17:26'),
(23, 1, 11, 'Amul Cow milk 1 Ltr.', 'Cow milk', '60.00', '60c49e6474fd0.png', '2021-06-20 14:17:26'),
(24, 1, 11, 'Amul Gold Milk 500 ML', 'Gold Milk', '30.00', '60c49ebfbff61.png', '2021-06-20 14:17:26'),
(25, 1, 11, 'Amul Gold Milk 1 Ltr', 'Gold Milk', '60.00', '60c49f000f71e.png', '2021-06-20 14:17:26'),
(26, 1, 11, 'Amul Gold Milk 6 Ltr.', 'Gold Milk', '312.00', '60c49f2a0ca33.png', '2021-06-20 14:17:26'),
(27, 1, 11, 'Amul gold milk- homogenized standardized 1 Ltr ', 'Gold Milk', '65.00', '60c49f8d64889.png', '2021-06-20 14:17:26'),
(28, 1, 11, 'Amul Taaza Milk 500 ML', 'Pouch', '23.00', '60c4a0ce13697.jpg', '2021-06-20 14:17:26'),
(29, 1, 11, 'Amul Taaza 1 Ltr.', 'Pouch ', '46.00', '60c4a0f215a96.jpg', '2021-06-20 14:17:26'),
(30, 1, 11, 'Amul Slim and Trim Milk 500 ML', 'Low fat, Pouch', '20.00', '60c4a18777510.jpg', '2021-06-20 14:17:26'),
(31, 1, 11, 'Amul Slim and Trim Milk 1 Ltr', 'Low fat, Pouch', '40.00', '60c4a1f11b52c.jpg', '2021-06-20 14:17:26'),
(32, 1, 11, 'Amul Slim and Trim Milk 6 Ltr', 'Low fat, Pouch', '240.00', '60c4a211b9930.jpg', '2021-06-20 14:17:26'),
(33, 1, 11, 'Amul slim n trim skimmed milk ', 'Low fat', '75.00', '60c4a2541485c.jpg', '2021-06-20 14:17:26'),
(34, 1, 11, 'Amul Chai Mazza 500 ML', 'chai special', '50.00', '60c4a28869c3f.jpg', '2021-06-20 14:17:26'),
(35, 1, 11, 'Amul Chai Mazza 1 Ltr', 'cha', '100.00', '60c4a2b1b2ba2.jpg', '2021-06-20 14:17:26'),
(36, 1, 11, 'Amul Shakti Milk 500 ML', 'Shakti milk', '25.00', '60c4a63a07fd9.jpg', '2021-06-20 14:17:26'),
(37, 1, 11, 'Amul Shakti Milk 1 Ltr', 'Shakti milk', '50.00', '60c4a65faa61e.jpg', '2021-06-20 14:17:26'),
(38, 1, 11, 'Amul Shakti Milk 6 Ltr', 'Shakti milk', '300.00', '60c4a67dbcfc7.jpg', '2021-06-20 14:17:26'),
(39, 1, 11, 'Amul Diamond Milk 500 ML', 'Diamond milk', '25.00', '60c4a6b62ce72.jpg', '2021-06-20 14:17:26'),
(40, 1, 11, 'Amul Diamond Milk 1 Ltr', 'Diamond milk', '50.00', '60c4a6dca213f.jpg', '2021-06-20 14:17:26'),
(41, 1, 11, 'Amul Buffalo Milk 500 ML', 'Buffalo milk', '30.00', '60c4a709ed26b.jpg', '2021-06-20 14:17:26'),
(42, 1, 11, 'Amul Buffalo Milk 1 Ltr', 'Buffalo milk', '60.00', '60c4a72b38c91.jpg', '2021-06-20 14:17:26'),
(43, 1, 11, 'Amul Buffalo Milk 6 Ltr', 'Buffalo milk', '360.00', '60c4a76a6ea18.jpg', '2021-06-20 14:17:26'),
(44, 3, 11, 'Mother dairy Full cream Milk 500 ML', 'Full cream milk', '28.00', '60c70ded46a4d.jpg', '2021-06-20 14:17:26'),
(45, 3, 11, 'Mother dairy Full cream Milk 1 Ltr', 'Full cream milk', '55.00', '60c70e16a5c65.jpg', '2021-06-20 14:17:26'),
(46, 3, 11, 'Mother dairy Toned Milk 500 ML', 'Toned Milk', '25.00', '60c70e5351c47.jpg', '2021-06-20 14:17:26'),
(47, 3, 11, 'Mother dairy Toned Milk 1 Ltr', 'Toned Milk', '50.00', '60c70e79f3223.jpg', '2021-06-20 14:17:26'),
(48, 3, 11, 'Mother dairy Toned Milk 1 Ltr Tetrapak', 'Toned milk Tetrapak', '65.00', '60c70f18f198a.jpg', '2021-06-20 14:17:26'),
(49, 3, 11, 'Mother dairy Standardized milk 500 ML', 'Standardized milk ', '25.00', '60c70f5b93e9a.jpg', '2021-06-20 14:17:26'),
(50, 3, 11, 'Mother dairy Standardized milk 1 Ltr', 'Standardized milk ', '50.00', '60c70f8461b72.jpg', '2021-06-20 14:17:26'),
(51, 3, 11, 'Mother Dairy Cow milk 500 ML', 'Cow milk', '25.00', '60c70fafd2d3a.jpg', '2021-06-20 14:17:26'),
(52, 3, 11, 'Mother Dairy Cow milk 1 Ltr', 'Cow milk', '50.00', '60c70fdd9a7a6.jpg', '2021-06-20 14:17:26'),
(53, 3, 11, 'Mother Dairy Super-T Milk 200 ML', 'Super - T Milk', '25.00', '60c7101cda30b.jpg', '2021-06-20 14:17:26'),
(54, 3, 11, 'Mother Dairy Super-T Milk 500 ML', 'Super - T Milk', '50.00', '60c7104cab87b.jpg', '2021-06-20 14:17:26'),
(55, 3, 11, 'Mother Dairy Dietz Milk 500 ML', 'Low fat milk', '25.00', '60c7108ab25d8.jpg', '2021-06-20 14:17:26'),
(56, 3, 11, 'Mother Dairy Live Lite Milk 180 ML ', 'live lite ', '10.00', '60c710d4b6909.jpg', '2021-06-20 14:17:26'),
(57, 3, 11, 'Mother Dairy Live Lite Milk 450 ML ', 'Live lite', '25.00', '60c710f8317b4.jpg', '2021-06-20 14:17:26'),
(58, 3, 11, 'Mother Dairy Live Lite Milk 1 Ltr', 'Live lite', '55.00', '60c711221bd2d.jpg', '2021-06-20 14:17:26'),
(59, 3, 15, 'Mother Dairy Ultimate Dahi 200 G', 'Ultimate dahi', '30.00', '60c7125686329.jpg', '2021-06-20 14:17:26'),
(60, 3, 15, 'Mother Dairy Ultimate Dahi 400 G', 'Ultimate dahi', '60.00', '60c71279a9d6b.jpg', '2021-06-20 14:17:26'),
(61, 3, 15, 'Mother Dairy Nutrifit Probiotic Dahi 85 G', 'Probiotic dahi ', '10.00', '60c712be94617.jpg', '2021-06-20 14:17:26'),
(62, 3, 15, 'Mother Dairy Nutrifit Probiotic Dahi 200 G', 'Probiotic dahi ', '30.00', '60c712e7a3c2d.jpg', '2021-06-20 14:17:26'),
(63, 3, 15, 'Mother Dairy Nutrifit Probiotic Dahi 400 G', 'Probiotic dahi ', '55.00', '60c71310207ba.jpg', '2021-06-20 14:17:26'),
(64, 3, 15, 'Mother Dairy Classic Dahi 85G (Cup)', 'Classic Dahi (cup)', '10.00', '60c713eb4027f.jpg', '2021-06-20 14:17:26'),
(65, 3, 15, 'Mother Dairy Classic Dahi 200G (Cup)', 'Classic Dahi(cup)', '25.00', '60c714380d333.jpg', '2021-06-20 14:17:26'),
(66, 3, 15, 'Mother Dairy Classic Dahi 400G (Cup)', 'Classic Dahi (cup)', '50.00', '60c714e920bfa.jpg', '2021-06-20 14:17:26'),
(67, 3, 15, 'Mother Dairy Classic Dahi 200G (Pouch)', 'Classic Dahi (Pouch)', '15.00', '60c715288c625.jpg', '2021-06-20 14:17:26'),
(69, 3, 15, 'Mother Dairy Classic Dahi 400G (Pouch)', 'Classic Dahi (Pouch)', '30.00', '60c715f05c4cf.jpg', '2021-06-20 14:17:26'),
(70, 3, 15, 'Mother Dairy Classic Dahi 1 Kg (Pouch)', 'Classic Dahi (Pouch)', '65.00', '60c7165f9a08b.jpg', '2021-06-20 14:17:26'),
(71, 3, 18, 'Mother Dairy Chach 400 ml', 'chach', '10.00', '60c7169a63f69.jpg', '2021-06-20 14:17:26'),
(72, 3, 18, 'Mother Dairy Premium Chach 450 ML', 'Premium Chach', '16.00', '60c716d00372f.jpg', '2021-06-20 14:17:26'),
(73, 3, 18, 'Mother Dairy Tadka Chach 200 ML (Bottle)', 'Tadka chach (Bottle)', '12.00', '60c71707101f0.jpg', '2021-06-20 14:17:26'),
(74, 3, 18, 'Mother Dairy Tadka Chach 350 ML (Pouch)', 'Tadka chach (Pouch)', '10.00', '60c71735e5b0a.jpg', '2021-06-20 14:17:26'),
(75, 3, 18, 'Mother Dairy Tadka Chach 200 ML (Tetrapak)', 'Tadka chach (Tetrapak)', '12.00', '60c717741c8bd.jpg', '2021-06-20 14:17:26'),
(76, 3, 18, 'Mother Dairy Nutrifit Probiotic Drink (Mango) 80 ML', 'Probiotic drink mango flavor', '10.00', '60c717c24f039.jpg', '2021-06-20 14:17:26'),
(77, 3, 18, 'Mother Dairy Nutrifit Probiotic Drink (Strawberry) 80 ML', 'Probiotic drink strawberry flavor', '10.00', '60c717f6ed710.jpg', '2021-06-20 14:17:26'),
(78, 3, 19, 'Mother Dairy Paneer 200 G', 'Paneer', '85.00', '60c71855e12c2.jpg', '2021-06-20 14:17:26'),
(79, 3, 17, 'Mother Dairy Butter 100G', 'Butter', '47.00', '60c718779174b.jpg', '2021-06-20 14:17:26'),
(80, 3, 17, 'Mother Dairy Butter 500G', 'Butter', '235.00', '60c7189d8127c.jpg', '2021-06-20 14:17:26'),
(81, 3, 12, 'Mother Dairy Cheese Slice ', '200 G (10 Slice)', '130.00', '60c719070ef24.jpg', '2021-06-20 14:17:26'),
(82, 3, 12, 'Mother Dairy Cheese Cubes', '180 G ( 10 Cubes )', '110.00', '60c7194de78df.jpg', '2021-06-20 14:17:26'),
(83, 3, 12, 'Mother Dairy Cheese Spread ', '200 G', '100.00', '60c719741357d.jpg', '2021-06-20 14:17:26'),
(84, 3, 12, 'Mother Dairy Cheese Block', '200G', '105.00', '60c719974e644.jpg', '2021-06-20 14:17:26'),
(85, 3, 12, 'Mother Dairy Piri Piri Cheese Spread ', '200G', '110.00', '60c719c949c91.jpg', '2021-06-20 14:17:26'),
(86, 3, 12, 'Mother Dairy Garlic Herbs Cheese Spread ', '200G', '110.00', '60c719f526d2a.jpg', '2021-06-20 14:17:26'),
(87, 3, 20, 'Mother Dairy Yogurt Mango ', '100G', '25.00', '60c71a237cf14.jpg', '2021-06-20 14:17:26'),
(88, 3, 20, 'Mother Dairy Yogurt Blueberry ', '100G', '25.00', '60c71a529b15d.jpg', '2021-06-20 14:17:26'),
(89, 3, 20, 'Mother Dairy Yogurt Raspberry', '100G', '25.00', '60c71a7055e97.jpg', '2021-06-20 14:17:26'),
(90, 3, 16, 'Mother Dairy Kesar Elaichi Milk (Bottle)', '180 ML', '25.00', '60c71ac6dbcfb.jpg', '2021-06-20 14:17:26'),
(91, 3, 16, 'Mother Dairy Chocolate Milk (Bottle)', '180 ML', '25.00', '60c71aee4c350.jpg', '2021-06-20 14:17:26'),
(92, 3, 16, 'Mother Dairy Coffee Milk (Bottle)', '180 ML', '25.00', '60c71b1e3d6a3.jpg', '2021-06-20 14:17:26'),
(93, 3, 16, 'Mother Dairy Haldi Milk (Bottle)', '180 ML', '25.00', '60c71b40af160.jpg', '2021-06-20 14:17:26');

-- --------------------------------------------------------

--
-- Table structure for table `purchase`
--

CREATE TABLE `purchase` (
  `pr_id` int(222) NOT NULL,
  `s_id` int(222) NOT NULL,
  `c_id` int(222) NOT NULL,
  `p_name` varchar(222) NOT NULL,
  `quantity` varchar(222) NOT NULL,
  `uprice` decimal(10,2) NOT NULL,
  `tamount` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `purchase`
--

INSERT INTO `purchase` (`pr_id`, `s_id`, `c_id`, `p_name`, `quantity`, `uprice`, `tamount`, `date`) VALUES
(2, 1, 11, 'Amul Gold Milk 1 Ltr', '36', '60.00', '2160', '2021-06-20 16:18:33'),
(3, 2, 11, 'Mother dairy Full cream Milk 1 Ltr', '35', '55.00', '1925', '2021-06-20 16:22:55');

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `s_id` int(222) NOT NULL,
  `s_name` varchar(222) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`s_id`, `s_name`, `date`) VALUES
(1, 'Amul Limited', '2021-06-14 14:09:47'),
(2, 'Mother Dairy', '2021-06-14 14:12:34');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `u_id` int(222) NOT NULL,
  `username` varchar(222) NOT NULL,
  `f_name` varchar(222) NOT NULL,
  `l_name` varchar(222) NOT NULL,
  `email` varchar(222) NOT NULL,
  `phone` varchar(222) NOT NULL,
  `password` varchar(222) NOT NULL,
  `address` text NOT NULL,
  `status` int(222) NOT NULL DEFAULT 1,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`u_id`, `username`, `f_name`, `l_name`, `email`, `phone`, `password`, `address`, `status`, `date`) VALUES
(33, 'mira', 'mira', 'patel', 'mira@gmail.com', '7418596377', 'd657d95186fa956aa0b70a8d8dfd78bb', 'dahisar', 1, '2021-06-14 03:58:00'),
(34, 'khyati', 'khyati', 'solanki', 'khyati@gmail.com', '7485963131', '101b42c0d84ab9d8d35e577dbcc90968', 'dahisar', 1, '2021-06-07 08:44:19');

-- --------------------------------------------------------

--
-- Table structure for table `users_orders`
--

CREATE TABLE `users_orders` (
  `o_id` int(222) NOT NULL,
  `u_id` int(222) NOT NULL,
  `name` varchar(222) NOT NULL,
  `quantity` int(222) NOT NULL,
  `price` decimal(10,2) NOT NULL,
  `status` varchar(222) DEFAULT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_orders`
--

INSERT INTO `users_orders` (`o_id`, `u_id`, `name`, `quantity`, `price`, `status`, `date`) VALUES
(39, 33, '', 1, '25.00', 'closed', '2021-06-19 06:20:02'),
(40, 33, '', 6, '64.00', NULL, '2021-06-19 06:13:39'),
(41, 33, '', 1, '64.00', NULL, '2021-06-20 13:39:08'),
(42, 33, '', 1, '25.00', NULL, '2021-06-20 13:39:08'),
(43, 33, '', 1, '64.00', NULL, '2021-06-20 13:45:42'),
(44, 33, '', 1, '25.00', NULL, '2021-06-20 13:45:43'),
(45, 33, '', 1, '25.00', NULL, '2021-06-20 13:45:43'),
(46, 33, '', 1, '30.00', NULL, '2021-06-20 13:45:43');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`adm_id`);

--
-- Indexes for table `admin_codes`
--
ALTER TABLE `admin_codes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`c_id`);

--
-- Indexes for table `company`
--
ALTER TABLE `company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`p_id`);

--
-- Indexes for table `purchase`
--
ALTER TABLE `purchase`
  ADD PRIMARY KEY (`pr_id`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`s_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `users_orders`
--
ALTER TABLE `users_orders`
  ADD PRIMARY KEY (`o_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `adm_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `admin_codes`
--
ALTER TABLE `admin_codes`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `c_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `company`
--
ALTER TABLE `company`
  MODIFY `id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `p_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=94;

--
-- AUTO_INCREMENT for table `purchase`
--
ALTER TABLE `purchase`
  MODIFY `pr_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `s_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `u_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `users_orders`
--
ALTER TABLE `users_orders`
  MODIFY `o_id` int(222) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
