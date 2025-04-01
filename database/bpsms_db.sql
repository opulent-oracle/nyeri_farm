-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2025 at 11:41 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bpsms_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `brand_list`
--

CREATE TABLE `brand_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `image_path` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brand_list`
--

INSERT INTO `brand_list` (`id`, `name`, `image_path`, `delete_flag`, `status`, `date_created`, `date_updated`) VALUES
(1, 'Yamaha', 'uploads/brands/1.png?v=1642731446', 1, 1, '2022-01-21 10:03:12', '2025-03-24 13:05:57'),
(2, 'Toyota', 'uploads/brands/2.jpeg?v=1739008174', 1, 1, '2022-01-21 10:10:24', '2025-03-24 13:05:52'),
(3, 'BMW', 'uploads/brands/3.png?v=1642731467', 1, 1, '2022-01-21 10:17:47', '2025-03-24 13:01:00'),
(4, 'Rolls Royce', 'uploads/brands/4.jpeg?v=1739008314', 1, 1, '2022-01-21 10:18:15', '2025-03-24 13:01:13'),
(5, 'Subaru', 'uploads/brands/5.jpeg?v=1739008432', 1, 1, '2022-01-21 10:18:35', '2025-03-24 13:05:47'),
(6, 'Mercedes Benz', 'uploads/brands/6.jpeg?v=1739008219', 1, 1, '2022-01-21 13:54:27', '2025-03-24 13:01:08'),
(7, 'Volkswagen', 'uploads/brands/7.jpeg?v=1739008340', 1, 1, '2022-01-21 13:55:09', '2025-03-24 13:06:03'),
(8, '	Potatoes', 'uploads/brands/8.webp?v=1742810735', 0, 1, '2025-03-24 13:05:35', '2025-03-24 13:05:35'),
(9, 'Vegetables', 'uploads/brands/9.jfif?v=1742810795', 0, 1, '2025-03-24 13:06:35', '2025-03-24 13:06:35'),
(10, 'Cereals', 'uploads/brands/10.jfif?v=1742810844', 0, 1, '2025-03-24 13:06:54', '2025-03-24 13:07:24'),
(11, 'Fruits', 'uploads/brands/11.jfif?v=1742810876', 0, 1, '2025-03-24 13:07:56', '2025-03-24 13:07:56'),
(12, '	Oil seeds', 'uploads/brands/12.jpg?v=1742810910', 0, 1, '2025-03-24 13:08:30', '2025-03-24 13:08:30'),
(13, 'spices', 'uploads/brands/13.jfif?v=1742810957', 0, 1, '2025-03-24 13:09:17', '2025-03-24 13:09:17');

-- --------------------------------------------------------

--
-- Table structure for table `cart_list`
--

CREATE TABLE `cart_list` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` float NOT NULL,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cart_list`
--

INSERT INTO `cart_list` (`id`, `client_id`, `product_id`, `quantity`, `date_added`) VALUES
(14, 1, 3, 2, '2022-01-25 11:08:50');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(30) NOT NULL,
  `category` varchar(250) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `category`, `status`, `delete_flag`, `date_created`) VALUES
(1, 'Accessories', 1, 1, '2021-09-30 09:42:40'),
(2, 'Chassis', 1, 1, '2021-09-30 09:43:00'),
(3, 'Tools', 1, 1, '2021-09-30 09:43:48'),
(5, 'Tires', 1, 1, '2022-01-21 10:33:07'),
(6, 'Mugs', 1, 1, '2022-01-21 10:33:31'),
(7, 'Oils', 1, 1, '2022-01-21 10:33:47'),
(8, 'Machine Parts', 1, 1, '2022-01-21 10:34:07'),
(9, 'Body Parts', 1, 1, '2022-01-21 13:55:39'),
(10, 'Hatchback', 1, 1, '2025-02-08 12:54:55'),
(11, 'Convertible', 1, 1, '2025-02-08 12:55:13'),
(12, 'Sports Car', 1, 1, '2025-02-08 12:55:41'),
(13, 'SUV', 1, 1, '2025-02-08 12:56:50'),
(14, 'Sedan', 1, 1, '2025-02-08 12:57:05'),
(15, 'Wagon', 1, 1, '2025-02-08 12:57:19'),
(16, 'Coupe', 1, 1, '2025-02-08 12:57:48'),
(17, 'Vegetables', 1, 0, '2025-03-24 13:01:23'),
(18, 'Cereals', 1, 0, '2025-03-24 13:02:31'),
(19, 'Fruits', 1, 0, '2025-03-24 13:02:46'),
(20, 'spices', 1, 0, '2025-03-24 13:03:05'),
(21, 'Oil seeds', 1, 0, '2025-03-24 13:03:19'),
(22, '	Potatoes', 1, 0, '2025-03-24 13:03:42');

-- --------------------------------------------------------

--
-- Table structure for table `client_list`
--

CREATE TABLE `client_list` (
  `id` int(30) NOT NULL,
  `firstname` text NOT NULL,
  `middlename` text DEFAULT NULL,
  `lastname` text NOT NULL,
  `gender` text NOT NULL,
  `contact` text NOT NULL,
  `address` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_added` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `client_list`
--

INSERT INTO `client_list` (`id`, `firstname`, `middlename`, `lastname`, `gender`, `contact`, `address`, `email`, `password`, `status`, `delete_flag`, `date_created`, `date_added`) VALUES
(1, 'John', 'D', 'Smith', 'Male', '09123456897', 'This is my sample address only', 'jsmith@sample.com', '1254737c076cf867dc53d60a0364f38e', 1, 0, '2022-01-24 13:33:44', '2022-01-25 13:15:11'),
(2, 'Manuuh', '', 'Male', '', '0712345678', '213 KAPSABET', 'manuuhmanuela78@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', 1, 0, '2025-02-08 13:13:25', NULL),
(3, 'buba', 'buba', 'Male', '', '0713121912', '2etue', 'kevoo@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 0, '2025-03-16 15:25:25', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `mechanics_list`
--

CREATE TABLE `mechanics_list` (
  `id` int(30) NOT NULL,
  `name` text NOT NULL,
  `contact` varchar(50) NOT NULL,
  `email` varchar(150) NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `mechanics_list`
--

INSERT INTO `mechanics_list` (`id`, `name`, `contact`, `email`, `status`, `date_created`) VALUES
(1, 'Mike Williams', '09123456789', 'mwilliams@sample.com', 1, '2021-09-30 10:26:11'),
(2, 'George Wilson', '09112355799', 'gwilson@gmail.com', 1, '2021-09-30 10:30:58');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `id` int(30) NOT NULL,
  `order_id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` float NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`id`, `order_id`, `product_id`, `quantity`, `date_added`) VALUES
(8, 6, 1, 1, '2022-01-24 16:37:18'),
(9, 6, 4, 2, '2022-01-24 16:37:18'),
(10, 7, 4, 2, '2022-01-25 10:43:19'),
(11, 7, 3, 4, '2022-01-25 10:43:19'),
(13, 9, 6, 1, '2025-03-16 15:27:59');

-- --------------------------------------------------------

--
-- Table structure for table `order_list`
--

CREATE TABLE `order_list` (
  `id` int(30) NOT NULL,
  `ref_code` varchar(100) NOT NULL,
  `client_id` int(30) NOT NULL,
  `total_amount` float NOT NULL DEFAULT 0,
  `delivery_address` text NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0 COMMENT '0=pending,1 = packed, 2 = for delivery, 3 = on the way, 4 = delivered, 5=cancelled',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `order_list`
--

INSERT INTO `order_list` (`id`, `ref_code`, `client_id`, `total_amount`, `delivery_address`, `status`, `date_created`, `date_updated`) VALUES
(6, '202201-00001', 1, 11500, 'This is my sample address only', 5, '2022-01-24 16:37:18', '2022-01-24 17:09:42'),
(7, '202201-00002', 1, 11080, 'This is my sample address only', 2, '2022-01-25 10:43:19', '2022-01-25 10:58:04'),
(9, '202503-00001', 3, 1000000, '2etue', 3, '2025-03-16 15:27:59', '2025-03-16 15:30:28');

-- --------------------------------------------------------

--
-- Table structure for table `product_list`
--

CREATE TABLE `product_list` (
  `id` int(30) NOT NULL,
  `brand_id` int(30) NOT NULL,
  `category_id` int(30) NOT NULL,
  `name` text NOT NULL,
  `models` text NOT NULL,
  `description` text NOT NULL,
  `price` float NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `image_path` text NOT NULL,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `product_list`
--

INSERT INTO `product_list` (`id`, `brand_id`, `category_id`, `name`, `models`, `description`, `price`, `status`, `image_path`, `delete_flag`, `date_created`, `date_updated`) VALUES
(1, 1, 3, 'Crash Guard', 'Nmax V2', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed mattis, ex in commodo rhoncus, magna felis malesuada mi, et pharetra justo enim eu sapien. Nam fermentum viverra risus, in eleifend libero ultricies sit amet. Etiam gravida lacinia tellus eget vehicula. Nunc vel risus quis leo ornare cursus. Curabitur consectetur placerat ex, nec vestibulum arcu fermentum sed. Proin ipsum ipsum, consectetur sed aliquam a, tincidunt a sapien. Proin viverra ultricies tellus id volutpat. Integer cursus ligula id massa cursus, ut commodo ipsum venenatis. Maecenas et dui sit amet lorem fermentum imperdiet. Nulla a porta urna. Vivamus ut magna nisl.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px;&quot;&gt;Donec condimentum lacus nec nulla condimentum fermentum. Quisque tincidunt turpis tellus. Pellentesque pretium egestas ipsum molestie dictum. Quisque eu magna id erat fermentum pharetra vel vitae risus. Suspendisse potenti. Nullam mauris dolor, sollicitudin ut leo rutrum, dictum rutrum magna. Curabitur ut laoreet mi, scelerisque pulvinar leo. Phasellus id neque aliquam, posuere nisl sed, malesuada nibh. In euismod risus eu elit pharetra, id consequat lorem iaculis. Orci varius natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Phasellus nec eros est. Nunc nec erat at lectus blandit condimentum. Sed sit amet mi nisi. Donec ullamcorper, metus vulputate viverra porta, nisl lectus porta elit, eget dictum quam ipsum cursus massa. Vestibulum eget purus nec augue bibendum facilisis ac sed lacus.&lt;/p&gt;', 2500, 1, 'uploads/products/1.png?v=1642735227', 1, '2022-01-21 11:20:27', '2025-02-08 13:01:30'),
(2, 5, 3, 'Steering Dumper', 'Sample', '&lt;p&gt;sample&lt;/p&gt;', 15000, 1, 'uploads/products/2.png?v=1642736907', 1, '2022-01-21 11:48:27', '2022-01-21 11:53:41'),
(3, 3, 7, 'Oil 4T 10W-40 (1L)', 'Sample', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px;&quot;&gt;Maecenas eget condimentum metus, et faucibus turpis. Sed elementum commodo hendrerit. Nulla maximus tincidunt mi, ut convallis mauris congue sit amet. Morbi nec tincidunt sapien. Nulla metus urna, facilisis eget bibendum quis, auctor a tortor. Vestibulum eros urna, euismod ut aliquam ac, cursus sed quam. Donec accumsan tortor at velit malesuada molestie. Aenean porttitor quam nibh, pulvinar pellentesque justo tristique in. Proin nec lacinia metus. Aliquam erat volutpat. Proin egestas, ante vitae rutrum malesuada, erat nisi ultricies leo, eu viverra sem nisl in metus. Phasellus vitae risus malesuada, cursus metus ac, eleifend metus. Morbi ornare sodales fringilla. Nulla venenatis dictum felis varius commodo. Proin eu leo in eros consectetur viverra dignissim ac justo. Curabitur euismod velit sit amet ex condimentum, ut iaculis nisi consectetur.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px;&quot;&gt;Ut id volutpat nulla. Aliquam eu orci at ipsum mattis mollis vel eu est. Mauris sit amet finibus tortor. Phasellus sodales massa sed erat varius, non hendrerit eros hendrerit. Pellentesque eu turpis odio. Aenean viverra justo eget eros sollicitudin porttitor. Duis convallis suscipit odio sit amet facilisis. Suspendisse nec tempus leo. Aliquam tincidunt arcu quis justo posuere ullamcorper. Integer sagittis nisi id suscipit semper. Vestibulum tempor pretium ligula, in bibendum orci tincidunt eget. Mauris aliquet porttitor consectetur. In ut neque magna. Phasellus purus elit, pretium et imperdiet eu, ultrices sit amet libero. Praesent ac ligula rhoncus massa aliquet maximus sit amet rhoncus quam. Phasellus eget tempor nisi, quis dapibus dui.&lt;/p&gt;', 520, 1, 'uploads/products/3.png?v=1642828345', 1, '2022-01-21 13:57:15', '2025-02-08 13:01:45'),
(4, 7, 5, 'Tire 101 110/70/17', 'Any', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px;&quot;&gt;Vivamus euismod porttitor nisl eu tincidunt. Nulla ac enim ut risus pretium rutrum vel at augue. Nullam eu arcu luctus, elementum sapien sed, blandit mi. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer sodales imperdiet mauris, tincidunt molestie elit tristique sit amet. Mauris sit amet erat quis leo laoreet facilisis. Donec a egestas nibh, eget auctor ligula. Pellentesque ut nisi varius mauris dictum dictum sed nec nulla. Curabitur condimentum eros sagittis eros eleifend accumsan. Sed eu sapien sit amet nisl viverra tincidunt. Interdum et malesuada fames ac ante ipsum primis in faucibus.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px;&quot;&gt;In pretium, tortor et fermentum eleifend, ante tortor rhoncus magna, ac eleifend odio libero id nibh. Etiam rutrum purus vel mattis mattis. Praesent sit amet ligula pulvinar, dapibus lorem eu, luctus augue. Cras sed libero finibus, posuere libero a, dapibus purus. Quisque dolor risus, sollicitudin nec finibus ut, ullamcorper tempor enim. Nulla auctor semper ullamcorper. Sed fringilla lectus finibus mauris ultrices cursus. Vivamus laoreet eros a purus blandit fermentum. Suspendisse ornare ipsum dictum lacus ornare, sed viverra enim pretium. Vivamus pulvinar commodo porttitor.&lt;/p&gt;', 4500, 1, 'uploads/products/4.jpg?v=1642745034', 1, '2022-01-21 14:03:54', '2025-02-08 13:01:39'),
(5, 5, 6, 'Product 101', 'Any', '&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px;&quot;&gt;Phasellus dapibus et massa quis interdum. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia curae; Aenean et nisl justo. Etiam condimentum nulla condimentum lectus vestibulum porta. Etiam maximus gravida nibh, rutrum pulvinar nulla posuere congue. Pellentesque habitant morbi tristique senectus et netus et malesuada fames ac turpis egestas. Donec vel ante sem. Proin suscipit rhoncus felis.&lt;/p&gt;&lt;p style=&quot;margin-right: 0px; margin-bottom: 15px; margin-left: 0px; padding: 0px; text-align: justify; color: rgb(0, 0, 0); font-family: &amp;quot;Open Sans&amp;quot;, Arial, sans-serif; font-size: 14px;&quot;&gt;Proin varius libero ut venenatis dictum. Cras finibus nibh quis egestas vestibulum. Integer pharetra dictum libero non maximus. Praesent imperdiet malesuada ante, quis tincidunt ligula. Vestibulum suscipit blandit porta. Praesent et urna neque. Nulla hendrerit nisl et diam pharetra pharetra. Sed maximus, nunc quis luctus facilisis, ex mauris aliquet magna, sit amet consectetur est dolor ac est. Integer venenatis nisl odio, nec varius lacus ornare ac. Fusce sit amet laoreet est. Suspendisse potenti.&lt;/p&gt;', 10000, 1, 'uploads/products/5.png?v=1642828905', 1, '2022-01-22 13:21:45', '2025-02-08 13:01:35'),
(6, 3, 11, 'BMW 2017 MODEL', '2017', '&lt;p&gt;SPORTS CAR&lt;/p&gt;', 1000000, 1, 'uploads/products/6.jpeg?v=1739008878', 1, '2025-02-08 13:01:18', '2025-03-24 13:09:28'),
(7, 6, 12, 'Mercede Benz C-Class', '2021', 'red in color', 2000000, 1, 'uploads/products/7.jpeg?v=1739008999', 1, '2025-02-08 13:03:18', '2025-03-24 13:09:36'),
(8, 4, 12, 'Rolls Royce Phantom', '2023', '&lt;p&gt;WHITE IN COLOR&lt;/p&gt;', 5000000, 1, 'uploads/products/8.jpeg?v=1739009099', 1, '2025-02-08 13:04:58', '2025-03-24 13:09:41'),
(9, 5, 16, 'Subaru Forester XT', '2005', '&lt;p&gt;BLUE IN COLOR&lt;/p&gt;', 3200000, 1, 'uploads/products/9.jpeg?v=1739009166', 1, '2025-02-08 13:06:06', '2025-03-24 13:09:51'),
(10, 7, 10, 'Valkswagen Plolo', '2020', '&lt;p&gt;RED IN COLOR&lt;/p&gt;', 4000000, 1, 'uploads/products/10.jpeg?v=1739009280', 1, '2025-02-08 13:07:59', '2025-03-24 13:10:02'),
(11, 2, 14, 'Toyota Landcruiser', '2022', '&lt;p&gt;WHITE IN COLOR&lt;/p&gt;', 3400000, 1, 'uploads/products/11.jpeg?v=1739009398', 1, '2025-02-08 13:09:58', '2025-03-24 13:09:57'),
(12, 1, 13, 'Slashgear', '2021', '&lt;p&gt;WHITE IN COLOR&lt;/p&gt;', 7000000, 1, 'uploads/products/12.jpeg?v=1739009505', 1, '2025-02-08 13:11:44', '2025-03-24 13:09:46'),
(13, 12, 21, 'SUNFLOWER', 'January', '&lt;p&gt;Does well in highlands&lt;/p&gt;', 4000, 1, 'uploads/products/13.jpg?v=1742811409', 0, '2025-03-24 13:16:48', '2025-03-24 13:16:49'),
(14, 8, 22, 'Irish Potatoes', 'december', '&lt;p&gt;red ones&lt;/p&gt;', 5600, 1, 'uploads/products/14.webp?v=1742811504', 0, '2025-03-24 13:18:24', '2025-03-24 13:18:24'),
(15, 11, 19, 'Bananas', 'anytime', '&lt;p&gt;sweet bananas&lt;/p&gt;', 400, 1, 'uploads/products/15.jfif?v=1742811564', 0, '2025-03-24 13:19:23', '2025-03-24 13:19:24'),
(16, 13, 20, 'Kitchen Spices', 'june', '&lt;p&gt;all inclusive&lt;/p&gt;', 200, 1, 'uploads/products/16.jfif?v=1742811626', 0, '2025-03-24 13:20:26', '2025-03-24 13:20:26');

-- --------------------------------------------------------

--
-- Table structure for table `request_meta`
--

CREATE TABLE `request_meta` (
  `request_id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `request_meta`
--

INSERT INTO `request_meta` (`request_id`, `meta_field`, `meta_value`) VALUES
(5, 'vehicle_type', 'Sample 102'),
(5, 'vehicle_name', 'Sample'),
(5, 'vehicle_registration_number', 'TEST123'),
(5, 'vehicle_model', 'test'),
(5, 'service_id', '3'),
(5, 'pickup_address', 'Sample Address'),
(4, 'vehicle_type', 'Sample'),
(4, 'vehicle_name', 'Yamaha Nmax V2'),
(4, 'vehicle_registration_number', 'GCN 2306'),
(4, 'vehicle_model', '2021'),
(4, 'service_id', '1,2,4'),
(4, 'pickup_address', ''),
(6, 'vehicle_type', 'BMW'),
(6, 'vehicle_name', 'BMW DOGECAT'),
(6, 'vehicle_registration_number', 'KBA 500K'),
(6, 'vehicle_model', '2022'),
(6, 'service_id', '1'),
(6, 'pickup_address', 'JUJA');

-- --------------------------------------------------------

--
-- Table structure for table `service_list`
--

CREATE TABLE `service_list` (
  `id` int(30) NOT NULL,
  `service` text NOT NULL,
  `description` text NOT NULL,
  `status` tinyint(4) NOT NULL DEFAULT 1,
  `delete_flag` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_list`
--

INSERT INTO `service_list` (`id`, `service`, `description`, `status`, `delete_flag`, `date_created`) VALUES
(1, 'Change Oil', '&lt;p&gt;&lt;span style=&quot;text-align: justify;&quot;&gt;2T&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2021-09-30 14:11:21'),
(2, 'Overall Checkup', '&lt;p&gt;&lt;span style=&quot;text-align: justify;&quot;&gt;IN GOOD TERM&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2021-09-30 14:11:38'),
(3, 'Engine Tune up', '&lt;div style=&quot;text-align: justify;&quot;&gt;&lt;span style=&quot;font-size: 1rem;&quot;&gt;UPSIDE&lt;/span&gt;&lt;/div&gt;', 1, 0, '2021-09-30 14:12:03'),
(4, 'Tire Replacement', '&lt;p&gt;&lt;span style=&quot;text-align: justify;&quot;&gt;AFTER 4 MONTHS&lt;/span&gt;&lt;br&gt;&lt;/p&gt;', 1, 0, '2021-09-30 14:12:24');

-- --------------------------------------------------------

--
-- Table structure for table `service_requests`
--

CREATE TABLE `service_requests` (
  `id` int(30) NOT NULL,
  `client_id` int(30) NOT NULL,
  `service_type` text NOT NULL,
  `mechanic_id` int(30) DEFAULT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 0,
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_requests`
--

INSERT INTO `service_requests` (`id`, `client_id`, `service_type`, `mechanic_id`, `status`, `date_created`) VALUES
(4, 1, 'Drop Off', 2, 3, '2022-01-25 09:47:31'),
(5, 1, 'Pick Up', NULL, 4, '2022-01-25 10:25:23'),
(6, 2, 'Pick Up', NULL, 0, '2025-02-08 13:14:57');

-- --------------------------------------------------------

--
-- Table structure for table `stock_list`
--

CREATE TABLE `stock_list` (
  `id` int(30) NOT NULL,
  `product_id` int(30) NOT NULL,
  `quantity` float NOT NULL DEFAULT 0,
  `type` tinyint(1) NOT NULL DEFAULT 1 COMMENT '1= IN, 2= Out',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `stock_list`
--

INSERT INTO `stock_list` (`id`, `product_id`, `quantity`, `type`, `date_created`) VALUES
(1, 1, 10, 1, '2022-01-21 13:07:47'),
(2, 1, 5, 1, '2022-01-21 13:07:55'),
(4, 3, 30, 1, '2022-01-24 14:17:28'),
(5, 5, 25, 1, '2022-01-24 14:17:35'),
(8, 4, 50, 1, '2022-01-24 15:49:45'),
(9, 6, 5, 1, '2025-03-16 15:26:54'),
(10, 7, 4, 1, '2025-03-16 15:27:10'),
(11, 15, 10, 1, '2025-03-24 13:20:48'),
(12, 14, 90, 1, '2025-03-24 13:21:03'),
(13, 16, 20, 1, '2025-03-24 13:21:23'),
(14, 13, 9, 1, '2025-03-24 13:21:38');

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `id` int(30) NOT NULL,
  `meta_field` text NOT NULL,
  `meta_value` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`id`, `meta_field`, `meta_value`) VALUES
(1, 'name', 'Farmdirect Nyeri Products Management System'),
(6, 'short_name', 'Farmdirect Nyeri'),
(11, 'logo', 'uploads/1742775480_0.jfif'),
(13, 'user_avatar', 'uploads/user_avatar.jpg'),
(14, 'cover', 'uploads/1742775480_1.jfif');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(50) NOT NULL,
  `firstname` varchar(250) NOT NULL,
  `lastname` varchar(250) NOT NULL,
  `username` text NOT NULL,
  `password` text NOT NULL,
  `avatar` text DEFAULT NULL,
  `last_login` datetime DEFAULT NULL,
  `type` tinyint(1) NOT NULL DEFAULT 0,
  `date_added` datetime NOT NULL DEFAULT current_timestamp(),
  `date_updated` datetime DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `username`, `password`, `avatar`, `last_login`, `type`, `date_added`, `date_updated`) VALUES
(1, 'Adminstrator', 'Admin', 'admin', '0192023a7bbd73250516f069df18b500', 'uploads/1624240500_avatar.png', NULL, 1, '2021-01-20 14:02:37', '2021-06-21 09:55:07'),
(6, 'Claire', 'Blake', 'cblake', 'cd74fae0a3adf459f73bbf187607ccea', 'uploads/1632990840_ava.jpg', NULL, 2, '2021-09-30 16:34:02', '2021-09-30 16:35:26'),
(7, 'jan', 'jan', 'jan', '81dc9bdb52d04dc20036dbd8313ed055', 'uploads/1742774820_c362f21370120580f5779a2d019392851652852555.jpg', NULL, 2, '2025-03-24 03:07:56', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brand_list`
--
ALTER TABLE `brand_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `client_list`
--
ALTER TABLE `client_list`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`) USING HASH;

--
-- Indexes for table `mechanics_list`
--
ALTER TABLE `mechanics_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`id`),
  ADD KEY `order_id` (`order_id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `order_list`
--
ALTER TABLE `order_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`);

--
-- Indexes for table `product_list`
--
ALTER TABLE `product_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `brand_id` (`brand_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `request_meta`
--
ALTER TABLE `request_meta`
  ADD KEY `request_id` (`request_id`);

--
-- Indexes for table `service_list`
--
ALTER TABLE `service_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD PRIMARY KEY (`id`),
  ADD KEY `client_id` (`client_id`),
  ADD KEY `mechanic_id` (`mechanic_id`);

--
-- Indexes for table `stock_list`
--
ALTER TABLE `stock_list`
  ADD PRIMARY KEY (`id`),
  ADD KEY `product_id` (`product_id`);

--
-- Indexes for table `system_info`
--
ALTER TABLE `system_info`
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
-- AUTO_INCREMENT for table `brand_list`
--
ALTER TABLE `brand_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `cart_list`
--
ALTER TABLE `cart_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- AUTO_INCREMENT for table `client_list`
--
ALTER TABLE `client_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `mechanics_list`
--
ALTER TABLE `mechanics_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `order_list`
--
ALTER TABLE `order_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `product_list`
--
ALTER TABLE `product_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `service_list`
--
ALTER TABLE `service_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `service_requests`
--
ALTER TABLE `service_requests`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `stock_list`
--
ALTER TABLE `stock_list`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `system_info`
--
ALTER TABLE `system_info`
  MODIFY `id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `cart_list`
--
ALTER TABLE `cart_list`
  ADD CONSTRAINT `cart_list_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `cart_list_ibfk_2` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_items`
--
ALTER TABLE `order_items`
  ADD CONSTRAINT `order_items_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `order_items_ibfk_2` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `order_list`
--
ALTER TABLE `order_list`
  ADD CONSTRAINT `order_list_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `product_list`
--
ALTER TABLE `product_list`
  ADD CONSTRAINT `product_list_ibfk_1` FOREIGN KEY (`brand_id`) REFERENCES `brand_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `product_list_ibfk_2` FOREIGN KEY (`category_id`) REFERENCES `categories` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `request_meta`
--
ALTER TABLE `request_meta`
  ADD CONSTRAINT `request_meta_ibfk_1` FOREIGN KEY (`request_id`) REFERENCES `service_requests` (`id`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `service_requests`
--
ALTER TABLE `service_requests`
  ADD CONSTRAINT `service_requests_ibfk_1` FOREIGN KEY (`client_id`) REFERENCES `client_list` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `service_requests_ibfk_2` FOREIGN KEY (`mechanic_id`) REFERENCES `mechanics_list` (`id`) ON DELETE SET NULL;

--
-- Constraints for table `stock_list`
--
ALTER TABLE `stock_list`
  ADD CONSTRAINT `stock_list_ibfk_1` FOREIGN KEY (`product_id`) REFERENCES `product_list` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
