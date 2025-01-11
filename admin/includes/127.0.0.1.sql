-- phpMyAdmin SQL Dump
-- version 3.5.2.2
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jul 22, 2021 at 12:01 AM
-- Server version: 5.5.27
-- PHP Version: 5.4.7

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `tms`
--
CREATE DATABASE `tms` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `tms`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserName` varchar(100) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `updationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'admin', 'admin123', '2021-07-11 15:48:49');

-- --------------------------------------------------------

--
-- Table structure for table `tblbooking`
--

CREATE TABLE IF NOT EXISTS `tblbooking` (
  `BookingId` int(11) NOT NULL AUTO_INCREMENT,
  `PackageId` int(11) DEFAULT NULL,
  `UserEmail` varchar(100) DEFAULT NULL,
  `FromDate` varchar(100) DEFAULT NULL,
  `ToDate` varchar(100) DEFAULT NULL,
  `Comment` mediumtext,
  `RegDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` int(11) DEFAULT NULL,
  `CancelledBy` varchar(5) DEFAULT NULL,
  `UpdationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`BookingId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=10 ;

--
-- Dumping data for table `tblbooking`
--

INSERT INTO `tblbooking` (`BookingId`, `PackageId`, `UserEmail`, `FromDate`, `ToDate`, `Comment`, `RegDate`, `status`, `CancelledBy`, `UpdationDate`) VALUES
(9, 10, 'ritu@gmail.com', '2021-07-25', '2021-07-31', 'good place for tour', '2021-07-21 21:00:52', 0, NULL, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblenquiry`
--

CREATE TABLE IF NOT EXISTS `tblenquiry` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) DEFAULT NULL,
  `EmailId` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `Subject` varchar(100) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` int(1) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=9 ;

--
-- Dumping data for table `tblenquiry`
--

INSERT INTO `tblenquiry` (`id`, `FullName`, `EmailId`, `MobileNumber`, `Subject`, `Description`, `PostingDate`, `Status`) VALUES
(6, 'Amlan Mohanty', 'am@gmail.com', '9856320148', 'New Packages', 'any package for tour North Odisha ????', '2021-07-19 21:59:29', 1),

(7, 'Ritesh Kumar Rout', 'ritesh@gmail.com', '9856241023', 'New Packages', 'sample for testing ...............', '2021-07-21 20:48:21', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblissues`
--

CREATE TABLE IF NOT EXISTS `tblissues` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `UserEmail` varchar(100) DEFAULT NULL,
  `Issue` varchar(100) DEFAULT NULL,
  `Description` mediumtext,
  `PostingDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `AdminRemark` mediumtext,
  `AdminremarkDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `tblissues`
--

INSERT INTO `tblissues` (`id`, `UserEmail`, `Issue`, `Description`, `PostingDate`, `AdminRemark`, `AdminremarkDate`) VALUES
(16, NULL, NULL, NULL, '2021-07-21 20:49:37', NULL, NULL),
(17, 'ritu@gmail.com', 'Booking Issues', 'what is your processing for tour cancellation', '2021-07-21 21:01:47', 'Very soon contact you....', NULL),
(18, 'ritu@gmail.com', 'Booking Issues', 'what is your processing for tour cancellation', '2021-07-21 21:01:49', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblpages`
--

CREATE TABLE IF NOT EXISTS `tblpages` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `type` varchar(255) DEFAULT '',
  `detail` longtext,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `tblpages`
--

INSERT INTO `tblpages` (`id`, `type`, `detail`) VALUES
(1, 'Terms', '										<p align="justify"><font size="2"><strong><font color="#990000">(1) ACCEPTANCE OF TERMS</font><br><br></strong>Welcome to Yahoo! India. 1Yahoo Web Services India Private Limited Yahoo", "we" or "us" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service ("TOS"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: <a href="http://in.docs.yahoo.com/info/terms/">http://in.docs.yahoo.com/info/terms/</a>. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n<p align="justify"><font size="2">Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo", "we" or "us" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service ("TOS"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </font><a href="http://in.docs.yahoo.com/info/terms/"><font size="2">http://in.docs.yahoo.com/info/terms/</font></a><font size="2">. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n<p align="justify"><font size="2">Welcome to Yahoo! India. Yahoo Web Services India Private Limited Yahoo", "we" or "us" as the case may be) provides the Service (defined below) to you, subject to the following Terms of Service ("TOS"), which may be updated by us from time to time without notice to you. You can review the most current version of the TOS at any time at: </font><a href="http://in.docs.yahoo.com/info/terms/"><font size="2">http://in.docs.yahoo.com/info/terms/</font></a><font size="2">. In addition, when using particular Yahoo services or third party services, you and Yahoo shall be subject to any posted guidelines or rules applicable to such services which may be posted from time to time. All such guidelines or rules, which maybe subject to change, are hereby incorporated by reference into the TOS. In most cases the guides and rules are specific to a particular part of the Service and will assist you in applying the TOS to that part, but to the extent of any inconsistency between the TOS and any guide or rule, the TOS will prevail. We may also offer other services from time to time that are governed by different Terms of Services, in which case the TOS do not apply to such other services if and to the extent expressly excluded by such different Terms of Services. Yahoo also may offer other services from time to time that are governed by different Terms of Services. These TOS do not apply to such other services that are governed by different Terms of Service. </font></p>\r\n										'),
(2, 'Privacy', '										<span style="color: rgb(14, 10, 20); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;">\r\n\r\n\r\n\r\n\r\nAt vero eos et accusamus et iusto odio dignissimos ducimus qui blanditiis praesentium voluptatum deleniti atque corrupti quos dolores et quas molestias excepturi sint occaecati cupiditate non provident, similique sunt in culpa qui officia deserunt mollitia animi, id est laborum et dolorum fuga. Et harum quidem rerum facilis est et expedita distinctio. Nam libero tempore, cum soluta nobis est eligendi optio cumque nihil impedit quo minus id quod maxime placeat facere possimus, omnis voluptas assumenda est, omnis dolor repellendus. Temporibus autem quibusdam et aut officiis debitis aut rerum necessitatibus saepe eveniet ut et voluptates repudiandae sint et molestiae non recusandae. Itaque earum rerum hic tenetur a sapiente delectus, ut aut reiciendis voluptatibus maiores alias consequatur aut perferendis doloribus asperiores repellat\r\n\r\n\r\n</span>\r\n										'),
(3, 'Aboutus', '<div><span style="color: rgb(0, 0, 0); font-family: Georgia; font-size: 15px; text-align: justify; font-weight: bold;">Welcome to Online Travel Booking System!!!</span></div><span style="font-family: &quot;courier new&quot;;"><span style="color: rgb(0, 0, 0); font-size: 15px; text-align: justify;">\r\nAn online booking system works by plugging into your hotel website and processing secure online reservations made through the website. The data is then passed onto your property management system so you can access and manage the bookings.\r\nSince then, our courteous and committed team members have always ensured a pleasant and enjoyable tour for the clients. This arduous effort has enabled Shreya Tour &amp; Travels to be recognized as a dependable Travel Solutions provider with three offices Delhi.</span><span style="color: rgb(80, 80, 80); font-size: 13px;">&nbsp;We have got packages to suit the discerning traveler''s budget and savor. Book your dream vacation online. Supported quality and proposals of our travel consultants, we have a tendency to welcome you to decide on from holidays packages and customize them according to your plan.\r\n\r\n\r\n\r\n\r\n\r\n</span></span>'),
(4, 'Contact', '																				<span style="color: rgb(0, 0, 0); font-family: &quot;Open Sans&quot;, Arial, sans-serif; font-size: 14px; text-align: justify;">\r\nAddress:\r\n\r\nCollege Square\r\n\r\nNear Ravenshaw University\r\n\r\nCuttack-753003\r\n\r\nOdisha\r\n\r\n\r\n\r\n\r\n\r\n</span>');

-- --------------------------------------------------------

--
-- Table structure for table `tbltourpackages`
--

CREATE TABLE IF NOT EXISTS `tbltourpackages` (
  `PackageId` int(11) NOT NULL AUTO_INCREMENT,
  `PackageName` varchar(200) DEFAULT NULL,
  `PackageType` varchar(150) DEFAULT NULL,
  `PackageLocation` varchar(100) DEFAULT NULL,
  `PackagePrice` int(11) DEFAULT NULL,
  `PackageFetures` varchar(255) DEFAULT NULL,
  `PackageDetails` mediumtext,
  `PackageImage` varchar(100) DEFAULT NULL,
  `Creationdate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`PackageId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `tbltourpackages`
--

INSERT INTO `tbltourpackages` (`PackageId`, `PackageName`, `PackageType`, `PackageLocation`, `PackagePrice`, `PackageFetures`, `PackageDetails`, `PackageImage`, `Creationdate`, `UpdationDate`) VALUES
(1, 'The Silver City ', 'Group Package', 'Cuttack', 7000, 'Free Wi-fi, Free Breakfast, Free Pickup and drop facility ', 'Cuttack is one of the vintage cities and popular tourist places in Orissa. The business capital of the state is known for many ancient pilgrim centers, forts, museums, lakes, and islands. Moreover, this place also boasts of local handicrafts. Mahanadi Barrage, Fort of Barabati, Bhitarkanika Wildlife Sanctuary, Ansupa Lake, and Temples of Singanatha & Bhattarika etc.', 'p5.jpg', '2020-07-07 23:51:58', NULL),
(2, 'Land Of Beautiful Architecture', 'Family Package', 'Bhubaneswar ', 11000, 'Free Complimentary services of a Professional Guide', ' The Temple City of India, Bhubaneswar is among the best tourist places to visit in Odisha. It is a classic example of history, heritage, and urbanization. The place has marvelous temples showcasing amazing artwork, wildlife sanctuaries, and exhilarating caves, Dhauli Hills, Udayagiri & Khandagiri caves, Ratnagiri Buddhist Excavations, Bindu Sarovara, Nandan Kanan Zoological Park, Satkosia Tiger Reserve, and temples of Mukteswar, Lingaraj, Brahmeswara, & Parasurameswara.\r\n', 'p1.jpg', '2020-07-08 00:07:40', '2020-07-08 00:39:01'),
(3, ' Ancient Temples with  Beach Festival', 'Couple Package', 'Puri', 15000, 'Free Wi-fi , Free professional guide', 'Puri Beach, Puri Beach Festival, Puri Jagannath temple, Chilika Lake & Bird Sanctuary, and Gundicha Ghar Temple. Konark Sun, Archeological Museum, temple of Sun God & Ramchandi, Chandrabhaga Beach', 'p16.jpeg', '2020-07-08 00:11:07', '2020-07-08 23:53:27'),
(4, 'A Haven For Nature Lovers ', 'Family Package', 'Sambalpur ', 21000, 'Free Wi-fi, Free pick up and drop facility,', ' The numerous waterfalls and plush green forests that allure photography buffs, nature lovers, and adventure enthusiasts. Hirakud Dam, Cattle Island, Chiplima, Huma, Samaleswari Temple, Vikramkhol, Hatibari, and Debrigarh & Ushakothi wildlife sanctuaries', 'images (2).jpg', '2020-07-08 00:15:58', NULL),
(5, ' The Land Of Peace Pagoda ', 'Family Package', 'Khordha', 9500, 'Breakfast,  Accommodation » Pick-up » Drop » Sightseeing', 'A Holiday Package for the entire family. Dhauli Shanti Stupa, Dhabaleswar, Kalinga War Battlefield, CIFA Aquarium, Lingraj Mandir, Raj Bhawan,  Khandagiri, JaydevBatika etc.', 'p11.jpg', '2020-07-08 00:19:13', NULL),
(6, ' Daringbadi – The Hill Town ', 'Family Package', 'Kandhamal', 23990, 'Free Tea, Tiffen, Free Wi-fi , Free professional guide', 'Doluri River, Putudi Waterfalls, Dasingbadi waterfalls, Badangia waterfalls, and Hill View Park, Changu Lake and New Baba Mandir excursion | View the sunrise from Tiger Hill | Get Blessed at the famous Rumtek Monastery etc.', 'download (2).jpg', '2020-07-08 00:21:26', NULL),
(7, 'The Beautiful Port Town ', 'Couple Package', 'Jagatsinghpur', 14999, 'Breakfast,  Accommodation » Pick-up » Drop » Sightseeing', 'It is located at the confluence of Bay of Bengal and Mahanadi. In addition to the busy dockyard, the city also has some amazing beaches that offer mesmerizing views of the surroundings. Paradip Port, Gahirmatha Sanctuary & beach, lighthouse,  Jhankad, Gopalpur Beach, Dhabaleshwar Beach, Gopalpur Sea Beach, and Haripur Sea Beach', 'p7.jpg', '2020-07-08 00:24:42', NULL),
(8, 'Cultural-Art-Handicrafts  Of Odisha ', 'Domestic Packages', 'Odisha', 25990, 'Free Breakfast, Free Wi-fi, Free Tour Guide', 'Odisha is famous in the world for its craft and handicraft. The Applique handicrafts of this town are especially famous. The artisans do a great job with embroidery and colors, making this town stand out not jist in the country but the world. If you happen to visit Odisha, then do head to this town and buy handicrafts and souvenirs from here.', 'p18.jpg', '2020-07-08 00:35:24', NULL),
(9, 'Roopark Village – The Eco Friendly Resort ', 'Family- Friends Package', 'Korput', 31000, 'Free Wi-fi, Free pickup and drop facility', 'This is a beautiful resort located in Odisha. The place is famous as it is eco friendly. If you want to enjoy nature then this should be your top pick. The place offers beautiful scenic vistas of the mountains and lush green lands that surround the village resort. Enjoy dreamy sunsets and energetic sunrises while on you vacay here.', 'p19.jpg', '2020-07-08 00:37:48', NULL),
(10, ' Gaze At The Famous Waterfall ', 'Couple Package', 'Jeypore', 19000, 'Breakfast,  Accommodation, Pick-up , Drop & WIFI', 'Jeypore is one of the delightful tourist places in Odisha for nature lovers. It is known for offering spellbinding views of rocky outcrops, picturesque waterfalls, and lush green biosphere reserves. Deomali, the highest peak of the state, is another popular picnic spot is Odisha that is located not very far from Jeypore. Gupteshwar caves, Sunabeda, Deomali, Duduma Falls, Jagannath Sagar, Hatipathar, and Kolab Falls', 'p20.jpg', '2021-07-11 21:33:15', NULL),
(11, 'Honeymoon Packages', 'Couple Package', 'Kouraput-nabarangpur', 15000, 'Breakfast,  Accommodation ? Pick-up ? Drop ? Sightseeing>> WIFI', 'Deomali hills,Duduma Waterfall,Maliguda, Jagannath Temple and Tribal Museum', 'Koraput.png', '2021-07-21 21:41:23', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblusers`
--

CREATE TABLE IF NOT EXISTS `tblusers` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `FullName` varchar(100) DEFAULT NULL,
  `MobileNumber` char(10) DEFAULT NULL,
  `EmailId` varchar(70) DEFAULT NULL,
  `Password` varchar(100) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `EmailId` (`EmailId`),
  KEY `EmailId_2` (`EmailId`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=22 ;

--
-- Dumping data for table `tblusers`
--

INSERT INTO `tblusers` (`id`, `FullName`, `MobileNumber`, `EmailId`, `Password`, `RegDate`, `UpdationDate`) VALUES
(11, 'Rasmi Ranjan Panda', '9853274179', 'rrp@gmail.com', '123456', '2021-07-18 19:27:01', NULL),
(13, 'Satyabrata Sahu', '7008441603', 'ss@gmail.com', '12345', '2021-07-18 21:49:18', NULL),
(14, 'Laxmikanta Nayak', '8763385623', 'ln@gmail.com', '12345', '2021-07-18 21:50:32', NULL),
(15, 'Dinesh Biswal ', '9853274178', 'db@gmail.com', '12345', '2021-07-18 21:55:11', NULL),
(16, 'Satyaranjan Panda ', '9856320148', 'sp@gmail.com', '12345', '2021-07-20 21:34:10', NULL),
(17, 'Amlan Mohanty', '7485216039', 'am@gmail.com', '12345', '2021-07-21 19:37:07', NULL),
(18, 'Ritesh Kumar Rout', '9856320198', 'rkr@gmail.com', '12345', '2021-07-21 20:40:28', NULL),
(19, 'Ritu Kumari', '9438426567', 'ritu@gmail.com', '123456', '2021-07-21 20:49:37', NULL);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
