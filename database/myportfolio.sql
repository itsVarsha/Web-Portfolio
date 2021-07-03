-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 17, 2021 at 03:48 PM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 8.0.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `myportfolio`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

CREATE TABLE `about` (
  `id` int(11) NOT NULL,
  `about_title` varchar(255) NOT NULL,
  `about_head` varchar(255) NOT NULL,
  `about_subtitle` text NOT NULL,
  `about_pic` text NOT NULL,
  `about_desc` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `about`
--

INSERT INTO `about` (`id`, `about_title`, `about_head`, `about_subtitle`, `about_pic`, `about_desc`) VALUES
(1, 'Desktop & Android Applications Developer', 'STAND OUT!', 'in the sea of ordinary, make sure your software is set apart from the Competition.', 'me.png', 'I have a diverse set of skills, ranging from design, HTML, PHP, Laravel for websites to Desktop Applications in C# & all the way to Android Applications Development and Database Management...');

-- --------------------------------------------------------

--
-- Table structure for table `contact_info`
--

CREATE TABLE `contact_info` (
  `id` int(11) NOT NULL,
  `address` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact_info`
--

INSERT INTO `contact_info` (`id`, `address`, `email`, `phone`) VALUES
(1, 'Sonipat, Haryana, INDIA', 'varsha.sh711@gmail.com', '+91 8607456683');

-- --------------------------------------------------------

--
-- Table structure for table `home`
--

CREATE TABLE `home` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `subtitle` varchar(255) NOT NULL,
  `socialMediaIcons` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `home`
--

INSERT INTO `home` (`id`, `title`, `subtitle`, `socialMediaIcons`) VALUES
(1, 'Varsha Sharma', 'Advancing beyond technology for Future', 1);

-- --------------------------------------------------------

--
-- Table structure for table `personal_info`
--

CREATE TABLE `personal_info` (
  `id` int(11) NOT NULL,
  `label` varchar(255) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `personal_info`
--

INSERT INTO `personal_info` (`id`, `label`, `value`) VALUES
(1, 'Email:', 'varsha.sh711@gmail.com'),
(2, 'Website:', 'http://ptits.net'),
(3, 'Location:', 'Sonipat, Haryana, INDIA'),
(4, 'Contact:', '+91 8607456683'),
(5, 'Birthday :', '07-Jan-2001'),
(6, 'Freelancing:', 'Available');

-- --------------------------------------------------------

--
-- Table structure for table `portfolio`
--

CREATE TABLE `portfolio` (
  `id` int(11) NOT NULL,
  `proj_title` text NOT NULL,
  `client` varchar(255) NOT NULL,
  `category` varchar(255) NOT NULL,
  `projecturl` varchar(255) NOT NULL,
  `proj_desc` text NOT NULL,
  `proj_image` varchar(255) NOT NULL,
  `proj_image2` varchar(255) NOT NULL,
  `proj_image3` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `portfolio`
--

INSERT INTO `portfolio` (`id`, `proj_title`, `client`, `category`, `projecturl`, `proj_desc`, `proj_image`, `proj_image2`, `proj_image3`) VALUES
(1, 'WEBSITE', 'ADSAP Digital Agency', 'Web Application', 'www.adsap.in', '', 'adsap.jpg', 'adsap2.jpg', 'adsap3.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `resume`
--

CREATE TABLE `resume` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `time` varchar(255) NOT NULL,
  `org_name` varchar(255) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `resume`
--

INSERT INTO `resume` (`id`, `type`, `title`, `time`, `org_name`, `description`) VALUES
(2, 'EDUCATION', 'BACHELOR OF TECHNOLOGY, <br>Computer Science Engineering', '2018-2022', 'Gateway Institute of Engineering and Technology, Sonipat', ''),
(3, 'PROFESSIONAL EXPERIENCE', 'SOFTWARE TEST ENGINEER', '9/2020 - 12/2020', 'OLCADEMY', '<li>Executed the test cases & create new if required.\n<br></li><li>Selected from 30+ members team to Lead the Functional testing with the developers.\n<br></li><li>Tested the website for bugs after every new release using different testing techniques and tools.\n<br></li><li>Mentored new interns for testing the modules given to them.\n<br></li><li>Presented and discussed new bugs & testing techniques, at a virtual platform regularly, with other team members.</li>\n'),
(4, 'PROFESSIONAL EXPERIENCE', 'Android Developer & Website Developer\n', 'FREELANCING', 'PRATIBHA TOTAL IT SOLUTIONS', '<li>Developed a total of 2 Android Applications and 1 Website for schools and private companies.\n<br></li><li>Built updates, modules, and components for Android Applications using Java, Android Studio, Firebase.\n<br></li><li>Deployed sub-domains, provided web hosting using C-Panel.\n<br></li><li>Responded to client needs for applications with an eye to the most feasible and effective solutions.<br></li>\n'),
(5, 'Summary', 'Hi! I am Varsha Sharma.', '', 'varsha.sh711@gmail.com', 'I enjoy building everything from small business websites to rich interactive mobile and desktop applications. If you are a business seeking a web presence or an employer looking to hire, you can get in touch with me here.'),
(6, 'EDUCATION', 'HIGH SCHOOL', '2016-2018', 'DAV CENTENARY PUBLIC SCHOOL,<br>\r\nNEW DELHI', '');

-- --------------------------------------------------------

--
-- Table structure for table `section_control`
--

CREATE TABLE `section_control` (
  `id` int(11) NOT NULL,
  `home_section` int(11) NOT NULL,
  `about_section` int(11) NOT NULL,
  `resume_section` int(11) NOT NULL,
  `services_section` int(11) NOT NULL,
  `portfolio_section` int(11) NOT NULL,
  `contact_section` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `section_control`
--

INSERT INTO `section_control` (`id`, `home_section`, `about_section`, `resume_section`, `services_section`, `portfolio_section`, `contact_section`) VALUES
(1, 1, 1, 1, 0, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` int(11) NOT NULL,
  `skill_name` varchar(255) NOT NULL,
  `skill_level` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `skill_name`, `skill_level`) VALUES
(1, 'PHP Laravel', 70),
(2, 'C-Sharp', 70),
(3, 'Kotlin', 80),
(4, 'Java', 80),
(5, 'Wordpress,CMS', 75),
(6, 'Flutter', 75),
(7, 'Firebase', 60),
(8, 'Python', 65),
(9, 'Database(MySQL, Microsoft SQL)', 82);

-- --------------------------------------------------------

--
-- Table structure for table `social_media`
--

CREATE TABLE `social_media` (
  `id` int(11) NOT NULL,
  `twitter` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `github` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `skype` varchar(255) NOT NULL,
  `linkedIn` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `social_media`
--

INSERT INTO `social_media` (`id`, `twitter`, `facebook`, `github`, `instagram`, `skype`, `linkedIn`) VALUES
(1, 'dear_varsha', 'dear.varshavats', 'itsVarsha', 'varsha._._sharma', 'varsha711', 'varsha7');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `contact_info`
--
ALTER TABLE `contact_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `home`
--
ALTER TABLE `home`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `personal_info`
--
ALTER TABLE `personal_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `resume`
--
ALTER TABLE `resume`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `section_control`
--
ALTER TABLE `section_control`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `social_media`
--
ALTER TABLE `social_media`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `about`
--
ALTER TABLE `about`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contact_info`
--
ALTER TABLE `contact_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `home`
--
ALTER TABLE `home`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `personal_info`
--
ALTER TABLE `personal_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `resume`
--
ALTER TABLE `resume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `section_control`
--
ALTER TABLE `section_control`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `social_media`
--
ALTER TABLE `social_media`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
