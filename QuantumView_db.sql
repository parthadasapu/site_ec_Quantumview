-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 30, 2023 at 05:59 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bbb_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `name`, `password`) VALUES
(1, 'admin', '4c56ff4ce4aaf9573aa5dff913df997a'),
(3, 'saurav', 'cee9d9482816b5f723082342d4caf3312f8cf742');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(10) NOT NULL,
  `quantity` int(10) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `number` varchar(12) NOT NULL,
  `message` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `number` varchar(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `method` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `total_products` varchar(1000) NOT NULL,
  `total_price` int(100) NOT NULL,
  `placed_on` date NOT NULL DEFAULT current_timestamp(),
  `payment_status` varchar(20) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `name`, `number`, `email`, `method`, `address`, `total_products`, `total_price`, `placed_on`, `payment_status`) VALUES
(1, 1, 'saurav pal', '3323223223', 'sauravpaljoy@gmail.com', 'cash on delivery', 'flat no. DDD, DD, cumilla, EEW, Bangladesh - 350', 'TOILET CLEANER (CITRUS FRESH)-500ml (115 x 1) - PERFUMED TOILET CLEANER (FLORAL FRESH)-500ml (115 x 1) - ', 230, '2023-07-14', 'pending'),
(2, 6, 'saurav pal joy', '0168422212', 'sauravpal.bd@gmail.com', 'cash on delivery', 'flat no. Mokam, mokam, cumilla, chittagong, Bangladesh - 3500', 'TOILET CLEANER (CITRUS FRESH)-500ml (115 x 2) - PERFUMED TOILET CLEANER (FLORAL FRESH)-500ml (115 x 3) - ', 575, '2023-07-15', 'pending'),
(3, 7, 'saurav pal', '0168422212', 'sauravpaljoy@gmail.com', 'cash on delivery', 'flat no. DDD, DD, cumilla, EEW, Bangladesh - 350', 'FLUSH TOILET CLEANER (CITRUS FRESH)-500ml (115 x 1) - FLUSH TOILET CLEANER LIQUID-1000ml (170 x 2) - ', 455, '2023-07-29', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `details` varchar(500) NOT NULL,
  `price` int(10) NOT NULL,
  `image_01` varchar(100) NOT NULL,
  `image_02` varchar(100) NOT NULL,
  `image_03` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `details`, `price`, `image_01`, `image_02`, `image_03`) VALUES
(2, 'Refrigerator 340L-SFD66', '340 Ltr Net Capacity;\r\nFresh-O-Logy +: keeps Fruits & Vegetables fresh for up to 30 days\r\nInverter compressor: Energy Saving Technology\r\nFaster Cooling for Longer Freshness\r\nNutriLock: 3 color technology 24hrs sun cycle simulation for preserving vitamin A & C\r\nDisplay/Control Type: Electronic Display Inside Body\r\nQuick Freeze & Quick Cool: Yes\r\nMade in Thailand', 30000, 'ref1.jpg', 'ref2.jpg', 're2.jpg'),
(3, 'Refrigerator 500L-AFSFD66', '340 Ltr Net Capacity; Fresh-O-Logy +: keeps Fruits & Vegetables fresh for up to 30 days Inverter compressor: Energy Saving Technology Faster Cooling for Longer Freshness NutriLock: 3 color technology 24hrs sun cycle simulation for preserving vitamin A & C Display/Control Type: Electronic Display Inside Body Quick Freeze & Quick Cool: Yes Made in Thailand', 55000, 'ref3.jpg', 'ref2.jpg', 're2.jpg'),
(4, 'Refrigerator 340L-Black Door', '340 Ltr Net Capacity; Fresh-O-Logy +: keeps Fruits & Vegetables fresh for up to 30 days Inverter compressor: Energy Saving Technology Faster Cooling for Longer Freshness NutriLock: 3 color technology 24hrs sun cycle simulation for preserving vitamin A & C Display/Control Type: Electronic Display Inside Body Quick Freeze & Quick Cool: Yes Made in Thailand', 30800, 'ref34.jpg', 're2.jpg', 'ref2.jpg'),
(7, 'SMART LED TV Pal42F-ledtv', 'Short Description\r\nFeature: Pure Color Ultra Wide Viewing Angle Eye Protective Digital sound FHD Resolution HDMI LAN & Wi-Fi Supported Energy Saving Elegant Design Android Smart 5000+ Apps', 11500, 'tv5.jpg', 'tv7.jpg', 'tv8.jpg'),
(8, 'SMART LED TV 201-90387', 'Short Description\r\nFeature: Pure Color Ultra Wide Viewing Angle Eye Protective Digital sound FHD Resolution HDMI LAN & Wi-Fi Supported Energy Saving Elegant Design Android Smart 5000+ Apps', 42800, 't3.jpg', 'tv7.jpg', 'tv8.jpg'),
(9, 'SMART LED TV OD42F-AN5S', 'Short Description\r\nFeature: Pure Color Ultra Wide Viewing Angle Eye Protective Digital sound FHD Resolution HDMI LAN & Wi-Fi Supported Energy Saving Elegant Design Android Smart 5000+ Apps', 12000, 'tv1.jpg', 'tv1.jpg', 'tv5.jpg'),
(10, 'Laptop DLCOM-5510-i7-SLV', 'Model: DLCOM-INS-5510-i7-SLV;\r\nProcessor: 11th Generation Intel(R) Core(TM) i7-11390H Processor (12MB Cache, up to 5.0GHz with ITBM3.0);\r\nDisplay: 15.6-inch FHD (1920 x 1080) Anti-glare LED Backlight Non-Touch Narrow Border WVA Display;\r\nHDD/SSD: 512GB M.2 PCIe NVMe Solid State Drive;\r\nRAM: 8GB, 2x4GB, DDR4, 3200MHz;\r\nGraphics: Intel(R) Iris(R) Xe Graphics;\r\nDisplay Brightness: 300 nits;\r\nDisplay PPI: 141PPI | 60 Hz;\r\nPower Button: Titan Grey with Fingerprint Reader;\r\nWIFI/Blutooth;', 71000, 'lap1.png', 'lap4.jpg', 'lap45.jpg'),
(11, 'Laptop HPCOM-8910-i5-SJV', 'Model: DLCOM-INS-5510-i7-SLV; Processor: 11th Generation Intel(R) Core(TM) i7-11390H Processor (12MB Cache, up to 5.0GHz with ITBM3.0); Display: 15.6-inch FHD (1920 x 1080) Anti-glare LED Backlight Non-Touch Narrow Border WVA Display; HDD/SSD: 512GB M.2 PCIe NVMe Solid State Drive; RAM: 8GB, 2x4GB, DDR4, 3200MHz; Graphics: Intel(R) Iris(R) Xe Graphics; Display Brightness: 300 nits; Display PPI: 141PPI | 60 Hz; Power Button: Titan Grey with Fingerprint Reader; WIFI/Blutooth;', 52000, 'lap2.jpg', 'lap45.jpg', 'lap45.jpg'),
(12, 'Laptop DLHP-29310-i3-HPV', 'Model: DLCOM-INS-5510-i7-SLV; Processor: 11th Generation Intel(R) Core(TM) i7-11390H Processor (12MB Cache, up to 5.0GHz with ITBM3.0); Display: 15.6-inch FHD (1920 x 1080) Anti-glare LED Backlight Non-Touch Narrow Border WVA Display; HDD/SSD: 512GB M.2 PCIe NVMe Solid State Drive; RAM: 8GB, 2x4GB, DDR4, 3200MHz; Graphics: Intel(R) Iris(R) Xe Graphics; Display Brightness: 300 nits; Display PPI: 141PPI | 60 Hz; Power Button: Titan Grey with Fingerprint Reader; WIFI/Blutooth;', 60000, 'lap3.jpg', 'lap2.jpg', 'lap45.jpg'),
(13, 'Camera SJCAM-SJ4000-DSLR', 'Model: Canon 2000D\r\nCmos 24.1 megapixel\r\nType Processor DIGIC 4+\r\nAspect Ratio 3:2\r\nShutter Speed: 30-1/4000 sec\r\nLCD Screen Size 2.7 inch\r\nImage Display Resolution 230,400 dots\r\nVideo Display Resolution 1920 x 1080', 20000, '1.jpg', '3.jpg', '4.jpg'),
(14, 'Camera DSLR-EF-S 18-55mm', 'Model: Canon 2000D Cmos 24.1 megapixel Type Processor DIGIC 4+ Aspect Ratio 3:2 Shutter Speed: 30-1/4000 sec LCD Screen Size 2.7 inch Image Display Resolution 230,400 dots Video Display Resolution 1920 x 1080', 21000, '2.jpg', '6.jpg', '2.jpg'),
(15, 'Camera W810 20MP,6X ZOOM', 'Model: Canon 2000D Cmos 24.1 megapixel Type Processor DIGIC 4+ Aspect Ratio 3:2 Shutter Speed: 30-1/4000 sec LCD Screen Size 2.7 inch Image Display Resolution 230,400 dots Video Display Resolution 1920 x 1080', 14600, '3.jpg', '5.jpg', '4.jpg'),
(16, 'Watch W6Pro_ P280Plus', 'Key Features\r\nModel: Celebrat SW6Pro\r\n1.91 inch TFT HD (240x280) Color Touchscreen\r\nGuard health all day 24-hour monitoring\r\nBluetooth call, NFC Access Control\r\nIP67 water-resistant', 2300, '18.jpg', '19.jpg', '18.jpg'),
(17, 'Watch S7Pro_ S281Plus', 'Key Features\r\nModel: Celebrat SW6Pro\r\n1.91 inch TFT HD (240x280) Color Touchscreen\r\nGuard health all day 24-hour monitoring\r\nBluetooth call, NFC Access Control\r\nIP67 water-resistant', 1500, '20.jpg', '21.jpg', '10.jpg'),
(18, 'Watch 26Pro_ P28021S', 'Key Features Model: Celebrat SW6Pro 1.91 inch TFT HD (240x280) Color Touchscreen Guard health all day 24-hour monitoring Bluetooth call, NFC Access Control IP67 water-resistant', 1000, '21.jpg', '18.jpg', '19.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(100) NOT NULL,
  `name` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`) VALUES
(1, 'saurav', 'saurav@gmail.com', 'cee9d9482816b5f723082342d4caf3312f8cf742'),
(2, 'saurav1', 'pal@gmail.com', 'saurav'),
(3, 'abul', 'abul@gmail.com', 'fcea920f7412b5da7be0cf42b8c93759'),
(4, 'sabbir', 'saurav10@gmail.com', '40bd001563085fc35165329ea1ff5c5ecbdbbeef'),
(5, 'saurav22', 'saurav22@gmail.com', '7110eda4d09e062aa5e4a390b0a572ac0d2c0220'),
(6, 'saurav pal joy', 'sauravpal.bd@gmail.com', 'b72db436c57af78daa2b0d948c7e3892311003da'),
(7, 'reja', 'reja@gmail.com', '82d1800c9bf18b98e879d8a3d8b626cabea28f36');

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE `wishlist` (
  `id` int(100) NOT NULL,
  `user_id` int(100) NOT NULL,
  `pid` int(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `price` int(100) NOT NULL,
  `image` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `wishlist`
--
ALTER TABLE `wishlist`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
