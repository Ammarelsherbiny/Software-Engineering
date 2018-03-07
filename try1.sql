-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Mar 07, 2018 at 10:50 PM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 7.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `try1`
--

-- --------------------------------------------------------

--
-- Table structure for table `add-extra-value`
--

CREATE TABLE `add-extra-value` (
  `id` int(11) NOT NULL,
  `usertype-id` int(11) NOT NULL,
  `extradetails-id` int(11) NOT NULL,
  `value` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `add-message`
--

CREATE TABLE `add-message` (
  `id` int(11) NOT NULL,
  `messageid` int(11) NOT NULL,
  `pageid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `add-timetable`
--

CREATE TABLE `add-timetable` (
  `id` int(10) NOT NULL,
  `calender-id` int(10) NOT NULL,
  `time` int(11) NOT NULL,
  `day` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `calender`
--

CREATE TABLE `calender` (
  `id` int(11) NOT NULL,
  `group-details-id` int(10) NOT NULL,
  `month` varchar(255) NOT NULL,
  `year` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `id` int(11) NOT NULL,
  `cousre-name` varchar(255) NOT NULL,
  `Level` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `day`
--

CREATE TABLE `day` (
  `id` int(10) NOT NULL,
  `day` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `grades`
--

CREATE TABLE `grades` (
  `id` int(11) NOT NULL,
  `course-id` int(11) NOT NULL,
  `percentage` int(11) NOT NULL,
  `weekexam` int(11) NOT NULL,
  `student-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `group`
--

CREATE TABLE `group` (
  `id` int(11) NOT NULL,
  `student-id` int(11) NOT NULL,
  `groupdetails-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `group-details`
--

CREATE TABLE `group-details` (
  `id` int(11) NOT NULL,
  `Group-code` int(11) NOT NULL,
  `course-id` int(11) NOT NULL,
  `calendar-id` int(11) NOT NULL,
  `room-id` int(11) NOT NULL,
  `teacher-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `id` int(11) NOT NULL,
  `Type-translation` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `id` int(11) NOT NULL,
  `message-title` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pages`
--

CREATE TABLE `pages` (
  `id` int(11) NOT NULL,
  `html` varchar(255) NOT NULL,
  `code` varchar(255) DEFAULT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `request`
--

CREATE TABLE `request` (
  `id` int(11) NOT NULL,
  `user-id` int(11) NOT NULL,
  `request` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id` int(11) NOT NULL,
  `number` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salary`
--

CREATE TABLE `salary` (
  `id` int(100) NOT NULL,
  `staff-id` int(100) NOT NULL,
  `month` int(100) NOT NULL,
  `total-salary` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salary-details`
--

CREATE TABLE `salary-details` (
  `id` int(100) NOT NULL,
  `value-per-day` int(100) NOT NULL,
  `day` int(100) NOT NULL,
  `salary-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `salary-value-per-day`
--

CREATE TABLE `salary-value-per-day` (
  `id` int(11) NOT NULL,
  `percentage` int(11) NOT NULL,
  `value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `student-attendence`
--

CREATE TABLE `student-attendence` (
  `id` int(100) NOT NULL,
  `group-id` int(10) NOT NULL,
  `student-id` int(10) NOT NULL,
  `value` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `time`
--

CREATE TABLE `time` (
  `id` int(10) NOT NULL,
  `time` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `translate`
--

CREATE TABLE `translate` (
  `id` int(11) NOT NULL,
  `word` int(10) NOT NULL,
  `translate` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `First-name` varchar(255) DEFAULT NULL,
  `last-name` varchar(255) DEFAULT NULL,
  `age` int(11) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `telephone` varchar(255) NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `type-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user-extra-details`
--

CREATE TABLE `user-extra-details` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user-type`
--

CREATE TABLE `user-type` (
  `id` int(11) NOT NULL,
  `type` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user-type-pages`
--

CREATE TABLE `user-type-pages` (
  `id` int(11) NOT NULL,
  `pageid` int(11) NOT NULL,
  `usertype-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `word`
--

CREATE TABLE `word` (
  `id` int(11) NOT NULL,
  `word-description` varchar(255) NOT NULL,
  `Language-id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `add-extra-value`
--
ALTER TABLE `add-extra-value`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Add-extra_fk0` (`usertype-id`),
  ADD KEY `Add-extra_fk1` (`extradetails-id`);

--
-- Indexes for table `add-message`
--
ALTER TABLE `add-message`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Add-message_fk0` (`messageid`),
  ADD KEY `Add-message_fk1` (`pageid`);

--
-- Indexes for table `add-timetable`
--
ALTER TABLE `add-timetable`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `calender`
--
ALTER TABLE `calender`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `day`
--
ALTER TABLE `day`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `grades`
--
ALTER TABLE `grades`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Grades_fk0` (`course-id`);

--
-- Indexes for table `group`
--
ALTER TABLE `group`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Group_fk0` (`student-id`),
  ADD KEY `Group_fk1` (`groupdetails-id`);

--
-- Indexes for table `group-details`
--
ALTER TABLE `group-details`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Group-details_fk0` (`course-id`),
  ADD KEY `Group-details_fk1` (`calendar-id`),
  ADD KEY `Group-details_fk2` (`room-id`),
  ADD KEY `Group-details_fk3` (`teacher-id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pages`
--
ALTER TABLE `pages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `request`
--
ALTER TABLE `request`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary`
--
ALTER TABLE `salary`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary-details`
--
ALTER TABLE `salary-details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `salary-value-per-day`
--
ALTER TABLE `salary-value-per-day`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student-attendence`
--
ALTER TABLE `student-attendence`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `time`
--
ALTER TABLE `time`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `translate`
--
ALTER TABLE `translate`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Translate_fk0` (`word`),
  ADD KEY `Translate_fk1` (`translate`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `User_fk0` (`type-id`);

--
-- Indexes for table `user-extra-details`
--
ALTER TABLE `user-extra-details`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user-type`
--
ALTER TABLE `user-type`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user-type-pages`
--
ALTER TABLE `user-type-pages`
  ADD PRIMARY KEY (`id`),
  ADD KEY `User-type-pages_fk0` (`pageid`),
  ADD KEY `User-type-pages_fk1` (`usertype-id`);

--
-- Indexes for table `word`
--
ALTER TABLE `word`
  ADD PRIMARY KEY (`id`),
  ADD KEY `Word_fk0` (`Language-id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `add-extra-value`
--
ALTER TABLE `add-extra-value`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `add-message`
--
ALTER TABLE `add-message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `add-timetable`
--
ALTER TABLE `add-timetable`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `calender`
--
ALTER TABLE `calender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `day`
--
ALTER TABLE `day`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `grades`
--
ALTER TABLE `grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `group`
--
ALTER TABLE `group`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `group-details`
--
ALTER TABLE `group-details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `language`
--
ALTER TABLE `language`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pages`
--
ALTER TABLE `pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `request`
--
ALTER TABLE `request`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `salary`
--
ALTER TABLE `salary`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `salary-details`
--
ALTER TABLE `salary-details`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `salary-value-per-day`
--
ALTER TABLE `salary-value-per-day`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `student-attendence`
--
ALTER TABLE `student-attendence`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `time`
--
ALTER TABLE `time`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `translate`
--
ALTER TABLE `translate`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user-extra-details`
--
ALTER TABLE `user-extra-details`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user-type`
--
ALTER TABLE `user-type`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `user-type-pages`
--
ALTER TABLE `user-type-pages`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `word`
--
ALTER TABLE `word`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `add-extra-value`
--
ALTER TABLE `add-extra-value`
  ADD CONSTRAINT `Add-extra_fk0` FOREIGN KEY (`usertype-id`) REFERENCES `user-type` (`id`),
  ADD CONSTRAINT `Add-extra_fk1` FOREIGN KEY (`extradetails-id`) REFERENCES `user-extra-details` (`id`);

--
-- Constraints for table `group`
--
ALTER TABLE `group`
  ADD CONSTRAINT `Group_fk0` FOREIGN KEY (`student-id`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `Group_fk1` FOREIGN KEY (`groupdetails-id`) REFERENCES `group-details` (`id`);

--
-- Constraints for table `translate`
--
ALTER TABLE `translate`
  ADD CONSTRAINT `Translate_fk0` FOREIGN KEY (`word`) REFERENCES `word` (`id`),
  ADD CONSTRAINT `Translate_fk1` FOREIGN KEY (`translate`) REFERENCES `word` (`id`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `User_fk0` FOREIGN KEY (`type-id`) REFERENCES `user-type` (`id`);

--
-- Constraints for table `user-type-pages`
--
ALTER TABLE `user-type-pages`
  ADD CONSTRAINT `User-type-pages_fk0` FOREIGN KEY (`pageid`) REFERENCES `pages` (`id`),
  ADD CONSTRAINT `User-type-pages_fk1` FOREIGN KEY (`usertype-id`) REFERENCES `user-type` (`id`);

--
-- Constraints for table `word`
--
ALTER TABLE `word`
  ADD CONSTRAINT `Word_fk0` FOREIGN KEY (`Language-id`) REFERENCES `language` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
