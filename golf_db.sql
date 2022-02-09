--
-- Database: `golf_db`
--

CREATE DATABASE `golf_db`;
USE `golf_db`;

-- --------------------------------------------------------

--
-- Table structures
--

CREATE TABLE `club` (
  `number` int(11) NOT NULL,
  `material` varchar(20) DEFAULT NULL,
  `serialnumber` varchar(20) NOT NULL,
  `ssn` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `compete` (
  `ssn` varchar(13) NOT NULL,
  `contestname` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `construction` (
  `serialnumber` varchar(20) NOT NULL,
  `hardness` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `contest` (
  `contestname` varchar(30) NOT NULL,
  `contestdate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `have` (
  `contestname` varchar(30) NOT NULL,
  `type` varchar(20) NOT NULL,
  `moment` time DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `jacket` (
  `brand` varchar(30) NOT NULL,
  `size` varchar(10) DEFAULT NULL,
  `material` varchar(20) DEFAULT NULL,
  `ssn` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `player` (
  `ssn` varchar(13) NOT NULL,
  `name` varchar(30) DEFAULT NULL,
  `age` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `weather` (
  `type` varchar(20) NOT NULL,
  `wind` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Indexes
--

ALTER TABLE `club`
  ADD PRIMARY KEY (`ssn`,`number`) USING BTREE,
  ADD KEY `serialnumber` (`serialnumber`);

ALTER TABLE `compete`
  ADD KEY `ssn` (`ssn`),
  ADD KEY `contestname` (`contestname`);

ALTER TABLE `construction`
  ADD PRIMARY KEY (`serialnumber`);

ALTER TABLE `contest`
  ADD PRIMARY KEY (`contestname`);

ALTER TABLE `have`
  ADD KEY `contestname` (`contestname`),
  ADD KEY `type` (`type`);

ALTER TABLE `jacket`
  ADD PRIMARY KEY (`ssn`,`brand`);

ALTER TABLE `player`
  ADD PRIMARY KEY (`ssn`);

ALTER TABLE `weather`
  ADD PRIMARY KEY (`type`);

-- --------------------------------------------------------

--
-- Restrictions
--

ALTER TABLE `club`
  ADD CONSTRAINT `club_fk_1` FOREIGN KEY (`serialnumber`) REFERENCES `construction` (`serialnumber`),
  ADD CONSTRAINT `club_fk_2` FOREIGN KEY (`ssn`) REFERENCES `player` (`ssn`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `compete`
  ADD CONSTRAINT `compete_fk_1` FOREIGN KEY (`ssn`) REFERENCES `player` (`ssn`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `compete_fk_2` FOREIGN KEY (`contestname`) REFERENCES `contest` (`contestname`);

ALTER TABLE `have`
  ADD CONSTRAINT `have_fk_1` FOREIGN KEY (`contestname`) REFERENCES `contest` (`contestname`),
  ADD CONSTRAINT `have_fk_2` FOREIGN KEY (`type`) REFERENCES `weather` (`type`);

ALTER TABLE `jacket`
  ADD CONSTRAINT `jacket_fk_1` FOREIGN KEY (`ssn`) REFERENCES `player` (`ssn`) ON DELETE CASCADE ON UPDATE CASCADE;

