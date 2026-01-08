-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Nov 25, 2025 at 03:54 AM
-- Server version: 11.8.3-MariaDB-log
-- PHP Version: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u287345123_Fluffy_Friends`
--

-- --------------------------------------------------------

--
-- Table structure for table `adopters`
--

CREATE TABLE `adopters` (
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `email` varchar(150) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `adoptions`
--

CREATE TABLE `adoptions` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `pet_id` int(11) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `name` varchar(200) DEFAULT NULL,
  `email` varchar(200) DEFAULT NULL,
  `subject` varchar(255) DEFAULT NULL,
  `message` text DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pets`
--

CREATE TABLE `pets` (                     
  `id` int(11) NOT NULL,
  `name` varchar(150) NOT NULL,
  `type` varchar(50) NOT NULL,
  `status` varchar(20) NOT NULL DEFAULT 'available',
  `age` varchar(20) DEFAULT '',
  `price` int(10) NOT NULL,
  `description` text DEFAULT NULL,
  `image` varchar(255) DEFAULT '',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `contact` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pets`
--

INSERT INTO `pets` (`id`, `name`, `type`, `status`, `age`,`price`, `description`, `image`, `created_at`, `contact`) VALUES
(5, 'Mochi', 'Dog', 'available', '2 years', '30000','Playful and friendly', 'assets/images/dog1.jpeg', '2025-11-10 17:43:39', ''),
(6, 'Rocky', 'Dog', 'available', '3 years', '32000','Friendly and energetic', 'assets/images/dog2.jpeg', '2025-11-10 17:43:39', ''),
(7, 'Bella', 'Dog', 'available', '1 year','35000','Sweet and playful', 'assets/images/dog3.jpeg', '2025-11-10 17:43:39', ''),
(8, 'Mittens', 'Cat', 'available', '2 years', '15000','Cute and calm cat', 'assets/images/cat1.jpeg', '2025-11-10 17:43:39', ''),
(9, 'Whiskers', 'Cat', 'available', '1 year','20000', 'Curious and playful', 'assets/images/cat2.jpeg', '2025-11-10 17:43:39', ''),
(10, 'Luna', 'Cat', 'available', '3 years','22000', 'Loves cuddles and naps', 'assets/images/cat3.jpeg', '2025-11-10 17:43:39', ''),
(11, 'Fluffy', 'Rabbit', 'available', '1 year','10500', 'Soft and friendly rabbit', 'assets/images/r1.jpeg', '2025-11-10 17:43:39', ''),
(12, 'Snowy', 'Rabbit', 'available', '6 months','15000', 'Small and adorable', 'assets/images/r2.jpeg', '2025-11-10 17:43:39', ''),
(13, 'Thumper', 'Rabbit', 'available', '2 years','23000', 'Loves to hop around', 'assets/images/r3.jpeg', '2025-11-10 17:43:39', ''),
(14, 'Tweety', 'Bird', 'available', '1 year','2500', 'Yellow canary, sings beautifully', 'assets/images/b1.jpeg', '2025-11-10 17:43:39', ''),
(15, 'Kiwi', 'Bird', 'available', '2 years','5000', 'Colorful parrot, loves to interact', 'assets/images/b2.jpeg', '2025-11-10 17:43:39', ''),
(16, 'Sunny', 'Bird', 'available', '1 year','8000', 'Cheerful and bright budgie', 'assets/images/b3.jpeg', '2025-11-10 17:43:39', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `adopters`
--
ALTER TABLE `adopters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `adoptions`
--
ALTER TABLE `adoptions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pets`
--
ALTER TABLE `pets`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `adopters`
--
ALTER TABLE `adopters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `adoptions`
--
ALTER TABLE `adoptions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pets`
--
ALTER TABLE `pets`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
