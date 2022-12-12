-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 10.123.0.84:3306
-- Generation Time: Dec 12, 2022 at 02:52 AM
-- Server version: 5.7.27
-- PHP Version: 7.0.33-0+deb9u12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `diesel_cxr956`
--

-- --------------------------------------------------------

--
-- Table structure for table `chapter`
--

CREATE TABLE `chapter` (
  `id` int(11) NOT NULL,
  `textbook_id` int(11) DEFAULT NULL,
  `chapter_num` int(3) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `chapter`
--

INSERT INTO `chapter` (`id`, `textbook_id`, `chapter_num`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 5),
(5, 2, 3),
(6, 3, 1),
(7, 4, 1);

-- --------------------------------------------------------

--
-- Table structure for table `cmsb_accounts`
--

CREATE TABLE `cmsb_accounts` (
  `num` int(10) UNSIGNED NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdByUserNum` int(10) UNSIGNED NOT NULL,
  `updatedDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedByUserNum` int(10) UNSIGNED NOT NULL,
  `fullname` mediumtext COLLATE utf8mb4_unicode_ci,
  `email` mediumtext COLLATE utf8mb4_unicode_ci,
  `username` mediumtext COLLATE utf8mb4_unicode_ci,
  `password` mediumtext COLLATE utf8mb4_unicode_ci,
  `lastLoginDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `expiresDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `neverExpires` tinyint(1) UNSIGNED NOT NULL,
  `isAdmin` tinyint(1) UNSIGNED NOT NULL,
  `disabled` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC TABLESPACE `diesel_cxr956`;

--
-- Dumping data for table `cmsb_accounts`
--

INSERT INTO `cmsb_accounts` (`num`, `createdDate`, `createdByUserNum`, `updatedDate`, `updatedByUserNum`, `fullname`, `email`, `username`, `password`, `lastLoginDate`, `expiresDate`, `neverExpires`, `isAdmin`, `disabled`) VALUES
(1, '2022-11-10 23:23:09', 0, '2022-11-10 23:23:09', 0, 'Hannah', 'cxr956@miami.edu', 'cxr956', '$sha1$522edb2f25bb951ecff7e6bc3d04e5b0c6544d44', '2022-11-10 23:53:56', '0000-00-00 00:00:00', 1, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `cmsb_dashboard`
--

CREATE TABLE `cmsb_dashboard` (
  `num` int(10) UNSIGNED NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdByUserNum` int(10) UNSIGNED NOT NULL,
  `updatedDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedByUserNum` int(10) UNSIGNED NOT NULL,
  `title` mediumtext COLLATE utf8mb4_unicode_ci,
  `content` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci TABLESPACE `diesel_cxr956`;

--
-- Dumping data for table `cmsb_dashboard`
--

INSERT INTO `cmsb_dashboard` (`num`, `createdDate`, `createdByUserNum`, `updatedDate`, `updatedByUserNum`, `title`, `content`) VALUES
(1, '2022-11-10 23:34:28', 1, '2022-11-10 23:34:28', 1, 'Dashboard', '<p>Welcome! You\'re in!!</p>');

-- --------------------------------------------------------

--
-- Table structure for table `cmsb_uploads`
--

CREATE TABLE `cmsb_uploads` (
  `num` int(10) UNSIGNED NOT NULL,
  `order` int(10) UNSIGNED NOT NULL,
  `createdTime` datetime NOT NULL,
  `tableName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `fieldName` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `recordNum` int(11) DEFAULT NULL,
  `filePath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `urlPath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `width` int(10) UNSIGNED NOT NULL,
  `height` int(10) UNSIGNED NOT NULL,
  `filesize` mediumtext COLLATE utf8mb4_unicode_ci,
  `preSaveTempId` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `storage` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `mediaNum` mediumtext COLLATE utf8mb4_unicode_ci,
  `thumbFilePath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbUrlPath` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbWidth` int(10) UNSIGNED NOT NULL,
  `thumbHeight` int(10) UNSIGNED NOT NULL,
  `thumbFilePath2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbUrlPath2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbWidth2` int(10) UNSIGNED NOT NULL,
  `thumbHeight2` int(10) UNSIGNED NOT NULL,
  `thumbFilePath3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbUrlPath3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbWidth3` int(10) UNSIGNED NOT NULL,
  `thumbHeight3` int(10) UNSIGNED NOT NULL,
  `thumbFilePath4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbUrlPath4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `thumbWidth4` int(10) UNSIGNED NOT NULL,
  `thumbHeight4` int(10) UNSIGNED NOT NULL,
  `info1` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info2` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info3` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info4` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `info5` varchar(255) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC TABLESPACE `diesel_cxr956`;

-- --------------------------------------------------------

--
-- Table structure for table `cmsb_welcome`
--

CREATE TABLE `cmsb_welcome` (
  `num` int(10) UNSIGNED NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdByUserNum` int(10) UNSIGNED NOT NULL,
  `updatedDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedByUserNum` int(10) UNSIGNED NOT NULL,
  `title` mediumtext COLLATE utf8mb4_unicode_ci,
  `content` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci TABLESPACE `diesel_cxr956`;

--
-- Dumping data for table `cmsb_welcome`
--

INSERT INTO `cmsb_welcome` (`num`, `createdDate`, `createdByUserNum`, `updatedDate`, `updatedByUserNum`, `title`, `content`) VALUES
(1, '2022-11-10 23:38:16', 1, '2022-11-10 23:38:16', 1, 'Hey There! What would you like to do', '<ul>\n<li><a href=\"/user-login.php\">Login</a></li>\n<li><a href=\"/user-signup.php\">Register</a></li>\n<li><a href=\"/dashboard.php\">View Dashboard</a></li>\n</ul>');

-- --------------------------------------------------------

--
-- Table structure for table `cmsb__accesslist`
--

CREATE TABLE `cmsb__accesslist` (
  `num` int(10) UNSIGNED NOT NULL,
  `userNum` int(10) UNSIGNED NOT NULL,
  `tableName` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `accessLevel` tinyint(3) UNSIGNED NOT NULL,
  `maxRecords` int(10) UNSIGNED DEFAULT NULL,
  `randomSaveId` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC TABLESPACE `diesel_cxr956`;

--
-- Dumping data for table `cmsb__accesslist`
--

INSERT INTO `cmsb__accesslist` (`num`, `userNum`, `tableName`, `accessLevel`, `maxRecords`, `randomSaveId`) VALUES
(1, 1, 'all', 9, NULL, '1234567890');

-- --------------------------------------------------------

--
-- Table structure for table `cmsb__cron_log`
--

CREATE TABLE `cmsb__cron_log` (
  `num` int(10) UNSIGNED NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `activity` mediumtext COLLATE utf8mb4_unicode_ci,
  `summary` mediumtext COLLATE utf8mb4_unicode_ci,
  `completed` tinyint(1) UNSIGNED NOT NULL,
  `function` mediumtext COLLATE utf8mb4_unicode_ci,
  `output` mediumtext COLLATE utf8mb4_unicode_ci,
  `runtime` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC TABLESPACE `diesel_cxr956`;

-- --------------------------------------------------------

--
-- Table structure for table `cmsb__email_templates`
--

CREATE TABLE `cmsb__email_templates` (
  `num` int(10) UNSIGNED NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdByUserNum` int(10) UNSIGNED NOT NULL,
  `updatedDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedByUserNum` int(10) UNSIGNED NOT NULL,
  `template_id` mediumtext COLLATE utf8mb4_unicode_ci,
  `description` mediumtext COLLATE utf8mb4_unicode_ci,
  `from` mediumtext COLLATE utf8mb4_unicode_ci,
  `reply-to` mediumtext COLLATE utf8mb4_unicode_ci,
  `to` mediumtext COLLATE utf8mb4_unicode_ci,
  `cc` mediumtext COLLATE utf8mb4_unicode_ci,
  `bcc` mediumtext COLLATE utf8mb4_unicode_ci,
  `subject` mediumtext COLLATE utf8mb4_unicode_ci,
  `html` mediumtext COLLATE utf8mb4_unicode_ci,
  `placeholders` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC TABLESPACE `diesel_cxr956`;

-- --------------------------------------------------------

--
-- Table structure for table `cmsb__error_log`
--

CREATE TABLE `cmsb__error_log` (
  `num` int(10) UNSIGNED NOT NULL,
  `updatedDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedByUserNum` int(10) UNSIGNED NOT NULL,
  `dateLogged` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `error` mediumtext COLLATE utf8mb4_unicode_ci,
  `url` mediumtext COLLATE utf8mb4_unicode_ci,
  `filepath` mediumtext COLLATE utf8mb4_unicode_ci,
  `line_num` mediumtext COLLATE utf8mb4_unicode_ci,
  `backtrace` mediumtext COLLATE utf8mb4_unicode_ci,
  `user_cms` mediumtext COLLATE utf8mb4_unicode_ci,
  `user_web` mediumtext COLLATE utf8mb4_unicode_ci,
  `remote_addr` mediumtext COLLATE utf8mb4_unicode_ci,
  `http_user_agent` mediumtext COLLATE utf8mb4_unicode_ci,
  `get_vars` mediumtext COLLATE utf8mb4_unicode_ci,
  `post_vars` mediumtext COLLATE utf8mb4_unicode_ci,
  `request_vars` mediumtext COLLATE utf8mb4_unicode_ci,
  `cookie_vars` mediumtext COLLATE utf8mb4_unicode_ci,
  `session_vars` mediumtext COLLATE utf8mb4_unicode_ci,
  `server_vars` mediumtext COLLATE utf8mb4_unicode_ci,
  `symbol_table` mediumtext COLLATE utf8mb4_unicode_ci,
  `raw_log_data` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC TABLESPACE `diesel_cxr956`;

-- --------------------------------------------------------

--
-- Table structure for table `cmsb__log_audit`
--

CREATE TABLE `cmsb__log_audit` (
  `num` int(10) UNSIGNED NOT NULL,
  `dateLogged` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `audit_event` mediumtext COLLATE utf8mb4_unicode_ci,
  `event_source` mediumtext COLLATE utf8mb4_unicode_ci,
  `url` mediumtext COLLATE utf8mb4_unicode_ci,
  `user_cms` mediumtext COLLATE utf8mb4_unicode_ci,
  `user_web` mediumtext COLLATE utf8mb4_unicode_ci,
  `remote_addr` mediumtext COLLATE utf8mb4_unicode_ci,
  `http_user_agent` mediumtext COLLATE utf8mb4_unicode_ci,
  `additional_data` mediumtext COLLATE utf8mb4_unicode_ci
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC TABLESPACE `diesel_cxr956`;

--
-- Dumping data for table `cmsb__log_audit`
--

INSERT INTO `cmsb__log_audit` (`num`, `dateLogged`, `audit_event`, `event_source`, `url`, `user_cms`, `user_web`, `remote_addr`, `http_user_agent`, `additional_data`) VALUES
(1, '2022-11-10 23:23:24', 'Login: Success', '', 'http://cxr956.us.tempcloudsite.com/cmsb/admin.php', 'Array\n(\n    [num] => 1\n    [username] => cxr956\n    [_tableName] => accounts\n)\n', 'Array\n(\n    [num] => 1\n    [username] => cxr956\n    [_tableName] => accounts\n)\n', '192.88.124.53', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko/20100101 Firefox/106.0', '{\"username\":\"cxr956\"}'),
(2, '2022-11-10 23:34:28', 'Record added (dashboard)', '', 'http://cxr956.us.tempcloudsite.com/cmsb/admin.php', 'Array\n(\n    [num] => 1\n    [username] => cxr956\n    [_tableName] => accounts\n)\n', 'Array\n(\n    [num] => 1\n    [username] => cxr956\n    [_tableName] => accounts\n)\n', '192.88.124.53', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko/20100101 Firefox/106.0', '{\"tableName\":\"dashboard\",\"num\":1}'),
(3, '2022-11-10 23:38:16', 'Record added (welcome)', '', 'http://cxr956.us.tempcloudsite.com/cmsb/admin.php', 'Array\n(\n    [num] => 1\n    [username] => cxr956\n    [_tableName] => accounts\n)\n', 'Array\n(\n    [num] => 1\n    [username] => cxr956\n    [_tableName] => accounts\n)\n', '192.88.124.53', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:106.0) Gecko/20100101 Firefox/106.0', '{\"tableName\":\"welcome\",\"num\":1}');

-- --------------------------------------------------------

--
-- Table structure for table `cmsb__media`
--

CREATE TABLE `cmsb__media` (
  `num` int(10) UNSIGNED NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `createdByUserNum` int(10) UNSIGNED NOT NULL,
  `updatedDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `updatedByUserNum` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC TABLESPACE `diesel_cxr956`;

-- --------------------------------------------------------

--
-- Table structure for table `cmsb__outgoing_mail`
--

CREATE TABLE `cmsb__outgoing_mail` (
  `num` int(10) UNSIGNED NOT NULL,
  `createdDate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `from` mediumtext COLLATE utf8mb4_unicode_ci,
  `reply-to` mediumtext COLLATE utf8mb4_unicode_ci,
  `to` mediumtext COLLATE utf8mb4_unicode_ci,
  `cc` mediumtext COLLATE utf8mb4_unicode_ci,
  `bcc` mediumtext COLLATE utf8mb4_unicode_ci,
  `subject` mediumtext COLLATE utf8mb4_unicode_ci,
  `html` mediumtext COLLATE utf8mb4_unicode_ci,
  `text` mediumtext COLLATE utf8mb4_unicode_ci,
  `sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `headers` mediumtext COLLATE utf8mb4_unicode_ci,
  `customData` mediumtext COLLATE utf8mb4_unicode_ci,
  `backgroundSend` tinyint(1) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci ROW_FORMAT=DYNAMIC TABLESPACE `diesel_cxr956`;

-- --------------------------------------------------------

--
-- Table structure for table `problem`
--

CREATE TABLE `problem` (
  `id` int(11) NOT NULL,
  `chapter_id` int(11) DEFAULT NULL,
  `question_number` varchar(6) COLLATE utf8_unicode_ci DEFAULT NULL,
  `question` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `problem`
--

INSERT INTO `problem` (`id`, `chapter_id`, `question_number`, `question`) VALUES
(1, 3, '1', 'An upper-layer packet is split into 10 frames, each of which has an 80% chance of ar-\r\nriving undamaged. If no error control is done by the data link protocol, how many\r\ntimes must the message be sent on average to get the entire thing through?'),
(2, 3, '2', 'The following character encoding is used in a data link protocol:\r\nA: 01000111 B: 11100011 FLAG: 01111110 ESC: 11100000\r\nShow the bit sequence transmitted (in binary) for the four-character frame A B ESC\r\nFLAG when each of the following framing methods is used:\r\n(a) Byte count.\r\n(b) Flag bytes with byte stuffing.\r\n(c) Starting and ending flag bytes with bit stuffing.'),
(3, 3, '3', 'The following data fragment occurs in the middle of a data stream for which the byte-\r\nstuffing algorithm described in the text is used: A B ESC C ESC FLAG FLAG D.\r\nWhat is the output after stuffing?'),
(4, 3, '4', 'What is the maximum overhead in byte-stuffing algorithm?'),
(5, 3, '5', 'A bit string, 0111101111101111110, needs to be transmitted at the data link layer.\r\nWhat is the string actually transmitted after bit stuffing?'),
(6, 3, '7', 'Can you think of any circumstances under which an open-loop protocol (e.g., a Ham-\r\nming code) might be preferable to the feedback-type protocols discussed throughout\r\nthis chapter?'),
(7, 3, '10', 'A 12-bit Hamming code whose hexadecimal value is 0xE4F arrives at a receiver.\r\nWhat was the original value in hexadecimal? Assume that not more than 1 bit is in\r\nerror.'),
(8, 3, '8', 'To provide more reliability than a single parity bit can give, an error-detecting coding\r\nscheme uses one parity bit for checking all the odd-numbered bits and a second parity\r\nbit for all the even-numbered bits. What is the Hamming distance of this code?'),
(9, 3, '15', 'Suppose that a message 1001 1100 1010 0011 is transmitted using Internet Checksum\r\n(4-bit word). What is the value of the checksum?'),
(10, 1, '6', 'A client-server system uses a satellite network, with the satellite at a height of 40,000\r\nkm. What is the best-case delay in response to a request?'),
(11, 5, '3', 'What is an n-tier architecture?'),
(12, 6, '2.3', 'What is the smallest value of n such that an algorithm whose running time is 100n2\r\nruns faster than an algorithm whose running time is 2n on the same machine?'),
(13, 7, '2.8', 'How many different varieties of pizza can be made\r\nif you have the following choice: small, medium, or large\r\nsize; thin ‘n’ crispy, hand-tossed, or pan crust; and 12 top-\r\npings (cheese is automatic), from which you may select\r\nfrom 0 to 12?'),
(14, 2, '5', 'What signal-to-noise ratio is needed to put a T1 carrier on a 50-kHz line?'),
(15, 4, '28', 'A network on the Internet has a subnet mask of 255.255.240.0. What is the maximum\r\nnumber of hosts it can handle?');

-- --------------------------------------------------------

--
-- Table structure for table `solution`
--

CREATE TABLE `solution` (
  `id` int(11) NOT NULL,
  `problem_id` int(11) DEFAULT NULL,
  `solution` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL,
  `solution_type` tinyint(1) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `solution`
--

INSERT INTO `solution` (`id`, `problem_id`, `solution`, `solution_type`) VALUES
(1, 1, '9.3 transmissions', 1),
(2, 2, '(a) 00000100 01000111 11100011 11100000 01111110\r\n(b) 01111110 01000111 11100011 11100000 11100000 11100000 01111110 01111110\r\n(c) 01111110 01000111 110100011 111000000 011111010 01111110', 1),
(3, 3, 'A B ESC ESC C ESC ESC ESC FLAG ESC FLAG D', 1),
(4, 4, '100% overhead', 1),
(5, 5, 'If you could always count on an endless stream of frames, one flag byte might\r\nbe enough. But what if a frame ends (with a flag byte) and there are no new\r\nframes for 15 minutes? How will the receiver know that the next byte is ac-\r\ntually the start of a new frame and not just noise on the line? The protocol is\r\nmuch simpler with starting and ending flag bytes.', 1),
(6, 6, 'If the propagation delay is very long, as in the case of a space probe on or\r\nnear Mars or Venus, forward error correction is indicated. It is also ap-\r\npropriate in a military situation in which the receiver does not want to dis-\r\nclose its location by transmitting. If the error rate is low enough that an\r\nerror-correcting code is good enough, it may also be simpler. Finally, real-\r\ntime systems cannot tolerate waiting for retransmissions.', 1),
(7, 7, '0xAF', 1),
(8, 8, '2', 1),
(9, 9, '1100', 1),
(10, 10, '533 msec', 1),
(11, 11, 'The three-tier architecture can be expanded to n tiers, with additional tiers providing more\r\nflexibility and scalability.', 1),
(12, 12, 'n = 15', 1),
(13, 13, '36,864', 1),
(15, 14, '≈ 93 dB', 1),
(16, 15, '4096 hosts', 1);

-- --------------------------------------------------------

--
-- Table structure for table `step`
--

CREATE TABLE `step` (
  `id` int(11) NOT NULL,
  `solution_id` int(11) DEFAULT NULL,
  `step_number` int(11) DEFAULT NULL,
  `solution` varchar(1024) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `step`
--

INSERT INTO `step` (`id`, `solution_id`, `step_number`, `solution`) VALUES
(1, 10, 1, 'The request has to go up and down, and the response has to go up and down.\r\nThe total path length traversed is thus 40,000km x 4 = 160,000 km.'),
(2, 10, 2, 'The speed of light in air and vacuum is 300,000 km/sec.'),
(3, 10, 3, 'The propagation delay alone is 160,000/300,000 sec = 533msec'),
(4, 12, 1, 'We want that 100n^2 < 2^n. '),
(5, 12, 2, 'For n = 14, this becomes 100(14)^2 =19600 > 2^14 = 16384'),
(6, 12, 3, 'For n = 15 it is 100(15)^2 = 22500 < 2^15 = 32768. Here 100n^2 runs faster than 2^n.'),
(7, 13, 1, 'There are 3 pizza sizes from which you can select 1. There are 3 crusts types of which you select one. There are 12 option choices, where you have the choice to put on.'),
(8, 13, 2, 'This gives: 3 · 3 · 2^12 = 36,864'),
(9, 15, 1, 'To send a T1 signal we need Hlog_2 (1 + S /N) = 1.544 × 10 6 with H = 50,000.'),
(10, 15, 2, 'This yields S /N = 2 30 − 1, which is about 93 dB'),
(11, 16, 1, 'The mask is 20 bits long, so the network part is 20 bits.'),
(12, 16, 2, 'The remaining 12 bits are for the host.'),
(13, 16, 3, '2^12 = 4096'),
(14, 4, 1, 'The maximum overhead occurs when the payload consists of only ESC and\r\nFLAG bytes.'),
(15, 4, 2, 'In this case, there will be 100% overhead'),
(16, 8, 1, 'Making one change to any valid character cannot generate another valid char-\r\nacter due to the nature of parity bits'),
(17, 8, 2, 'Making two changes to even bits or two changes to odd bits will give another valid character, so the distance is 2.'),
(18, 7, 1, 'If we number the bits from left to right starting at bit 1, in this example bit 2\r\n(a parity bit) is incorrect.'),
(19, 7, 2, 'The 12-bit value transmitted (after Hamming en-coding) was 0xA4F.'),
(20, 7, 3, 'The original 8-bit data value was 0xAF.'),
(21, 9, 1, 'To obtain the checksum, we need to calculate the ones complement sum of\r\nwords, which is same as sum modulo 24 and adding any overflow of high\r\norder bits back into low-order bits:'),
(22, 9, 2, '0011 + 1010 = 1101'),
(23, 9, 3, '1101 + 1100 = 1001 + 1 = 1010'),
(24, 9, 4, '1010 + 1001 = 0011 + 1 = 1100');

-- --------------------------------------------------------

--
-- Table structure for table `textbook`
--

CREATE TABLE `textbook` (
  `id` int(11) NOT NULL,
  `img_name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `author` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `edition` int(11) DEFAULT NULL,
  `isbn` varchar(13) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `textbook`
--

INSERT INTO `textbook` (`id`, `img_name`, `title`, `author`, `edition`, `isbn`) VALUES
(1, 'ComputerNetworks5thEdition.jpg', 'Computer Networks', 'Andrew S. Tanenbaum', 5, '9780132126953'),
(2, 'DatabaseSystems.jpeg', 'Database Systems: A Practical Approach to Design, Implementation, and Management', 'Thomas Connolly', 6, '9781292061849'),
(3, 'IntroToAlgorithms.jpeg', 'Introduction to Algorithms', 'Thomas H. Cormen', 3, '9780262033848'),
(4, 'ProbabilityAndStatisticalInterference.jpg', 'Probability and Statistical Inference', 'Robert Hogg', 9, '9780321923271');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `chapter`
--
ALTER TABLE `chapter`
  ADD PRIMARY KEY (`id`),
  ADD KEY `textbook_id` (`textbook_id`);

--
-- Indexes for table `cmsb_accounts`
--
ALTER TABLE `cmsb_accounts`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `cmsb_dashboard`
--
ALTER TABLE `cmsb_dashboard`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `cmsb_uploads`
--
ALTER TABLE `cmsb_uploads`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `cmsb_welcome`
--
ALTER TABLE `cmsb_welcome`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `cmsb__accesslist`
--
ALTER TABLE `cmsb__accesslist`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `cmsb__cron_log`
--
ALTER TABLE `cmsb__cron_log`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `cmsb__email_templates`
--
ALTER TABLE `cmsb__email_templates`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `cmsb__error_log`
--
ALTER TABLE `cmsb__error_log`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `cmsb__log_audit`
--
ALTER TABLE `cmsb__log_audit`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `cmsb__media`
--
ALTER TABLE `cmsb__media`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `cmsb__outgoing_mail`
--
ALTER TABLE `cmsb__outgoing_mail`
  ADD PRIMARY KEY (`num`);

--
-- Indexes for table `problem`
--
ALTER TABLE `problem`
  ADD PRIMARY KEY (`id`),
  ADD KEY `chapter_id` (`chapter_id`);

--
-- Indexes for table `solution`
--
ALTER TABLE `solution`
  ADD PRIMARY KEY (`id`),
  ADD KEY `problem_id` (`problem_id`);

--
-- Indexes for table `step`
--
ALTER TABLE `step`
  ADD PRIMARY KEY (`id`),
  ADD KEY `solution_id` (`solution_id`);

--
-- Indexes for table `textbook`
--
ALTER TABLE `textbook`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `chapter`
--
ALTER TABLE `chapter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `cmsb_accounts`
--
ALTER TABLE `cmsb_accounts`
  MODIFY `num` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cmsb_dashboard`
--
ALTER TABLE `cmsb_dashboard`
  MODIFY `num` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cmsb_uploads`
--
ALTER TABLE `cmsb_uploads`
  MODIFY `num` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cmsb_welcome`
--
ALTER TABLE `cmsb_welcome`
  MODIFY `num` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cmsb__accesslist`
--
ALTER TABLE `cmsb__accesslist`
  MODIFY `num` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `cmsb__cron_log`
--
ALTER TABLE `cmsb__cron_log`
  MODIFY `num` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cmsb__email_templates`
--
ALTER TABLE `cmsb__email_templates`
  MODIFY `num` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cmsb__error_log`
--
ALTER TABLE `cmsb__error_log`
  MODIFY `num` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cmsb__log_audit`
--
ALTER TABLE `cmsb__log_audit`
  MODIFY `num` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `cmsb__media`
--
ALTER TABLE `cmsb__media`
  MODIFY `num` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cmsb__outgoing_mail`
--
ALTER TABLE `cmsb__outgoing_mail`
  MODIFY `num` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `problem`
--
ALTER TABLE `problem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `solution`
--
ALTER TABLE `solution`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `step`
--
ALTER TABLE `step`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `textbook`
--
ALTER TABLE `textbook`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
