-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2017 at 03:04 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `login`
--

-- --------------------------------------------------------

--
-- Table structure for table `groups`
--

CREATE TABLE `groups` (
  `id` int(11) NOT NULL,
  `name` varchar(20) NOT NULL,
  `permissions` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `groups`
--

INSERT INTO `groups` (`id`, `name`, `permissions`) VALUES
(1, 'Standard user', '{\r\n\"admin\": 0,\r\n\"moderator\": 0\r\n}'),
(2, 'Administrator', '{\r\n\"admin\": 1,\r\n\"moderator\": 1\r\n}'),
(3, 'mod', '{\n\"admin\": 0,\n\"moderator\": 1}');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(64) NOT NULL,
  `salt` varchar(32) NOT NULL,
  `name` varchar(50) NOT NULL,
  `joined` datetime NOT NULL,
  `group` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `salt`, `name`, `joined`, `group`) VALUES
(4, 'default', 'af18ba39928c732e313260895b124b04907ccd4c3ecee8951c36951e9203e0f4', 'P‘ï×w¬ß€)_fîÞ~ô;âB`œÉ[cÓ2f=@°', 'Default User', '2017-03-13 07:35:55', 1),
(5, 'another', '44e00b4a6466f2be6998e1808bbf0c5814282fbb92d75b41ebc51b8071419c02', 'J|rå 	2<¬ÿæ¬òÇï‡}tVujD–”+½ßm=', 'Another User', '2017-03-13 07:40:10', 1),
(6, 'theVeep', '5bdd0119dca73dfd0b8bf43590c0cd69792df8b5bac923a47922ac22741b7914', 'gö›æ+WœA\nƒMíVƒ^Í¹¬„¹­ø7O\\×+ç', 'The Veep', '2017-03-13 07:45:24', 1),
(7, 'liv', 'ae7262b528dcc48c24fac410e115766ab5f005264d00b6b37a1ce83bafc379b3', '=„ËÈFYï\'$¦ÁEªäXGãYz@¥6', 'Olivia Pope', '2017-03-13 07:52:50', 1),
(8, 'jake', '0c2f41c33b3d8764ac4ba3cb97aa1bfed3fc81e4f28e94dfe2bd4c640d914481', 'é|íUÆqf´WÀ²ðåðbÔDÒw”	ru!îŽŽ‡m±', 'Jake Ballard', '2017-03-13 08:02:47', 1),
(9, 'meredith', '7a227deaef1406b8ee5bfe19b3b02c992698caaa6880f534b60a3ea2de96d509', 'ÔŒ’¹JëØ3Õ÷gzMŽ\"—Lã8	Õ^™’õÁ.Ì›', 'Meredith Grey', '2017-03-13 08:10:11', 1),
(10, 'abby', '068b6155b6dac8e7128c7184c6e9896f518ba1217b58b36c35e82266a30fb8fc', '›üõœ’~4žÜ|1oû7}Á6^+•u©¨=õe', 'Abby Whelan', '2017-03-13 08:13:49', 1),
(11, 'fitz', 'ab16c9a633c8864a30851117315d67672d9c4521a50a44d5b5009db00dace840', '™¯¦QªH\Z rx~Â-ô k€’àùÅ)7ýá@-Å', 'Fitz Gerald Grant III', '2017-03-13 08:15:57', 1),
(12, 'cyrus', '7888602594babb72ffe87e5c3bdd92c815a8b1c9eb8f52fcfda310e98476f283', 'Ü¤—æòS8IŒÿŒ	Ïøßéì·™“Éï–|ÅvÊå', 'Cyrus Rutherford Beene', '2017-03-13 08:19:03', 1),
(13, 'david', 'ba58394e83d879b88951f88f6821e31c55f9c3be6f0ea427cdb1c3d5c0d50002', '¶™Þƒjfþ–|olM»Ï¹&ûë±\ZH\0ÕùõLÏÛ4s9', 'David Rosen', '2017-03-13 08:21:30', 1),
(14, 'wes', 'edf7a641149e1d67cf5b1146dd7288b2c0b1af3cdfaf01ad0a36ee617750a069', 'ð®÷uSeT¦öP¾}î°hüØt~v@áž?ž\'õ‹É`O', 'Wes Gibbins', '2017-03-13 08:32:35', 1),
(15, 'theRock', 'ffe9467a8fd138af569dddc03fe8ae4096b7ac36684b0f9d530a2eab7b20fbed', '4*¹Y?BL§]™ØÀ±ÒÀVÿ(ªì‹ˆÕ\"Üé´kü', 'Dwayne Johnson', '2017-03-15 06:52:02', 1),
(16, 'amanpour', 'dc7da303661f41e9e85997426abbbcab558dc8e7970725dc84d2dcfee3a71877', '+5Uñ¤œA-É\"¿øÁ²7+¹i‹ jÜiRŒT«»4,', 'Christine Amanpour', '2017-03-15 07:48:46', 1),
(17, 'shane', '0c264411fc1cd855d94500f25cc03e3b55c275a7ecfbf6116ff165be19aeb70f', 'è\nÅÅ	už {ó%ÀÄ%5WÍÞpE£´Yl', 'Shane Norman', '2017-03-25 17:06:48', 2),
(18, 'cole', '7d9d57e1d64bceda2d57a80970cd6081aebe62930942d9f9fdde382db40c5670', '|°‡ßÓ&ÿ/\0iZâ¤±\\+S·pm`þ’lˆ\"', 'Jermainne Cole', '2017-03-25 20:28:42', 3);

-- --------------------------------------------------------

--
-- Table structure for table `users_session`
--

CREATE TABLE `users_session` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `hash` varchar(64) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_session`
--

INSERT INTO `users_session` (`id`, `user_id`, `hash`) VALUES
(10, 11, '8fba626ef7faffb90d536a51de544a5231a7d08edba5e949d1f598f449bb61e0');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `groups`
--
ALTER TABLE `groups`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users_session`
--
ALTER TABLE `users_session`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `groups`
--
ALTER TABLE `groups`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;
--
-- AUTO_INCREMENT for table `users_session`
--
ALTER TABLE `users_session`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
