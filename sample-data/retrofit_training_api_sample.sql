-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: Feb 27, 2020 at 07:23 PM
-- Server version: 5.7.26
-- PHP Version: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `retrofit_training_api_sample`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(256) NOT NULL,
  `description` text NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `created`, `modified`) VALUES
(1, 'Movies', 'Movie products', '2019-01-09 02:24:24', '2019-01-08 09:57:26'),
(2, 'Books', 'Paper books', '2019-01-09 02:24:24', '2019-01-08 09:57:47');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

DROP TABLE IF EXISTS `products`;
CREATE TABLE IF NOT EXISTS `products` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(32) NOT NULL,
  `description` text NOT NULL,
  `price` decimal(10,0) NOT NULL,
  `category_id` int(11) NOT NULL,
  `created` datetime NOT NULL,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=72 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `category_id`, `created`, `modified`) VALUES
(1, 'Linchpin: Are You Indispensable?', 'In bestsellers such as Purple Cow and Tribes, Seth Godin taught readers how to make remarkable products and spread powerful ideas. But this book is about you—your choices, your future, and your potential to make a huge difference in whatever field you choose.', '19', 2, '2020-02-26 11:16:17', '2020-02-26 11:16:17'),
(2, 'Shoe Dog', 'In this candid and riveting memoir, for the first time ever, Nike founder and CEO Phil Knight shares the inside story of the company’s early days as an intrepid start-up and its evolution into one of the world’s most iconic, game-changing, and profitable brands.', '12', 2, '2020-02-26 11:16:17', '2020-02-26 11:16:17'),
(3, 'Sonic the Hedgehog (2020)', 'After discovering a small, blue, fast hedgehog, a small-town police officer must help it defeat an evil genius who wants to do experiments on it.', '29', 1, '2020-02-26 11:16:17', '2020-02-26 11:16:17'),
(4, 'Steve Jobs', 'From the author of the bestselling biographies of Benjamin Franklin and Albert Einstein, this is the exclusive, New York Times bestselling biography of Apple co-founder Steve Jobs.', '25', 2, '2020-02-26 11:16:17', '2020-02-26 11:16:17'),
(5, 'The Call of the Wild (2020)', 'A sled dog struggles for survival in the wilds of the Yukon.', '29', 1, '2020-02-26 11:16:17', '2020-02-26 11:16:17'),
(6, 'The Intelligent Investor', 'The greatest investment advisor of the twentieth century, Benjamin Graham taught and inspired people worldwide. Graham\'s philosophy of \"value investing\" -- which shields investors from substantial error and teaches them to develop long-term strategies -- has made The Intelligent Investor the stock market bible ever since its original publication in 1949.', '7', 2, '2020-02-26 11:16:17', '2020-02-26 11:16:17'),
(7, 'Rework', 'Most business books give you the same old advice: Write a business plan, study the competition, seek investors, yadda yadda. If you\'re looking for a book like that, put this one back on the shelf.', '14', 2, '2020-02-26 11:16:17', '2020-02-26 11:16:17');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
