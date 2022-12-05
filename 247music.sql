-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 26, 2020 at 06:18 PM
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
-- Database: `247music`
--

-- --------------------------------------------------------

--
-- Table structure for table `album`
--

DROP TABLE IF EXISTS `album`;
CREATE TABLE IF NOT EXISTS `album` (
  `album_id` int(11) NOT NULL,
  `album_name` varchar(200) NOT NULL,
  `album_date` year(4) DEFAULT NULL,
  `thumbnail` varchar(200) DEFAULT NULL,
  `artist_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `album`
--

INSERT INTO `album` (`album_id`, `album_name`, `album_date`, `thumbnail`, `artist_id`) VALUES
(1, 'Test Album', 2020, 'album.jpg', 1);

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

DROP TABLE IF EXISTS `artist`;
CREATE TABLE IF NOT EXISTS `artist` (
  `artist_id` int(11) NOT NULL,
  `artist_name` varchar(200) NOT NULL,
  `thumbnail` varchar(200) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`artist_id`, `artist_name`, `thumbnail`) VALUES
(1, 'Test Artist', 'artist.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `memberplaylist`
--

DROP TABLE IF EXISTS `memberplaylist`;
CREATE TABLE IF NOT EXISTS `memberplaylist` (
  `playlist_id` int(11) NOT NULL AUTO_INCREMENT,
  `member_id` int(11) NOT NULL,
  `playlist_name` varchar(30) NOT NULL,
  PRIMARY KEY (`playlist_id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `memberplaylist`
--

INSERT INTO `memberplaylist` (`playlist_id`, `member_id`, `playlist_name`) VALUES
(1, 1, 'sad'),
(2, 1, 'bad'),
(3, 1, 'New Playlist');

-- --------------------------------------------------------

--
-- Table structure for table `membership`
--

DROP TABLE IF EXISTS `membership`;
CREATE TABLE IF NOT EXISTS `membership` (
  `member_id` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `surname` varchar(50) NOT NULL,
  `firstname` varchar(50) NOT NULL,
  `password` varchar(300) NOT NULL,
  `category` varchar(10) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `membership`
--

INSERT INTO `membership` (`member_id`, `username`, `surname`, `firstname`, `password`, `category`) VALUES
(1, 'testUser', 'test', 'name', 'af0426e71dd57c0fdf93f23f6f191a4aa0578ad7d71897e936746028b8ffd31d', 'cat');

-- --------------------------------------------------------

--
-- Table structure for table `playlist`
--

DROP TABLE IF EXISTS `playlist`;
CREATE TABLE IF NOT EXISTS `playlist` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `playlist_id` int(11) NOT NULL,
  `track_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `playlist`
--

INSERT INTO `playlist` (`id`, `playlist_id`, `track_id`) VALUES
(2, 3, 1),
(3, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `track`
--

DROP TABLE IF EXISTS `track`;
CREATE TABLE IF NOT EXISTS `track` (
  `track_id` int(11) NOT NULL COMMENT 'This is an auto incrementing number to uniquely identify a table row. It is the unique song identification number.',
  `track_title` varchar(200) NOT NULL,
  `artist_id` int(11) NOT NULL,
  `track_length` varchar(6) DEFAULT NULL,
  `spotify_track` varchar(40) DEFAULT NULL,
  `album_id` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `track`
--

INSERT INTO `track` (`track_id`, `track_title`, `artist_id`, `track_length`, `spotify_track`, `album_id`) VALUES
(1, 'Test Track Title', 1, '10', '1pWscEL17ssjbKXIS5nlQv?nd=1', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
