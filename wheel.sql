-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 14, 2019 at 01:31 PM
-- Server version: 5.7.17-log
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wheel`
--

-- --------------------------------------------------------

--
-- Table structure for table `autonumber`
--

CREATE TABLE `autonumber` (
  `item_number` int(4) UNSIGNED ZEROFILL NOT NULL,
  `finance_number` int(4) UNSIGNED ZEROFILL NOT NULL,
  `quotation_number` int(4) UNSIGNED ZEROFILL NOT NULL,
  `invoice_number` int(4) UNSIGNED ZEROFILL NOT NULL,
  `year` int(4) UNSIGNED ZEROFILL NOT NULL,
  `month` int(2) UNSIGNED ZEROFILL NOT NULL,
  `day` int(2) UNSIGNED ZEROFILL NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `autonumber`
--

INSERT INTO `autonumber` (`item_number`, `finance_number`, `quotation_number`, `invoice_number`, `year`, `month`, `day`) VALUES
(0005, 0001, 0001, 0001, 2019, 05, 13);

-- --------------------------------------------------------

--
-- Table structure for table `backup_logs`
--

CREATE TABLE `backup_logs` (
  `backup_key` varchar(32) NOT NULL,
  `backup_file` varchar(256) NOT NULL,
  `backup_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `user_key` char(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `backup_logs`
--

INSERT INTO `backup_logs` (`backup_key`, `backup_file`, `backup_date`, `user_key`) VALUES
('68dcd2bc4c89bfdf39bb9e195b134944', '2018-12-16.bk.sql', '2018-12-16 10:02:57', 'd97530f6437e7ffa3a74afe46a953a15');

-- --------------------------------------------------------

--
-- Table structure for table `brand`
--

CREATE TABLE `brand` (
  `BrandID` int(11) NOT NULL,
  `BrandName` varchar(30) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `brand`
--

INSERT INTO `brand` (`BrandID`, `BrandName`) VALUES
(1, 'Apollo'),
(2, 'BF Goodrich'),
(3, 'Brigestone'),
(4, 'Continental'),
(5, 'Dunlop'),
(6, 'Goodyear'),
(7, 'Hankook'),
(8, 'Kumho'),
(9, 'Michelin'),
(10, 'Pirelli'),
(11, 'Toyo'),
(12, 'Yokohama');

-- --------------------------------------------------------

--
-- Table structure for table `brandrubble`
--

CREATE TABLE `brandrubble` (
  `id` int(11) NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brandrubble`
--

INSERT INTO `brandrubble` (`id`, `code`, `Description`, `status`) VALUES
(1, 'RB0001', 'Apollo', 1),
(2, 'RB0002', 'BF Goodrich', 1),
(3, 'RB0003', 'Brigestone', 1),
(4, 'RB0004', 'Continental', 1);

-- --------------------------------------------------------

--
-- Table structure for table `brandwhee`
--

CREATE TABLE `brandwhee` (
  `id` int(11) NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `brandwhee`
--

INSERT INTO `brandwhee` (`id`, `code`, `Description`, `status`) VALUES
(1, 'WB0001', 'RAY Engineering', 1),
(2, 'WB0002', 'Advan Yokohama', 1),
(3, 'WB0003', 'Mugen GP', 1),
(4, 'WB0004', 'Lenso', 1),
(5, 'WB0005', 'Volk TE37', 1),
(6, 'WB0006', 'ENKEI RACING RPF1', 1);

-- --------------------------------------------------------

--
-- Table structure for table `cancelesd_reserve`
--

CREATE TABLE `cancelesd_reserve` (
  `canceles_key` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `reserve_code` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `user_create` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `date_create` datetime NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `card_info`
--

CREATE TABLE `card_info` (
  `card_key` char(32) NOT NULL,
  `card_code` varchar(16) NOT NULL,
  `card_customer_name` varchar(64) NOT NULL,
  `card_customer_lastname` varchar(64) NOT NULL,
  `card_customer_address` text NOT NULL,
  `card_customer_phone` varchar(128) NOT NULL,
  `card_customer_email` varchar(128) NOT NULL,
  `card_note` text NOT NULL,
  `card_done_aprox` date NOT NULL,
  `user_key` varchar(32) NOT NULL,
  `card_status` varchar(32) NOT NULL,
  `card_insert` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `card_info`
--

INSERT INTO `card_info` (`card_key`, `card_code`, `card_customer_name`, `card_customer_lastname`, `card_customer_address`, `card_customer_phone`, `card_customer_email`, `card_note`, `card_done_aprox`, `user_key`, `card_status`, `card_insert`) VALUES
('77fa8e1770e8244e27866e95f674058c', 'CQDO6UW', 'tae', 'tae', 'tae', '6543236543', '435345', 'sdfsf', '2019-05-14', 'd97530f6437e7ffa3a74afe46a953a15', 'c382e352e2e620a3c60a2cc7c6a7fa35', '2019-05-05'),
('cc005e33e32405dd755f4ea01ea9ab19', 'C07153JE', 'test', 'test', '', '0917099645', 'jitrawan.ch@gmail.com', '', '2019-05-31', '6a7c6fe063021a761c8498b4f11aad85', 'c382e352e2e620a3c60a2cc7c6a7fa35', '2019-05-09'),
('e17956a7518eb0ffd6bf7bb9b8bfc4d4', 'C0001', 'กกก', 'กกกกก', '', '0917099645', 'jitrawan.ch@gmail.com', '', '2019-05-31', 'd97530f6437e7ffa3a74afe46a953a15', 'c382e352e2e620a3c60a2cc7c6a7fa35', '2019-05-13');

-- --------------------------------------------------------

--
-- Table structure for table `card_item`
--

CREATE TABLE `card_item` (
  `item_key` char(32) NOT NULL,
  `card_key` varchar(32) NOT NULL,
  `item_number` int(11) NOT NULL,
  `item_name` varchar(128) NOT NULL,
  `item_note` text NOT NULL,
  `item_price_aprox` float NOT NULL,
  `item_insert` date NOT NULL,
  `reserve_key` char(32) NOT NULL,
  `reseve_item_key` char(32) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `item_amt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `card_item`
--

INSERT INTO `card_item` (`item_key`, `card_key`, `item_number`, `item_name`, `item_note`, `item_price_aprox`, `item_insert`, `reserve_key`, `reseve_item_key`, `item_amt`) VALUES
('b81a743c16eebd098e009177b2c20afe', '77fa8e1770e8244e27866e95f674058c', 19050001, 'ล้อแม๊ก RAY Engineering ขนาด: ขอบ:13 รู:4 ประเภท:ล้อแม็กกะทะ', 'แตก', 0, '2019-05-05', '9633399692e492b5a09b4bd0863b9d1b', 'P0001', 1),
('1436ffab337d817495af6c29238cfa96', 'cc005e33e32405dd755f4ea01ea9ab19', 19050002, 'ยาง Apollo ขนาด: ซี่รี่:60 ความกว้าง:165', 'test', 0, '2019-05-09', 'cdc9ebd7e304d5b6a49bb682e62f50bd', 'P0004', 4),
('09fa5c6b29b3a7fa8a965e23e3284f1c', 'cc005e33e32405dd755f4ea01ea9ab19', 19050003, 'ล้อแม๊ก Advan Yokohama ขนาด: ขอบ:13 รู:4H100 ประเภท:ล้อแม็กกะทะ', 'test', 0, '2019-05-09', '', 'W0003', 4),
('8eb2689be68dedc92659aa0e6e5018b2', 'e17956a7518eb0ffd6bf7bb9b8bfc4d4', 19050004, 'ล้อแม๊ก RAY Engineering รุ่น:รุ่น1 ขนาด: ขอบ:13 รู: ประเภท:ล้อแม็กกะทะ', 'test', 0, '2019-05-13', '634f5fff366c5206619f3986592002e8', 'W0001', 1);

-- --------------------------------------------------------

--
-- Table structure for table `card_status`
--

CREATE TABLE `card_status` (
  `cstatus_key` char(32) NOT NULL,
  `card_key` varchar(32) NOT NULL,
  `card_status` varchar(32) NOT NULL,
  `card_status_note` text NOT NULL,
  `user_key` varchar(32) NOT NULL,
  `cstatus_insert` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `card_status`
--

INSERT INTO `card_status` (`cstatus_key`, `card_key`, `card_status`, `card_status_note`, `user_key`, `cstatus_insert`) VALUES
('a95c4537f56b5c02730a23938f002d48', '77fa8e1770e8244e27866e95f674058c', 'c382e352e2e620a3c60a2cc7c6a7fa35', 'dsf', 'd97530f6437e7ffa3a74afe46a953a15', '2019-05-04 17:45:04'),
('13fdceb26693dbe7a2fd15d0590cdac3', 'cc005e33e32405dd755f4ea01ea9ab19', 'c382e352e2e620a3c60a2cc7c6a7fa35', '', '6a7c6fe063021a761c8498b4f11aad85', '2019-05-09 10:25:05'),
('21ca71a3811f085244ab91558d84a911', 'e17956a7518eb0ffd6bf7bb9b8bfc4d4', 'c382e352e2e620a3c60a2cc7c6a7fa35', '', 'd97530f6437e7ffa3a74afe46a953a15', '2019-05-13 05:56:01');

-- --------------------------------------------------------

--
-- Table structure for table `card_type`
--

CREATE TABLE `card_type` (
  `ctype_key` char(32) NOT NULL,
  `ctype_name` varchar(128) NOT NULL,
  `ctype_color` varchar(16) NOT NULL,
  `ctype_status` tinyint(1) NOT NULL,
  `ctype_insert` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `card_type`
--

INSERT INTO `card_type` (`ctype_key`, `ctype_name`, `ctype_color`, `ctype_status`, `ctype_insert`) VALUES
('2fdf411856947d19708cf4da19aa3af3', 'เปลี่ยนสินค้าชิ้นใหม่', '#ff6969', 0, '2016-04-25 06:50:59'),
('31c1891444b8e5734bee09165953bca1', 'ไม่สามารถซ่อมได้', '#9e9806', 0, '2016-04-25 06:49:41'),
('4973069504e1be2a5bdcf7162ade8a16', 'ซ่อม/เคลม เสร็จ', '#06d628', 1, '2016-04-25 06:49:21'),
('58dc6633d9c14d0189efd328fc119591', 'ส่งมอบสินค้าคืนลูกค้าเรียบร้อย', '#2958ff', 1, '2016-04-25 06:52:56'),
('89da7d193f3c67e4310f50cbb5b36b90', 'นำรายการซ่อม/เคลม เข้าระบบ', '#29ccff', 0, '2016-04-25 06:23:50'),
('a5eb0dd1c5065bb9fe0cb05d61f03f4a', 'ยกเลิกการซ่อม/เคลม', '#753709', 0, '2016-04-25 06:51:39'),
('b090c4112da52d40a08349b9000dab88', 'ตรวจสอบรายการซ่อม/เคลม', '#c9c9c9', 0, '2016-04-25 06:11:34'),
('b1f4d8a6d50a01b4211fd877f7ae464f', 'ดำเนินการซ่อม/เคลม', '#120eeb', 0, '2016-04-25 06:48:05'),
('c382e352e2e620a3c60a2cc7c6a7fa35', 'ส่งต่อการซ่อม/เคลม', '#d940ff', 1, '2016-04-25 06:48:42'),
('c9934ed002b3a365088862d85604b765', 'เปลี่ยนอะไหล่', '#9c9c9c', 0, '2016-04-25 06:51:16'),
('da144a84c0660c67f115eeefa93dc56f', 'ชำระเงิน', '#ff5c00', 0, '2016-04-25 06:52:35');

-- --------------------------------------------------------

--
-- Table structure for table `changeproduct`
--

CREATE TABLE `changeproduct` (
  `change_key` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `ProductID` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `reserve_key` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `change_Amt` int(11) NOT NULL,
  `remark` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createDate` date NOT NULL,
  `createBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `dealer`
--

CREATE TABLE `dealer` (
  `dealer_id` int(10) NOT NULL,
  `dealer_code` varchar(5) NOT NULL,
  `dealer_name` varchar(255) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address` text NOT NULL,
  `idline` varchar(20) NOT NULL,
  `email` varchar(100) NOT NULL,
  `status` int(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `dealer`
--

INSERT INTO `dealer` (`dealer_id`, `dealer_code`, `dealer_name`, `mobile`, `address`, `idline`, `email`, `status`) VALUES
(2, 'D0002', 'ใจดียาง จำกัด', '0812345677', '234 ม.7 ตำบล สำโรงกลาง อำเภอ พระประแดง จังหวัด สมุทรปราการ 10130', '', '', 1),
(3, 'D0003', 'แม็ก มั่นคง', '029194858', '123 กทม', '', '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `diameterrubble`
--

CREATE TABLE `diameterrubble` (
  `id` int(11) NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `SeriesRubble` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `WidthRubble` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diameterrubble`
--

INSERT INTO `diameterrubble` (`id`, `code`, `Description`, `status`, `SeriesRubble`, `WidthRubble`) VALUES
(1, 'RD0001', '10', 1, '', ''),
(2, 'RD0002', '12', 1, '', ''),
(3, 'RD0003', '13', 1, '', ''),
(4, 'RD0004', '14', 1, '', ''),
(5, 'RD0005', '15', 1, '', ''),
(6, 'RD0006', '16', 1, '', ''),
(7, 'RD0007', '17', 1, '', ''),
(8, 'RD0008', '18', 1, '', ''),
(9, 'RD0009', '19', 1, '', ''),
(10, 'RD0010', '20', 1, '', ''),
(11, 'RD0011', '21', 1, '', ''),
(12, 'RD0012', '22', 1, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `diameterwhee`
--

CREATE TABLE `diameterwhee` (
  `id` int(11) NOT NULL,
  `code` varchar(6) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `relationRim` int(11) NOT NULL,
  `relationHoleSize` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `diameterwhee`
--

INSERT INTO `diameterwhee` (`id`, `code`, `Description`, `status`, `relationRim`, `relationHoleSize`) VALUES
(1, 'WD0001', '13', 1, 0, 0),
(2, 'WD0002', '14', 1, 0, 0),
(4, 'WD0003', '15', 1, 0, 0),
(5, 'WD0004', '16', 1, 0, 0),
(6, 'WD0005', '17', 1, 0, 0),
(7, 'WD0006', '18', 1, 0, 0),
(8, 'WD0007', '19', 1, 0, 0),
(9, 'WD0008', '20', 1, 0, 0),
(10, 'WD0009', '22', 1, 0, 0),
(11, 'WD0010', '24', 1, 0, 0),
(12, 'WD0011', '26', 1, 0, 0),
(13, 'WD0012', '28', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `event_info`
--

CREATE TABLE `event_info` (
  `id` int(11) NOT NULL,
  `Event_Code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Event_Name` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `Event_Status` int(11) NOT NULL,
  `eff_date` date NOT NULL,
  `exp_date` date NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `event_info`
--

INSERT INTO `event_info` (`id`, `Event_Code`, `Event_Name`, `Event_Status`, `eff_date`, `exp_date`) VALUES
(1, 'E0001', 'สงกราน', 1, '2019-04-28', '2019-05-31'),
(2, 'E0002', 'test evetn 2', 1, '2019-05-09', '2019-05-31'),
(3, 'E0003', 'test evetn 3', 1, '2019-05-09', '2019-05-31');

-- --------------------------------------------------------

--
-- Table structure for table `event_item`
--

CREATE TABLE `event_item` (
  `id` int(11) NOT NULL,
  `Event_Code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ProductID` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `PriceSale` int(11) NOT NULL,
  `item_amt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `event_item`
--

INSERT INTO `event_item` (`id`, `Event_Code`, `ProductID`, `code`, `PriceSale`, `item_amt`) VALUES
(1, 'E0002', 'P0001', '', 47000, 4),
(2, 'E0002', 'P0003', '', 18000, 4),
(5, 'E0003', 'P0004', 'T0002', 1900, 4),
(4, 'E0003', 'P0002', 'W0002', 14000, 4);

-- --------------------------------------------------------

--
-- Table structure for table `genwhee`
--

CREATE TABLE `genwhee` (
  `id` int(11) NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `genwhee`
--

INSERT INTO `genwhee` (`id`, `code`, `Description`, `status`) VALUES
(0, 'WG0001', 'รุ่น1', 1),
(0, 'WG0002', 'รุ่น2', 1);

-- --------------------------------------------------------

--
-- Table structure for table `holesizewhee`
--

CREATE TABLE `holesizewhee` (
  `id` int(11) NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `holesizewhee`
--

INSERT INTO `holesizewhee` (`id`, `code`, `Description`, `status`) VALUES
(1, 'WS0001', '4H100', 1),
(2, 'WS0002', '4H114.3', 1),
(3, 'WS0003', '5H100', 1),
(4, 'WS0004', '5H114.3 ', 1),
(5, 'WS0005', '5H120', 1),
(6, 'WS0006', '6H114.3 ', 1),
(7, 'WS0007', '6H139.7 ', 1);

-- --------------------------------------------------------

--
-- Table structure for table `language`
--

CREATE TABLE `language` (
  `language_code` varchar(16) NOT NULL,
  `language_name` varchar(32) NOT NULL,
  `language_status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `language`
--

INSERT INTO `language` (`language_code`, `language_name`, `language_status`) VALUES
('en', 'English', 0),
('th', 'ภาษาไทย', 1);

-- --------------------------------------------------------

--
-- Table structure for table `list`
--

CREATE TABLE `list` (
  `cases` varchar(64) NOT NULL,
  `menu` varchar(64) NOT NULL,
  `pages` varchar(128) NOT NULL,
  `case_status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `list`
--

INSERT INTO `list` (`cases`, `menu`, `pages`, `case_status`) VALUES
('setting', 'setting', 'settings/setting.php', 1),
('member', 'member', 'members/member.php', 1),
('cashier', 'cashier', 'cashier/cashier.php', 1),
('report', 'report', 'report/mainReport.php', 1),
('report_export', 'report', 'report/report_export.php', 1),
('report_movement', 'report', 'report/report_movement.php', 1),
('report_income', 'report', 'report/report_income.php', 1),
('report_income_detail', 'report', 'report/report_income_detail.php', 1),
('report_booking', 'report', 'report/report_booking.php', 1),
('report_logs', 'report', 'report/report_logs.php', 1),
('report_delivery', 'report', 'report/report_delivery.php', 1),
('report_delivery_detail', 'report', 'report/report_delivery_detail.php', 1),
('setting_users', 'setting', 'settings/setting_users.php', 1),
('setting_backup', 'setting', 'settings/setting_backup.php', 1),
('setting_unit', 'setting', 'settings/setting_unit.php', 0),
('setting_categories', 'setting', 'settings/setting_categories.php', 1),
('setting_member_group', 'setting', 'settings/setting_member_group.php', 1),
('setting_promotions', 'setting', 'settings/setting_promotions.php', 1),
('report_debt', 'report', 'report/report_debt.php', 1),
('report_creditor', 'report', 'report/report_creditor.php', 1),
('setting_info', 'setting', 'settings/setting_info.php', 1),
('setting_system', 'setting', 'settings/setting_system.php', 1),
('setting_user_access', 'setting', 'settings/setting_user_access.php', 1),
('administrator_access_list', 'setting', 'administrator/administrator_access_list.php', 1),
('administrator_cases', 'setting', 'administrator/administrator_cases.php', 1),
('administrator_menus', 'setting', 'administrator/administrator_menus.php', 1),
('administrator_modules', 'setting', 'administrator/administrator_modules.php', 1),
('administrator_helper', 'seting', 'administrator/administrator_helper.php', 1),
('cashier_member', 'cashier', 'cashier/cashier_member.php', 1),
('cashier_booking', 'cashier', 'cashier/cashier_booking.php', 1),
('product_detail', 'product', 'products/product_detail.php', 1),
('member_detail', 'member', 'members/member_detail.php', 1),
('new_member', 'member', 'members/new_member.php', 1),
('member_history', 'member', 'members/member_history.php', 1),
('setting_promotion_member', 'setting', 'settings/setting_promotion_member.php', 1),
('report_cancel', 'report', 'report/report_cancel.php', 1),
('card_all_status', 'card', 'card/card_all_status.php', 1),
('search', '', 'main/search.php', 1),
('card', 'card', 'card/card.php', 1),
('setting_card_status', 'setting', 'settings/setting_card_status.php', 1),
('card_create_detail', 'card_create', 'card/card_create_detail.php', 1),
('search_code', '', 'main/search.php', 1),
('card_create', 'card_create', 'card/main.php', 1),
('setting_products', 'setting', 'settings/setting_products_N.php', 1),
('setting_type', 'setting', 'settings/setting_type.php', 1),
('setting_brand', 'setting', 'settings/setting_brand.php', 1),
('setting_model', 'setting', 'settings/setting_model.php', 1),
('setting_shelf', 'setting', 'settings/setting_shelf.php', 1),
('productInshelf', 'card', 'card/productInshelf_N.php', 1),
('claim_info', 'card', 'card/claim_info.php', 1),
('saleProduct', 'setting', 'settings/sale_info.php', 1),
('receivestock', 'card', 'settings/receivestock.php', 1),
('receiveaddstock', 'card', 'settings/receiveaddstock.php', 1),
('list_receivestock', 'card', 'settings/list_receivestock.php', 1),
('view_receiveaddstock', 'card', 'settings/view_receiveaddstock.php', 1),
('listsaleProduct', 'settings', 'settings/listsaleProduct.php', 1),
('reportProduct', '', 'report/reportProduct.php', 1),
('reportPR', '', 'report/reportPR.php', 1),
('reportSale', '', 'report/reportSale.php', 1),
('reportClaim', '', 'report/reportClaim.php', 1),
('MainSettingWheel', 'settings', 'settings/MainSettingWheel.php', 1),
('MainSettingRubble', 'settings', 'settings/MainSettingRubble.php', 1),
('settingDiameterWheelList', 'settings', 'settings/settingDiameterWheelList.php', 1),
('settingBrandWheelList', 'settings', 'settings/settingBrandWheelList.php', 1),
('settingHoleSizeWheelList', 'settings', 'settings/settingHoleSizeWheelList.php', 1),
('settingRimWheelList', 'setting', 'settings/settingRimWheelList.php', 1),
('settingTypeFormatWheelList', 'settings', 'settings/settingTypeFormatWheelList.php', 1),
('settingDiameterRubbleList', 'settings', 'settings/settingDiameterRubbleList.php', 1),
('settingSeriesRubbleList', 'settings', 'settings/settingSeriesRubbleList.php', 1),
('settingWidthRubbleList', 'settings', 'settings/settingWidthRubbleList.php', 1),
('settingbrandRubbleList', 'settings', 'settings/settingbrandRubbleList.php', 1),
('addEvent', 'settings', 'settings/addEvent.php', 1),
('addEvent_Info', 'settings', 'settings/addEvent_Info.php', 1),
('reportPopSale', 'settings', 'report/reportPopSale.php', 1),
('settingOffsetList', 'settings', 'settings/settingOffsetList.php', 1),
('settingGenWheelList', 'settings', 'settings/settingGenWheelList.php', 1),
('addShelf', 'settings', 'settings/addShelf.php', 1);

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `log_key` varchar(16) NOT NULL,
  `log_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `log_ipaddress` varchar(32) NOT NULL,
  `log_text` varchar(256) NOT NULL,
  `log_user` varchar(32) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`log_key`, `log_date`, `log_ipaddress`, `log_text`, `log_user`) VALUES
('a436695f8397759e', '2018-11-19 09:48:55', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('a725b5fecd99e202', '2018-11-19 09:52:57', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('114ee9d3d9d31437', '2018-11-19 09:54:16', '::1', 'jitrawan.ch@gmail.com ออกจากระบบ.', '1'),
('159b263da3f1eb5b', '2018-11-19 09:54:19', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('d9b349b6b5e20712', '2018-11-19 10:09:49', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('e03891189208e5d9', '2018-11-19 12:16:26', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('eb70d193f1d85fc1', '2018-11-19 12:56:12', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('afc7a9f638e7faa7', '2018-11-19 16:04:55', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('cbf407d1aaae0bb7', '2018-11-19 16:37:06', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('204f07308630111d', '2018-11-19 16:38:57', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('cab748d63879ad77', '2018-11-20 12:53:09', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('83d858ec089fa212', '2018-11-20 15:58:49', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('f172f80add5dc5dc', '2018-11-20 16:20:16', '::1', 'jitrawan.ch@gmail.com ออกจากระบบ.', '1'),
('fc45f86e2d1df46f', '2018-11-20 16:20:18', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('d925ce8da0969583', '2018-11-20 16:23:33', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('1abf8493a0d248dc', '2018-11-20 16:23:40', '::1', 'jitrawan.ch@gmail.com ออกจากระบบ.', '1'),
('24b2d17826cbe1d8', '2018-11-20 16:23:44', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('3c2c0ff76f873c1d', '2018-11-20 16:28:05', '::1', 'pat ออกจากระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('eb0d6a15bcc97c19', '2018-11-20 16:28:06', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('3cb66c99df17fa2a', '2018-11-21 16:15:42', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('2a10a29c40efff37', '2018-11-22 09:01:37', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('3b8d61b323acae5d', '2018-11-22 09:22:56', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('6e4c8cc4d7430109', '2018-11-23 07:33:30', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('2616559d7d0dadde', '2018-11-24 08:21:16', '::1', 'jitrawan.ch@gmail.com ออกจากระบบ.', '1'),
('32e675b29ef95743', '2018-11-24 08:21:28', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('ce110a8cdcce7f6b', '2018-11-25 05:51:43', '::1', 'pat ออกจากระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('9cbc4249d847f936', '2018-11-25 05:51:57', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('68a633db8a0d39df', '2018-11-25 05:52:08', '::1', 'jitrawan.ch@gmail.com ออกจากระบบ.', '1'),
('1d8137f1b2b12451', '2018-11-25 05:52:29', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('cf541ef915cc9726', '2018-11-25 05:53:19', '::1', 'pat ออกจากระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('3f3e8024120d9ed2', '2018-11-25 05:53:25', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('ff001fb2bc40736b', '2018-11-25 06:12:05', '::1', 'jitrawan.ch@gmail.com ออกจากระบบ.', '1'),
('7d2afeb0565ec69a', '2018-11-25 06:12:09', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('e6adafb20ce0da37', '2018-11-26 14:16:23', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('9ebaa6f6df160e51', '2018-11-27 10:19:35', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('342e98fca292e7dd', '2018-11-28 03:55:47', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('8b2360b61da2b828', '2018-11-28 10:23:00', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('b88631a0f1360037', '2018-11-29 14:04:51', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('82eb53007887d0f1', '2018-11-30 08:51:51', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('ac6820437757fe98', '2018-11-30 12:12:14', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('ae1c6a7f19fc9c6b', '2018-11-30 17:46:25', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('c306238e8eac3d67', '2018-12-01 03:34:12', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('ee568ccf2a89d1e4', '2018-12-01 16:10:39', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('50344d27e04db018', '2018-12-01 17:16:38', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('0734a1af6385324c', '2018-12-01 18:11:41', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('a84666238fd5719d', '2018-12-03 08:29:51', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('bcb6128456d241c6', '2018-12-04 02:00:08', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('234d13c0d1088f7f', '2018-12-06 03:06:05', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('7cf700a5faa7bce6', '2018-12-06 04:23:59', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('8931b5753da6731d', '2018-12-09 07:55:46', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('2128bcacc069f7fd', '2018-12-11 03:44:22', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('b1bd08e55508b2f7', '2018-12-12 09:35:05', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('484e6b5c617b1abf', '2018-12-16 05:37:14', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('7ef1755f99ad96bd', '2018-12-19 03:17:20', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('a436695f8397759e', '2018-11-19 09:48:55', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('a725b5fecd99e202', '2018-11-19 09:52:57', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('114ee9d3d9d31437', '2018-11-19 09:54:16', '::1', 'jitrawan.ch@gmail.com ออกจากระบบ.', '1'),
('159b263da3f1eb5b', '2018-11-19 09:54:19', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('d9b349b6b5e20712', '2018-11-19 10:09:49', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('e03891189208e5d9', '2018-11-19 12:16:26', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('eb70d193f1d85fc1', '2018-11-19 12:56:12', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('afc7a9f638e7faa7', '2018-11-19 16:04:55', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('cbf407d1aaae0bb7', '2018-11-19 16:37:06', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('204f07308630111d', '2018-11-19 16:38:57', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('cab748d63879ad77', '2018-11-20 12:53:09', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('83d858ec089fa212', '2018-11-20 15:58:49', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('f172f80add5dc5dc', '2018-11-20 16:20:16', '::1', 'jitrawan.ch@gmail.com ออกจากระบบ.', '1'),
('fc45f86e2d1df46f', '2018-11-20 16:20:18', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('d925ce8da0969583', '2018-11-20 16:23:33', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('1abf8493a0d248dc', '2018-11-20 16:23:40', '::1', 'jitrawan.ch@gmail.com ออกจากระบบ.', '1'),
('24b2d17826cbe1d8', '2018-11-20 16:23:44', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('3c2c0ff76f873c1d', '2018-11-20 16:28:05', '::1', 'pat ออกจากระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('eb0d6a15bcc97c19', '2018-11-20 16:28:06', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('3cb66c99df17fa2a', '2018-11-21 16:15:42', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('2a10a29c40efff37', '2018-11-22 09:01:37', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('3b8d61b323acae5d', '2018-11-22 09:22:56', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('6e4c8cc4d7430109', '2018-11-23 07:33:30', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('2616559d7d0dadde', '2018-11-24 08:21:16', '::1', 'jitrawan.ch@gmail.com ออกจากระบบ.', '1'),
('32e675b29ef95743', '2018-11-24 08:21:28', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('ce110a8cdcce7f6b', '2018-11-25 05:51:43', '::1', 'pat ออกจากระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('9cbc4249d847f936', '2018-11-25 05:51:57', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('68a633db8a0d39df', '2018-11-25 05:52:08', '::1', 'jitrawan.ch@gmail.com ออกจากระบบ.', '1'),
('1d8137f1b2b12451', '2018-11-25 05:52:29', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('cf541ef915cc9726', '2018-11-25 05:53:19', '::1', 'pat ออกจากระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('3f3e8024120d9ed2', '2018-11-25 05:53:25', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('ff001fb2bc40736b', '2018-11-25 06:12:05', '::1', 'jitrawan.ch@gmail.com ออกจากระบบ.', '1'),
('7d2afeb0565ec69a', '2018-11-25 06:12:09', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('e6adafb20ce0da37', '2018-11-26 14:16:23', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('9ebaa6f6df160e51', '2018-11-27 10:19:35', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('342e98fca292e7dd', '2018-11-28 03:55:47', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('8b2360b61da2b828', '2018-11-28 10:23:00', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('b88631a0f1360037', '2018-11-29 14:04:51', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('82eb53007887d0f1', '2018-11-30 08:51:51', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('ac6820437757fe98', '2018-11-30 12:12:14', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('ae1c6a7f19fc9c6b', '2018-11-30 17:46:25', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('c306238e8eac3d67', '2018-12-01 03:34:12', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('ee568ccf2a89d1e4', '2018-12-01 16:10:39', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('50344d27e04db018', '2018-12-01 17:16:38', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('0734a1af6385324c', '2018-12-01 18:11:41', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('a84666238fd5719d', '2018-12-03 08:29:51', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('bcb6128456d241c6', '2018-12-04 02:00:08', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('234d13c0d1088f7f', '2018-12-06 03:06:05', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('7cf700a5faa7bce6', '2018-12-06 04:23:59', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('8931b5753da6731d', '2018-12-09 07:55:46', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('6fbed419020ea86f', '2018-12-21 15:42:09', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('6fbed419020ea86f', '2018-12-21 15:42:09', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('e7633cd6a5a8e150', '2018-12-21 22:26:13', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('e7633cd6a5a8e150', '2018-12-21 22:26:13', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('b277eae1c94eb68f', '2018-12-22 10:34:28', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('b277eae1c94eb68f', '2018-12-22 10:34:28', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('a436695f8397759e', '2018-11-19 09:48:55', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('a725b5fecd99e202', '2018-11-19 09:52:57', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('114ee9d3d9d31437', '2018-11-19 09:54:16', '::1', 'jitrawan.ch@gmail.com ออกจากระบบ.', '1'),
('159b263da3f1eb5b', '2018-11-19 09:54:19', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('d9b349b6b5e20712', '2018-11-19 10:09:49', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('e03891189208e5d9', '2018-11-19 12:16:26', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('eb70d193f1d85fc1', '2018-11-19 12:56:12', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('afc7a9f638e7faa7', '2018-11-19 16:04:55', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('cbf407d1aaae0bb7', '2018-11-19 16:37:06', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('204f07308630111d', '2018-11-19 16:38:57', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('cab748d63879ad77', '2018-11-20 12:53:09', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('83d858ec089fa212', '2018-11-20 15:58:49', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('f172f80add5dc5dc', '2018-11-20 16:20:16', '::1', 'jitrawan.ch@gmail.com ออกจากระบบ.', '1'),
('fc45f86e2d1df46f', '2018-11-20 16:20:18', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('d925ce8da0969583', '2018-11-20 16:23:33', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('1abf8493a0d248dc', '2018-11-20 16:23:40', '::1', 'jitrawan.ch@gmail.com ออกจากระบบ.', '1'),
('24b2d17826cbe1d8', '2018-11-20 16:23:44', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('3c2c0ff76f873c1d', '2018-11-20 16:28:05', '::1', 'pat ออกจากระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('eb0d6a15bcc97c19', '2018-11-20 16:28:06', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('3cb66c99df17fa2a', '2018-11-21 16:15:42', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('2a10a29c40efff37', '2018-11-22 09:01:37', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('3b8d61b323acae5d', '2018-11-22 09:22:56', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('6e4c8cc4d7430109', '2018-11-23 07:33:30', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('2616559d7d0dadde', '2018-11-24 08:21:16', '::1', 'jitrawan.ch@gmail.com ออกจากระบบ.', '1'),
('32e675b29ef95743', '2018-11-24 08:21:28', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('ce110a8cdcce7f6b', '2018-11-25 05:51:43', '::1', 'pat ออกจากระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('9cbc4249d847f936', '2018-11-25 05:51:57', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('68a633db8a0d39df', '2018-11-25 05:52:08', '::1', 'jitrawan.ch@gmail.com ออกจากระบบ.', '1'),
('1d8137f1b2b12451', '2018-11-25 05:52:29', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('cf541ef915cc9726', '2018-11-25 05:53:19', '::1', 'pat ออกจากระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('3f3e8024120d9ed2', '2018-11-25 05:53:25', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('ff001fb2bc40736b', '2018-11-25 06:12:05', '::1', 'jitrawan.ch@gmail.com ออกจากระบบ.', '1'),
('7d2afeb0565ec69a', '2018-11-25 06:12:09', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('e6adafb20ce0da37', '2018-11-26 14:16:23', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('9ebaa6f6df160e51', '2018-11-27 10:19:35', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('342e98fca292e7dd', '2018-11-28 03:55:47', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('8b2360b61da2b828', '2018-11-28 10:23:00', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('b88631a0f1360037', '2018-11-29 14:04:51', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('82eb53007887d0f1', '2018-11-30 08:51:51', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('ac6820437757fe98', '2018-11-30 12:12:14', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('ae1c6a7f19fc9c6b', '2018-11-30 17:46:25', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('c306238e8eac3d67', '2018-12-01 03:34:12', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('ee568ccf2a89d1e4', '2018-12-01 16:10:39', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('50344d27e04db018', '2018-12-01 17:16:38', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('0734a1af6385324c', '2018-12-01 18:11:41', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('a84666238fd5719d', '2018-12-03 08:29:51', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('bcb6128456d241c6', '2018-12-04 02:00:08', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('234d13c0d1088f7f', '2018-12-06 03:06:05', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('7cf700a5faa7bce6', '2018-12-06 04:23:59', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('8931b5753da6731d', '2018-12-09 07:55:46', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('91fb48fa3a45282a', '2018-12-24 03:35:01', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('91fb48fa3a45282a', '2018-12-24 03:35:01', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('91fb48fa3a45282a', '2018-12-24 03:35:01', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('152408f6071f900b', '2018-12-25 09:33:40', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('152408f6071f900b', '2018-12-25 09:33:40', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('152408f6071f900b', '2018-12-25 09:33:40', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('04cd968f4ed3c956', '2019-01-06 04:18:22', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('04cd968f4ed3c956', '2019-01-06 04:18:22', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('04cd968f4ed3c956', '2019-01-06 04:18:22', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('c9570c503c3ed063', '2019-01-15 14:07:16', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('c9570c503c3ed063', '2019-01-15 14:07:16', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('c9570c503c3ed063', '2019-01-15 14:07:16', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('bbd6e1e5f9b03621', '2019-01-22 02:13:27', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('4fd2cb5da48ee676', '2019-01-22 10:18:48', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('d40efb72b8d373d9', '2019-01-24 03:44:54', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('24e312c26e47463d', '2019-01-25 05:03:11', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('b826d7350653ae8d', '2019-01-25 10:06:59', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('f91dfbc4093c3596', '2019-01-26 06:23:06', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('a83fbf3daa983c25', '2019-01-26 07:14:38', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('8e23af9ea69917ac', '2019-01-26 11:32:49', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('de88fbfc8b483fff', '2019-01-30 08:14:00', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('da3c56214d53cde2', '2019-01-31 03:49:36', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('23cae20dde8695cd', '2019-02-03 08:04:44', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('4f6aaa53d808528f', '2019-02-16 14:07:17', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('7533821fc24dc301', '2019-02-19 03:34:17', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('dd6b1ef475d489a9', '2019-02-19 04:20:09', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('bad2e5575948cecc', '2019-02-19 04:45:57', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('22dbd101c9b76921', '2019-03-01 16:15:28', '::1', 'pat ออกจากระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('4a0181e3e8ebd58c', '2019-03-01 16:15:32', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('2c85050b487417bb', '2019-03-01 16:17:23', '::1', 'pat ออกจากระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('22e9edae46df429d', '2019-03-01 16:17:25', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('613a87c28a41c2e0', '2019-03-01 16:17:43', '::1', 'pat ออกจากระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('9441edebca9c6c0b', '2019-03-01 16:19:24', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('1543bfaaf9238e5a', '2019-03-02 01:13:40', '::1', 'pat ออกจากระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('f79fe4cb57ea3757', '2019-03-02 01:14:01', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('76703cec661ec940', '2019-03-02 01:14:37', '::1', 'pat ออกจากระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('c8764daf87231146', '2019-03-02 01:14:51', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('b45f2d2b310641f3', '2019-03-02 01:15:00', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('2ca8795ef7c4ba3a', '2019-03-02 01:15:04', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('803f2b9d87a7fa58', '2019-03-02 01:15:30', '::1', 'pat ออกจากระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('02f9c1387d0d5eff', '2019-03-02 01:15:38', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('2c204b3e6379e26e', '2019-03-02 01:20:18', '::1', 'jitrawan.ch@gmail.com ออกจากระบบ.', '1'),
('ac09c7860b2adf4d', '2019-03-02 01:20:27', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('337981b090d52f7b', '2019-03-02 01:20:40', '::1', 'jitrawan.ch@gmail.com ออกจากระบบ.', '1'),
('abf43ed82721ff10', '2019-03-02 01:20:45', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('35af994a9cc68466', '2019-03-02 01:22:30', '::1', 'pat ออกจากระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('d61124c02e5008f6', '2019-03-02 01:22:36', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('3c7c73f4a508981a', '2019-03-02 01:23:06', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('8e7a1c8d32a24fcf', '2019-03-02 01:33:03', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('286e05aea23ed3dc', '2019-03-02 01:33:14', '::1', 'jitrawan.ch@gmail.com ออกจากระบบ.', '1'),
('9d000e6a3321355c', '2019-03-02 01:33:19', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('f8b529b26ae556f4', '2019-03-02 01:33:37', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('766248b6533e043f', '2019-04-14 06:02:03', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('1c9809098ad17f7a', '2019-04-14 06:08:30', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('557dc50168539299', '2019-04-15 10:29:05', '::1', 'pat ออกจากระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('3664c396337d61a6', '2019-04-15 10:29:07', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('c2b8d7a6a13b673b', '2019-04-27 10:18:41', '::1', 'Tacha ออกจากระบบ.', 'c08bbb353c5501400e931363ba032b55'),
('ed750bf80c14704f', '2019-04-27 10:20:49', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('a191ae46f4086da5', '2019-04-27 10:24:25', '::1', 'jitrawan.ch@gmail.com ออกจากระบบ.', '1'),
('a501e0893639d416', '2019-04-27 10:26:34', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('3613b416754b10d0', '2019-04-28 08:20:08', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('d30d3b2ca4a15158', '2019-05-03 16:38:59', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('d77f4fe06cc7ea34', '2019-05-03 16:58:54', '::1', 'jitrawan.ch@gmail.com เข้าสู่ระบบ.', '1'),
('1b0c42b7e15cce07', '2019-05-03 16:59:33', '::1', 'jitrawan.ch@gmail.com ออกจากระบบ.', '1'),
('03ac3617491f9306', '2019-05-03 16:59:37', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('c4c9520199b21142', '2019-05-03 17:08:05', '::1', 'pat ออกจากระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('3e31812d6709f4aa', '2019-05-03 17:08:09', '::1', 'user1 เข้าสู่ระบบ.', '5e16c811e91f8a4bed61801e7bf1ce20'),
('1e4910502f0490ba', '2019-05-03 17:10:21', '::1', 'user1 ออกจากระบบ.', '5e16c811e91f8a4bed61801e7bf1ce20'),
('77f1b6952953959d', '2019-05-03 17:10:27', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('1eca31fac1ffd64b', '2019-05-03 17:13:46', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('a8ed7bda1c3a794c', '2019-05-04 17:12:24', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('65ebe75aa43d15ad', '2019-05-06 16:20:40', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('be16e6538dd4b9bf', '2019-05-09 07:17:33', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('054c3ee5a2872388', '2019-05-09 07:19:31', '::1', 'pat ออกจากระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('0a98acacf3a57fc4', '2019-05-09 07:19:37', '::1', 'film เข้าสู่ระบบ.', '6a7c6fe063021a761c8498b4f11aad85'),
('061c203cfc1c2de7', '2019-05-10 02:40:37', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('30edca18c5f00a89', '2019-05-13 05:18:46', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('f8f00c9db1ff6b9b', '2019-05-13 09:53:12', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('26dcd6a2cfde6cab', '2019-05-13 13:22:02', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15'),
('cb3fdfb29edd8f6b', '2019-05-13 15:23:35', '::1', 'pat เข้าสู่ระบบ.', 'd97530f6437e7ffa3a74afe46a953a15');

-- --------------------------------------------------------

--
-- Table structure for table `menus`
--

CREATE TABLE `menus` (
  `menu_key` char(32) NOT NULL,
  `menu_upkey` char(32) NOT NULL,
  `menu_icon` varchar(256) NOT NULL,
  `menu_name` varchar(128) NOT NULL,
  `menu_case` varchar(128) NOT NULL,
  `menu_link` varchar(256) NOT NULL,
  `menu_status` tinyint(1) NOT NULL,
  `menu_sorting` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `menus`
--

INSERT INTO `menus` (`menu_key`, `menu_upkey`, `menu_icon`, `menu_name`, `menu_case`, `menu_link`, `menu_status`, `menu_sorting`) VALUES
('0a3c8aabc6cdbce67a157ba1701b3fa9', '0a3c8aabc6cdbce67a157ba1701b3fa9', '<i class=\"fa fa-pie-chart fa-fw\"></i>', 'LA_MN_REPORT', 'report', '?p=report', 1, 8),
('2309e0cdb2c541bf7cb8ef0dee7b7eba', '2309e0cdb2c541bf7cb8ef0dee7b7eba', '<i class=\"fa fa-gear  fa-fw\"></i>', 'LA_MN_SETTING', 'setting', '?p=setting', 1, 9),
('26f7e62109e2566eaec8b01fe8e3598d', '26f7e62109e2566eaec8b01fe8e3598d', '<i class=\"fa fa-edit fa-fw\"></i>', 'ส่งซ่อมสินค้า/เคลม', 'card_create', '?p=card_create', 1, 4),
('295744c466c17b46170f88b5c1b9104d', '295744c466c17b46170f88b5c1b9104d', '<i class=\"fa fa-list fa-fw\"></i>', 'รายการส่งซ่อม/เคลม<span class=', 'card', '?p=card', 1, 4),
('439c4113b058975e22f776669bb36bf0', 'ff7d5a554f4300b09f2de2e06d523be9', '<i class=\"fa flaticon-stack4 fa-fw\"></i>', 'LA_MN_PRODUCTS_DATA', 'product', '?p=product', 1, 31),
('8a5a77cae7237efcb89683f2ffc4d07b', '8a5a77cae7237efcb89683f2ffc4d07b', '<i class=\"fa fa-search fa-fw\"></i>', 'ค้นหาสินค้า', 'productInshelf', '?p=productInshelf', 1, 2),
('a16043256ea5ca0ea86995e2b69ec238', 'a16043256ea5ca0ea86995e2b69ec238', '<i class=\"fa fa-home fa-fw\"></i>', 'LA_MN_HOME', '', 'index.php', 1, 1),
('ac4415d32ef6b59c0a2949058c26d5a9', 'ac4415d32ef6b59c0a2949058c26d5a9', '<i class=\"fa fa-plus-square fa-fw\"></i>', 'รับสินค้า', 'list_receivestock', '?p=list_receivestock', 1, 4),
('c6c8729b45d1fec563f8453c16ff03b8', 'c6c8729b45d1fec563f8453c16ff03b8', '<i class=\"fa fa-lock fa-fw\"></i>', 'LA_MN_LOGOUT', 'logout', '../core/logout.core.php', 1, 10),
('f1344bc0fb9c5594fa0e3d3f37a56957', 'f1344bc0fb9c5594fa0e3d3f37a56957', '<i class=\"fa fa-users fa-fw\"></i>', 'LA_MN_MEMBERS', 'member', '?p=member', 0, 4),
('f30f2140d5a1a883cfdb26fc70384beb', 'f30f2140d5a1a883cfdb26fc70384beb', '<i class=\"fa fa-shopping-cart fa-fw\"></i>', 'ขายสินค้า', 'saleProduct', '?p=saleProduct', 1, 5),
('fa5a137931f4262492e5d17a8ce2ebdf', 'fa5a137931f4262492e5d17a8ce2ebdf', ' <i class=\"fa fa-desktop fa-fw\"></i>', 'เคลมสินค้า', 'claim_info', '?p=claim_info', 1, 3);

-- --------------------------------------------------------

--
-- Table structure for table `model`
--

CREATE TABLE `model` (
  `ModelID` varchar(6) NOT NULL,
  `BrandID` varchar(5) NOT NULL,
  `ModelName` varchar(30) NOT NULL,
  `ModelStatus` char(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `model`
--

INSERT INTO `model` (`ModelID`, `BrandID`, `ModelName`, `ModelStatus`) VALUES
('M0001', 'B0001', 'Michelin City Girb111', '1'),
('M0002', 'B0002', 'dunlop XX2', '1'),
('M0003', 'B0009', 'test', '1'),
('M0004', 'B0002', 'รุ่นtest', '1');

-- --------------------------------------------------------

--
-- Table structure for table `offset`
--

CREATE TABLE `offset` (
  `id` int(11) NOT NULL,
  `Description` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `offset`
--

INSERT INTO `offset` (`id`, `Description`) VALUES
(2, '-'),
(3, '-10'),
(4, '-25');

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE `product` (
  `ProductID` varchar(5) NOT NULL,
  `ProductName` varchar(50) NOT NULL,
  `shelf_id` int(11) NOT NULL,
  `BrandID` varchar(5) NOT NULL,
  `ModelID` varchar(6) NOT NULL,
  `dealer_code` varchar(5) NOT NULL,
  `ProductDetail` varchar(4000) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `PriceSale` double NOT NULL,
  `PriceBuy` double NOT NULL,
  `IsNew` char(1) NOT NULL,
  `IsRecommend` char(1) NOT NULL,
  `TypeID` varchar(5) NOT NULL,
  `ProductStatus` char(1) NOT NULL,
  `Warranty` varchar(200) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product`
--

INSERT INTO `product` (`ProductID`, `ProductName`, `shelf_id`, `BrandID`, `ModelID`, `dealer_code`, `ProductDetail`, `Quantity`, `PriceSale`, `PriceBuy`, `IsNew`, `IsRecommend`, `TypeID`, `ProductStatus`, `Warranty`) VALUES
('P0001', 'ยาง Michelin City Girb', 2, 'B0001', 'M0001', 'D0001', 'ขนาว XXX', 85, 3000, 2500, '1', '1', 'T0001', '0', '1'),
('P0002', 'ยาง Bridgestone XXXX', 1, 'B0005', 'M0005', 'D0001', 'ยางขนาดดด XXX', 5, 2200, 2000, '1', '0', 'T0001', '1', '-'),
('P0003', 'แม็ก1', 2, 'B0004', '<br />', 'D0003', 'test insert product', 20, 7000, 5000, '', '', 'T0002', '1', '1'),
('P0004', 'ยาง18\"', 2, 'B0001', 'M0001', 'D0002', 'test', 50, 6500, 6000, '', '', 'T0001', '1', '1'),
('P0005', 'test', 3, 'B0001', 'M0001', 'D0001', 'test', 5, 4000, 600, '', '', 'T0001', '1', '1'),
('P0006', 'test2', 4, 'B0001', 'M0001', '', 'test2', 5, 4000, 6000, '', '', 'T0001', '1', '1'),
('P0007', 'แม็ก1', 2, 'B0003', '', '', 'test', 60, 9000, 5000, '', '', 'T0001', '1', '1'),
('P0008', 'แม็ก1', 0, 'B0003', '', '', 'test', 90, 1000, 500, '', '', 'T0001', '1', '1'),
('P0009', 'test', 2, 'B0004', '', '', 'test', 30, 750, 700, '', '', 'T0002', '1', '1'),
('P0010', 'แม็ก1', 3, 'B0008', '', '', 'test', 50, 6000, 4600, '', '', 'T0002', '1', '1'),
('P0011', 'test', 3, 'B0006', '', '', 'test', 50, 9000, 4000, '', '', 'T0004', '1', '1');

-- --------------------------------------------------------

--
-- Table structure for table `productdetailrubber`
--

CREATE TABLE `productdetailrubber` (
  `id` int(11) NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ProductID` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `width` int(11) NOT NULL,
  `series` int(11) NOT NULL,
  `diameter` int(11) NOT NULL,
  `brand` int(11) NOT NULL,
  `groudRubber` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `productionWeek` int(11) NOT NULL,
  `productionYear` int(11) NOT NULL,
  `genRubber` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `speedIndex` int(11) NOT NULL,
  `weightIndex` int(11) NOT NULL,
  `persentrubber` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `productdetailrubber`
--

INSERT INTO `productdetailrubber` (`id`, `code`, `ProductID`, `width`, `series`, `diameter`, `brand`, `groudRubber`, `productionWeek`, `productionYear`, `genRubber`, `speedIndex`, `weightIndex`, `persentrubber`) VALUES
(3, 'T0002', 'P0004', 165, 60, 10, 1, '2', 20, 2562, '112', 30, 400, 0);

-- --------------------------------------------------------

--
-- Table structure for table `productdetailwheel`
--

CREATE TABLE `productdetailwheel` (
  `id` int(11) NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ProductID` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `diameter` int(11) NOT NULL,
  `rim` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `holeSize` varchar(11) COLLATE utf8_unicode_ci NOT NULL,
  `typeFormat` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `brand` int(11) NOT NULL,
  `color` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `offset` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `gen` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `productdetailwheel`
--

INSERT INTO `productdetailwheel` (`id`, `code`, `ProductID`, `diameter`, `rim`, `holeSize`, `typeFormat`, `brand`, `color`, `offset`, `gen`) VALUES
(1, 'W0001', 'P0001', 13, '5.5', '', 'ล้อแม็กกะทะ', 1, 'black', '-', 'รุ่น1'),
(2, 'W0002', 'P0002', 13, '5.5', '4', 'ล้อแม็กนีเซียมอัลลอย', 2, 'black', '-10', ''),
(3, 'W0003', 'P0003', 13, '5.5', '4H100', 'ล้อแม็กกะทะ', 2, 'black', '-11', '');

-- --------------------------------------------------------

--
-- Table structure for table `product_n`
--

CREATE TABLE `product_n` (
  `ProductID` varchar(5) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `shelf_id` int(11) NOT NULL,
  `dealer_code` varchar(5) NOT NULL,
  `Quantity` int(11) NOT NULL,
  `PriceSale` double NOT NULL,
  `PriceBuy` double NOT NULL,
  `PriceBuyOld` double NOT NULL,
  `ProductStatus` char(1) NOT NULL,
  `Warranty` varchar(200) NOT NULL,
  `hand` int(11) NOT NULL,
  `TypeID` int(11) NOT NULL,
  `discount` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `product_n`
--

INSERT INTO `product_n` (`ProductID`, `shelf_id`, `dealer_code`, `Quantity`, `PriceSale`, `PriceBuy`, `PriceBuyOld`, `ProductStatus`, `Warranty`, `hand`, `TypeID`, `discount`) VALUES
('P0001', 11, 'D0002', 19, 5000, 4500, 4500, '1', '', 1, 1, 10),
('P0002', 11, 'D0002', 26, 15000, 10000, 0, '1', '', 1, 1, 0),
('P0003', 14, 'D0002', 20, 20000, 12500, 0, '1', '', 1, 1, 0),
('P0004', 11, 'D0002', 36, 2000, 2500, 0, '1', '', 1, 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `relationdiameter`
--

CREATE TABLE `relationdiameter` (
  `id` int(11) NOT NULL,
  `DiameterId` int(11) NOT NULL,
  `DiameterRubble` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `relationdiameter`
--

INSERT INTO `relationdiameter` (`id`, `DiameterId`, `DiameterRubble`) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 2, 2),
(4, 2, 4),
(5, 2, 5),
(6, 3, 3),
(7, 3, 4),
(8, 3, 5),
(9, 3, 6),
(10, 4, 3),
(11, 4, 4),
(12, 4, 5),
(13, 4, 6),
(14, 5, 4),
(15, 5, 5),
(16, 5, 6),
(17, 6, 4),
(18, 6, 5),
(19, 6, 6),
(20, 6, 7),
(21, 6, 8),
(22, 7, 4),
(23, 7, 5),
(24, 7, 6),
(25, 7, 7),
(26, 7, 8),
(27, 7, 9),
(28, 7, 10),
(29, 8, 4),
(30, 8, 5),
(31, 8, 6),
(32, 8, 7),
(33, 8, 8),
(34, 8, 9),
(35, 9, 5),
(36, 9, 6),
(37, 9, 7),
(38, 9, 8),
(39, 9, 9),
(40, 9, 10),
(41, 10, 5),
(42, 10, 6),
(43, 10, 7),
(44, 10, 8),
(45, 10, 9),
(46, 10, 10),
(47, 10, 11),
(48, 10, 12);

-- --------------------------------------------------------

--
-- Table structure for table `relationholesize`
--

CREATE TABLE `relationholesize` (
  `id` int(11) NOT NULL,
  `HoleSizeId` int(11) NOT NULL,
  `HoleSizeWhee` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `relationholesize`
--

INSERT INTO `relationholesize` (`id`, `HoleSizeId`, `HoleSizeWhee`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 4, 1),
(4, 4, 2),
(5, 4, 7),
(6, 5, 1),
(7, 5, 2),
(8, 5, 5),
(9, 5, 7),
(10, 6, 1),
(11, 6, 3),
(12, 6, 4),
(14, 6, 7),
(15, 7, 3),
(16, 7, 4),
(17, 7, 5),
(18, 7, 7),
(19, 8, 4),
(20, 9, 5),
(21, 9, 4),
(22, 9, 7),
(23, 10, 7),
(24, 11, 7),
(25, 12, 7);

-- --------------------------------------------------------

--
-- Table structure for table `relationrim`
--

CREATE TABLE `relationrim` (
  `id` int(11) NOT NULL,
  `RimId` int(11) NOT NULL,
  `RimWheel` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `relationrim`
--

INSERT INTO `relationrim` (`id`, `RimId`, `RimWheel`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 2, 2),
(4, 4, 3),
(5, 4, 4),
(6, 4, 5),
(7, 4, 6),
(8, 4, 7),
(9, 6, 4),
(10, 5, 4),
(11, 5, 5),
(12, 5, 6),
(13, 5, 7),
(14, 6, 5),
(15, 6, 6),
(16, 6, 7),
(17, 6, 8),
(18, 7, 5),
(19, 7, 6),
(20, 7, 7),
(21, 7, 8),
(22, 7, 9),
(23, 8, 6),
(24, 8, 7),
(25, 8, 8),
(26, 8, 9),
(27, 9, 7),
(28, 9, 8),
(29, 9, 9),
(30, 10, 9),
(31, 10, 10),
(32, 11, 10),
(33, 12, 10);

-- --------------------------------------------------------

--
-- Table structure for table `relationseries`
--

CREATE TABLE `relationseries` (
  `id` int(11) NOT NULL,
  `SeriesId` int(11) NOT NULL,
  `SeriesRubble` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `relationseries`
--

INSERT INTO `relationseries` (`id`, `SeriesId`, `SeriesRubble`) VALUES
(1, 1, 10),
(2, 1, 12),
(3, 2, 7),
(4, 2, 8),
(5, 2, 9),
(6, 2, 10),
(7, 2, 11),
(8, 2, 12),
(9, 3, 6),
(10, 3, 7),
(11, 3, 8),
(12, 3, 9),
(13, 3, 10),
(14, 4, 7),
(15, 4, 8),
(16, 4, 9),
(17, 4, 10),
(18, 5, 5),
(19, 5, 6),
(20, 5, 7),
(21, 5, 8),
(22, 5, 9),
(23, 5, 10),
(24, 5, 11),
(25, 6, 4),
(26, 6, 5),
(27, 6, 6),
(28, 6, 7),
(29, 6, 8),
(30, 6, 9),
(31, 6, 10),
(32, 6, 11),
(33, 7, 3),
(34, 7, 4),
(35, 7, 5),
(36, 7, 6),
(37, 7, 7),
(38, 7, 8),
(39, 7, 9),
(40, 7, 10),
(41, 7, 11),
(42, 8, 3),
(43, 8, 4),
(44, 8, 5),
(45, 8, 6),
(46, 8, 7),
(47, 8, 8),
(48, 8, 9),
(49, 8, 10),
(50, 8, 11),
(51, 9, 2),
(52, 9, 3),
(53, 9, 4),
(54, 9, 5),
(55, 9, 6),
(56, 9, 7),
(57, 9, 8),
(58, 9, 9),
(59, 9, 10),
(60, 9, 11),
(61, 9, 12),
(62, 10, 2),
(63, 10, 3),
(64, 10, 4),
(65, 10, 5),
(66, 10, 6),
(67, 10, 7),
(68, 10, 8),
(69, 10, 9),
(70, 10, 10),
(71, 10, 11);

-- --------------------------------------------------------

--
-- Table structure for table `relationwidth`
--

CREATE TABLE `relationwidth` (
  `id` int(11) NOT NULL,
  `WidthId` int(11) NOT NULL,
  `WidthRubble` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reprint_reserve`
--

CREATE TABLE `reprint_reserve` (
  `reprintReserveKey` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `reserve_key` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `remark` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `createDate` datetime NOT NULL,
  `createBy` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reprint_reserve`
--

INSERT INTO `reprint_reserve` (`reprintReserveKey`, `reserve_key`, `remark`, `createDate`, `createBy`) VALUES
('', '0', '', '2019-01-22 16:52:54', ''),
('2a91a0a4c895ab0bfbf505c53d6c401a', '5081ce85fd81dae438ba85efe885e50b', '', '2019-02-19 22:15:55', 'd97530f6437e7ffa3a74afe46a953a15'),
('382967531fcddb2256631ebb0f7cc9ad', '23a6d54e9e7cffa8256f85a630bcae68', '', '2019-01-22 17:02:22', 'd97530f6437e7ffa3a74afe46a953a15'),
('635977cc0487db193087a6397dd027bc', '16', '', '2019-01-22 17:01:14', 'd97530f6437e7ffa3a74afe46a953a15'),
('9a4c2d8152b4d448368a02264b36e8b1', '23a6d54e9e7cffa8256f85a630bcae68', '', '2019-01-22 17:02:04', 'd97530f6437e7ffa3a74afe46a953a15');

-- --------------------------------------------------------

--
-- Table structure for table `reserve`
--

CREATE TABLE `reserve` (
  `reserveId` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `reserveDate` date NOT NULL,
  `create_by` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `discount` int(11) NOT NULL,
  `tax_total` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reserve`
--

INSERT INTO `reserve` (`reserveId`, `reserveDate`, `create_by`, `discount`, `tax_total`) VALUES
('25611', '2018-11-24', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `reserve_detail`
--

CREATE TABLE `reserve_detail` (
  `id` int(11) NOT NULL,
  `reserveId` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `ProductID` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `price` int(11) NOT NULL,
  `detail_discount` int(11) NOT NULL,
  `detail_amt` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `reserve_info`
--

CREATE TABLE `reserve_info` (
  `reserve_key` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `reserve_code` varchar(16) COLLATE utf8_unicode_ci NOT NULL,
  `reserve_no` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `empolyee` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `reserve_tax` int(11) NOT NULL,
  `reserve_total` int(11) NOT NULL,
  `reserve_status` varchar(1) COLLATE utf8_unicode_ci NOT NULL,
  `create_date` datetime NOT NULL,
  `remark` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reserve_info`
--

INSERT INTO `reserve_info` (`reserve_key`, `reserve_code`, `reserve_no`, `empolyee`, `reserve_tax`, `reserve_total`, `reserve_status`, `create_date`, `remark`) VALUES
('58abd91b6a4d8d41bf74eedbf8777e65', 'C46EJIGW', '', '6a7c6fe063021a761c8498b4f11aad85', 0, 0, 'P', '2019-05-09 15:05:22', ''),
('412e6803ae4a8b4d56a9654ade3a4d8a', 'CA4RWI85', '', 'd97530f6437e7ffa3a74afe46a953a15', 0, 0, 'P', '2019-05-05 00:14:43', ''),
('9633399692e492b5a09b4bd0863b9d1b', 'C7VKLPBA', '2019050500C7VKLPBA', 'd97530f6437e7ffa3a74afe46a953a15', 700, 10000, 'S', '2019-05-05 00:22:45', ''),
('cbaeb31397b1cbd9e4b498be6459f655', 'CFCHEVVT', '', '1', 0, 0, 'P', '2019-04-28 15:23:52', ''),
('6b373a7bc70d20d99b07a1448aebab10', 'CYR8NVG', '', '6a7c6fe063021a761c8498b4f11aad85', 0, 0, 'P', '2019-05-09 15:19:05', ''),
('d5e9f312dc1234c5e3a3e09ef52df690', 'C14I474F', '', '6a7c6fe063021a761c8498b4f11aad85', 0, 0, 'P', '2019-05-09 15:37:09', ''),
('309e95b5468a312fe53e75bc3498f6fc', 'CIF1CX3J', '', '6a7c6fe063021a761c8498b4f11aad85', 0, 0, 'P', '2019-05-09 16:00:10', ''),
('cdc9ebd7e304d5b6a49bb682e62f50bd', 'CQ3PX7ZS', '2019050900CQ3PX7ZS', '6a7c6fe063021a761c8498b4f11aad85', 4452, 63600, 'S', '2019-05-09 16:03:17', ''),
('319151ab45a1e2576420f81436445c1c', 'CN8V2BI0', '', 'd97530f6437e7ffa3a74afe46a953a15', 0, 0, 'P', '2019-05-13 12:36:47', ''),
('d221db15e51d3ef79dd7334713a795d1', 'CB9TEUF0', '', 'd97530f6437e7ffa3a74afe46a953a15', 0, 0, 'P', '2019-05-13 12:44:39', ''),
('5f056816841a0beeff3aceda2ce26067', 'C9IGZSPB', '', 'd97530f6437e7ffa3a74afe46a953a15', 0, 0, 'P', '2019-05-13 12:46:19', ''),
('cb7fe47fe844dd102b211fbe3df0e652', 'CZXSJ7BT', '', 'd97530f6437e7ffa3a74afe46a953a15', 0, 0, 'P', '2019-05-13 12:48:58', ''),
('9fcd89f77b62ce38903432322258e703', 'CNKCWEB', '2019051300CNKCWEB', 'd97530f6437e7ffa3a74afe46a953a15', 315, 4500, 'S', '2019-05-13 12:49:31', ''),
('634f5fff366c5206619f3986592002e8', 'CSN22LY9', '2019051300CSN22LY9', 'd97530f6437e7ffa3a74afe46a953a15', 315, 4500, 'S', '2019-05-13 12:49:35', ''),
('5c47297eb649ec442afd382c0d28bbf3', 'CL3BT5M6', '', 'd97530f6437e7ffa3a74afe46a953a15', 0, 0, 'N', '2019-05-14 20:22:23', '');

-- --------------------------------------------------------

--
-- Table structure for table `reserve_item`
--

CREATE TABLE `reserve_item` (
  `item_key` char(32) COLLATE utf8_unicode_ci NOT NULL,
  `reserve_key` varchar(32) COLLATE utf8_unicode_ci NOT NULL,
  `ProductID` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `item_discount` int(11) NOT NULL,
  `item_price` int(11) NOT NULL,
  `item_total` int(11) NOT NULL,
  `item_amt` int(11) NOT NULL,
  `create_Date` date NOT NULL,
  `Event_Code` varchar(10) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `reserve_item`
--

INSERT INTO `reserve_item` (`item_key`, `reserve_key`, `ProductID`, `item_discount`, `item_price`, `item_total`, `item_amt`, `create_Date`, `Event_Code`) VALUES
('012c7dcc41269b22bd7577331a70d0ff', '4cdebb270b60e0eb4718eaebbb591171', 'P0008', 0, 4500, 4500, 1, '2019-04-15', ''),
('02eab9bb156c7eb7b869c1efef99d7ad', 'cf307ddbc0b9714023f3974b3b219f7a', 'P0002', 1200, 12000, 10800, 1, '2019-03-20', ''),
('03ebc94915125b784bde86fd6ef5d6b0', '4cdebb270b60e0eb4718eaebbb591171', 'P0001', 0, 3000, 12000, 4, '2019-04-15', ''),
('0580a6ba812a28b691eae3fb99356aa6', '80e9cb0ef93916918db9c8d726b10482', 'P0003', 0, 9500, 38000, 4, '2019-04-15', 'E0001'),
('09551461884ff08b299968a2897e2787', '69bf2cb93075291325b9bfb32d8b13d0', 'P0001', 0, 35000, 35000, 1, '2019-03-20', ''),
('0dbbfa73abe996ecc95f872abd57f9b6', 'a21c2ab1eb7b9ca964541fcf0abafdbc', 'P0007', 325, 6500, 49400, 8, '2019-04-07', ''),
('144c9282479616521da2f5f52dee26f3', 'f78e365e5b85c99ec67a47b4ee003768', 'P0003', 500, 10000, 9500, 1, '2019-03-02', ''),
('160042436f951167841e03f9a50c02d4', 'ba1bfbd136e5522c7e7916ed6886871f', 'P0003', 0, 9500, 38000, 4, '2019-04-21', 'E0001'),
('175ad7e13d640e865bc64d776c8c84b1', 'b0e203163247c8775ae9d6de6f98797b', 'P0003', 0, 9500, 38000, 4, '2019-04-15', 'E0001'),
('18fe815d13f1eafb2d0bca727944cc55', 'aa8458ed630f7ca2ab5e8f0b5938a05d', 'P0004', 400, 20000, 58800, 3, '2019-01-26', ''),
('1c9bc77a115596656bc9a2899913f400', '4287252495029b01df3bf3419dedc32e', 'P0002', 1200, 12000, 10800, 1, '2019-03-20', ''),
('1d149a788160ec02c3b618cc03869a42', 'f150f7118f0446edada811f22612c769', 'P0004', 400, 20000, 19600, 1, '2019-03-20', ''),
('238ab31f338339d2f85023f14e7ba384', '001b5f6ec7f8767a6fb8d078ef8abff7', 'P0001', 0, 35000, 35000, 1, '2019-03-31', ''),
('23b28a0f055e0297286ce3f2002bd8cc', '4b3e80691dd1fca5cf117945bad2b739', 'P0002', 0, 12000, 48000, 4, '2019-04-14', ''),
('29fb4e8147f728b744a363db7fdea6ad', '807f984e5ee2249b7e4c191a5eadec18', 'P0003', 500, 10000, 9500, 1, '2019-03-20', ''),
('2bcb6f20da4ddd1ccd2d0506da385742', '5f1519960f7fa5d55a5b3c4e6635405d', 'P0007', 325, 6500, 18525, 3, '2019-02-19', ''),
('2d93bd1c43557cce2ac5d4997e723bbf', '157d7800f82adffef91e224b42a69b59', 'P0002', 1200, 12000, 10800, 1, '2019-03-20', ''),
('2ffc4abab438914f5d9871afd704a2c6', 'aa8458ed630f7ca2ab5e8f0b5938a05d', 'P0003', 500, 10000, 9500, 1, '2019-01-26', ''),
('3268168bad24d57c1373be0289c6f1f9', '25dbccf452d2b92a6339378ae4333599', 'P0003', 500, 10000, 9500, 1, '2019-03-22', ''),
('36406526d02a8f7b9c83a42d08ee706b', '4cdebb270b60e0eb4718eaebbb591171', 'P0003', 500, 10000, 9500, 1, '2019-04-15', ''),
('39f521c11aac1e75b1b46d91faab54c9', '16c53ed54b87ae4709488fa65e9699d2', 'P0002', 1200, 12000, 21600, 2, '2019-01-18', ''),
('3fc270ba4c1aca10fd13a083a70dddc6', '615f80e5cd95876e5863c6febb244277', 'P0002', 1200, 12000, 10800, 1, '2019-01-22', ''),
('40fe0ff65d5a6f85c5a8aa5e591a6f22', '2ff6276734edaa8a9cc03ae5fa36189d', 'P0001', 1750, 35000, 66500, 2, '2019-01-22', ''),
('442c05de1f80457b72b122ed44f5cbd9', '05860be830f63c86894b0eedb1b8943d', 'P0004', 400, 20000, 19600, 1, '2019-03-20', ''),
('4d0f4324c02627746adf175a04db0068', 'fb0d68556e688ffefe0a4335389808b7', 'P0001', 0, 35000, 35000, 1, '2019-03-20', ''),
('52629910aa48b38440b8cc2387d513ef', '5e6ae23f631429c796185945fec3426e', 'P0010', 0, 10000, 10000, 1, '2019-03-07', ''),
('5c6ab53450c539726c5fda8583a117de', 'b0e203163247c8775ae9d6de6f98797b', 'P0003', 0, 9500, 38000, 4, '2019-04-15', 'E0001'),
('645cd8172ba9e79866996056b29530e7', '9633399692e492b5a09b4bd0863b9d1b', 'P0001', 0, 5000, 5000, 1, '2019-05-05', ''),
('6493d8e4059b2e0176ee35f567367e2d', '6c9a3f0297345cb9854a52057557281a', 'P0001', 0, 4000, 16000, 4, '2019-04-24', 'E0007'),
('6795f5c6fdcbadb009898b074e44437d', 'b0e203163247c8775ae9d6de6f98797b', 'P0003', 0, 9500, 38000, 4, '2019-04-15', 'E0001'),
('67bc37f8ed5aa0773267a398c7297a12', 'd83376c2c04d6e0ae77748d3b14c76cc', 'P0003', 0, 9500, 38000, 4, '2019-04-21', 'E0001'),
('6adb2570d79a1d85a2e79c986cbda436', 'aa8458ed630f7ca2ab5e8f0b5938a05d', 'P0001', 1750, 35000, 99750, 3, '2019-01-26', ''),
('6afa19f6b94338670f98f7867b718085', '4cdebb270b60e0eb4718eaebbb591171', 'P0003', 0, 9500, 38000, 4, '2019-04-15', ''),
('700cdd7c452a6c171ea8040dc9629216', 'f78e365e5b85c99ec67a47b4ee003768', 'P0002', 1200, 12000, 10800, 1, '2019-03-02', ''),
('74a4e87edbd342be7acf338c784d4ccc', '4cdebb270b60e0eb4718eaebbb591171', 'P0003', 500, 10000, 9500, 1, '2019-04-15', ''),
('75caacf9dc49ed2a25c57ce03c508435', 'aa8458ed630f7ca2ab5e8f0b5938a05d', 'P0002', 1200, 12000, 21600, 2, '2019-01-26', ''),
('80a24252e55424833fa5299aacb24093', '0c629d5ed4d08e6c2c83636b00332517', 'P0003', 500, 10000, 9500, 1, '2019-03-20', ''),
('817d36064a75eb25799841752fd8b82a', '648adb1bef8f4dd0b8c187973a813239', 'P0009', 0, 6000, 6000, 1, '2019-04-13', ''),
('8938091d7ddd98627bfb1f45775d9fc2', 'b0e203163247c8775ae9d6de6f98797b', 'P0001', 0, 3000, 12000, 4, '2019-04-15', 'E0001'),
('8991e60a8d88c34d21ec5d3d4d2446cf', 'f78e365e5b85c99ec67a47b4ee003768', 'P0001', 0, 35000, 35000, 1, '2019-03-02', ''),
('8d5dc1ebcdf38027f33e640dddc7f4a6', 'a21c2ab1eb7b9ca964541fcf0abafdbc', 'P0003', 500, 10000, 9500, 1, '2019-04-07', ''),
('95128d6eb11e53ac684f1e19ea186fa1', '79344d4499dafc3296379802db3b0a9e', 'P0002', 1200, 12000, 54000, 5, '2019-01-22', ''),
('99539b19a24e59a62e5cb8d6b9d48c3b', '5b7d4bc906ca9cac8674a8d01a8ee483', 'P0001', 0, 35000, 35000, 1, '2019-03-20', ''),
('9a801817e2b305aafb9dcc40bd3e1527', 'b0e203163247c8775ae9d6de6f98797b', 'P0001', 0, 3000, 12000, 4, '2019-04-15', 'E0001'),
('9f59210eee5aabea28d6c0c137b2bea1', '50dd9d0ed2760dce04620a5687e6826b', 'P0001', 0, 35000, 35000, 1, '2019-03-20', ''),
('a1ff1faf3792862216c0b32c96b55aed', '356106a76ab2d5dd0fcf7c46c330517d', 'P0001', 1750, 35000, 33250, 1, '2019-01-22', ''),
('a7c1a90044e0f525186f1c8a53f687c4', 'de060f4a839857f0a8d8191b20ba5fef', 'P0001', 1750, 35000, 33250, 1, '2019-01-22', ''),
('aeaf41eea4808855d67ec46a49471c69', 'b0e203163247c8775ae9d6de6f98797b', 'P0003', 0, 9500, 38000, 4, '2019-04-15', 'E0001'),
('b0f2fa3ae1ce69be5a5d301bd8309b86', '412e6803ae4a8b4d56a9654ade3a4d8a', 'P0001', 0, 5000, 20000, 4, '2019-05-05', ''),
('b75f87cdf07933f08b74d2fc48df7149', '23a6d54e9e7cffa8256f85a630bcae68', 'P0002', 1200, 12000, 10800, 1, '2019-01-22', ''),
('bd8252a24a879330e45ddda9d17df37c', '4cdebb270b60e0eb4718eaebbb591171', 'P0003', 500, 10000, 9500, 1, '2019-04-15', ''),
('c08bc22adbb221a9b8f50db3e2ee18eb', 'ba1bfbd136e5522c7e7916ed6886871f', 'P0001', 0, 3000, 12000, 4, '2019-04-21', 'E0001'),
('c25d63f9984e143cf7b8f16b4e4a9579', '6c9a3f0297345cb9854a52057557281a', 'P0001', 0, 4000, 16000, 4, '2019-04-24', 'E0007'),
('c358da22918145542a459a2faf2d1bd5', 'ebeecfa7af58c373c38a353cec083b45', 'P0001', 1750, 35000, 33250, 1, '2019-02-03', ''),
('c673e3b3b3ecf08033ecc641e2aa3e41', '48e26108f4f99f2bb986510b30ddc5cb', 'P0002', 1200, 12000, 10800, 1, '2019-03-20', ''),
('c72152cf50e324a5e453a3b603680d86', '75ebbcffe576a9f69c70ae964768833f', 'P0001', 0, 35000, 35000, 1, '2019-03-20', ''),
('c821a9d6854a1667b08fd1373557dcac', 'e55953a0adf5fd3115da033ea8eda1e5', 'P0002', 1200, 12000, 10800, 1, '2019-03-07', ''),
('c893c3293c25cc145dd5b7004a837564', '80e9cb0ef93916918db9c8d726b10482', 'P0001', 0, 3000, 12000, 4, '2019-04-15', 'E0001'),
('ca35b56ae29ff84bca4789ac4573ba5c', '16c53ed54b87ae4709488fa65e9699d2', 'P0003', 500, 10000, 38000, 4, '2019-01-18', ''),
('cbf13b8f315c5124ed6c3717df3a89f2', 'd83376c2c04d6e0ae77748d3b14c76cc', 'P0001', 0, 35000, 140000, 4, '2019-04-21', ''),
('ceb4655b22707a3afea4edbebd577f5e', '8d81cd8cbc68156abfd9bcd388ef3738', 'P0001', 0, 35000, 35000, 1, '2019-03-20', ''),
('d1c8d4fc55d4c06e2a28f1ca96845ba6', '2ff6276734edaa8a9cc03ae5fa36189d', 'P0002', 1200, 12000, 54000, 5, '2019-01-22', ''),
('d55d324feffb4440597c9164312603e3', 'b0e203163247c8775ae9d6de6f98797b', 'P0001', 0, 3000, 12000, 4, '2019-04-15', 'E0001'),
('d9e12a38f2eeb0cd031832da1a18a6e4', 'c05dcc3b2fffb4f1ff32d777cf0f69f4', 'P0004', 400, 20000, 39200, 2, '2019-01-22', ''),
('dcb4e454b4c846d6b05f3481cc87dd90', 'd83376c2c04d6e0ae77748d3b14c76cc', 'P0001', 0, 3000, 12000, 4, '2019-04-21', 'E0001'),
('e4ec4fa98a30e1f5e7f297847a1aaa93', '5081ce85fd81dae438ba85efe885e50b', 'P0002', 1200, 12000, 21600, 2, '2019-02-19', ''),
('e54f265d319e41489bb008f10849d157', '8888f5561ba4609b14df3f4f69b9f8ab', 'P0001', 1750, 35000, 33250, 1, '2019-02-19', ''),
('e68b4395fb3042e062f2acac9a3ba59e', 'b0e203163247c8775ae9d6de6f98797b', 'P0001', 0, 3000, 12000, 4, '2019-04-15', 'E0001'),
('eb4390e6ec8692e1444106af863511a8', 'b0e203163247c8775ae9d6de6f98797b', 'P0003', 0, 9500, 38000, 4, '2019-04-15', 'E0001'),
('f4b6f19db54ed4d3daddb1904d9fe290', 'b0e203163247c8775ae9d6de6f98797b', 'P0001', 0, 3000, 12000, 4, '2019-04-15', 'E0001'),
('ffebb302df14b0b5488153376cb7bf9b', '4cdebb270b60e0eb4718eaebbb591171', 'P0003', 500, 10000, 9500, 1, '2019-04-15', ''),
('24f6d31868266663fb75361dd1d74dbd', '58abd91b6a4d8d41bf74eedbf8777e65', 'P0001', 0, 5000, 5000, 1, '2019-05-09', ''),
('0e3265630c75cd3b5542a03d9186a7eb', '58abd91b6a4d8d41bf74eedbf8777e65', 'P0003', 0, 20000, 20000, 1, '2019-05-09', ''),
('e72e29c14a62af99d48f8ba94263d4cf', '6b373a7bc70d20d99b07a1448aebab10', 'P0001', 0, 5000, 5000, 1, '2019-05-09', ''),
('c2fcb7010c1310bf846e36223fb46a31', '6b373a7bc70d20d99b07a1448aebab10', 'P0003', 0, 20000, 20000, 1, '2019-05-09', ''),
('127e5d19cce338a0e714a31300076f99', '6b373a7bc70d20d99b07a1448aebab10', 'P0004', 0, 2000, 2000, 1, '2019-05-09', ''),
('9d6c5713f29adbd3b51a8d5914eea78c', '', 'P0001', 0, 47000, 188000, 4, '2019-05-09', 'E0002'),
('9211ecf5218b86db1e6be220e41b24f7', '', 'P0003', 0, 18000, 72000, 4, '2019-05-09', 'E0002'),
('69bd93afd96060b624d7ca0aa88e2b67', '309e95b5468a312fe53e75bc3498f6fc', 'P0004', 0, 1900, 7600, 4, '2019-05-09', 'E0003'),
('d8c9dae94802d18c16144fdeb66eb927', '309e95b5468a312fe53e75bc3498f6fc', 'P0002', 0, 14000, 56000, 4, '2019-05-09', 'E0003'),
('5e3779be3dacfa9693eb85d4c61311d5', 'cdc9ebd7e304d5b6a49bb682e62f50bd', 'P0004', 0, 1900, 7600, 4, '2019-05-09', 'E0003'),
('c70a0d4d4265f6438ea87723dfd3640e', 'cdc9ebd7e304d5b6a49bb682e62f50bd', 'P0002', 0, 14000, 56000, 4, '2019-05-09', 'E0003'),
('ca003bec88aeacc1075232f8cdcb8870', '319151ab45a1e2576420f81436445c1c', 'P0001', 0, 5000, 5000, 1, '2019-05-13', ''),
('c5f59bda4564742e0dc893f7267ce819', 'd221db15e51d3ef79dd7334713a795d1', 'P0001', 500, 5000, 4500, 1, '2019-05-13', ''),
('edcf61335fdaa8024b373254e7f9fbf2', '5f056816841a0beeff3aceda2ce26067', 'P0001', 500, 5000, 4500, 1, '2019-05-13', ''),
('4727f60a4457d088dc6ba3f4b3a12c21', 'cb7fe47fe844dd102b211fbe3df0e652', 'P0001', 500, 5000, 4500, 1, '2019-05-13', ''),
('6c87f075c016060e6baacf8651923d7e', '9fcd89f77b62ce38903432322258e703', 'P0001', 500, 5000, 4500, 1, '2019-05-13', ''),
('ad746ea61bb0d2fb498a6428bc58090e', '634f5fff366c5206619f3986592002e8', 'P0001', 500, 5000, 4500, 1, '2019-05-13', '');

-- --------------------------------------------------------

--
-- Table structure for table `rimwheel`
--

CREATE TABLE `rimwheel` (
  `id` int(11) NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `rimwheel`
--

INSERT INTO `rimwheel` (`id`, `code`, `Description`, `status`) VALUES
(1, 'WR0001', '5.5', 1),
(2, 'WR0002', '6', 1),
(3, 'WR0003', '6.5', 1),
(4, 'WR0004', '7', 1),
(5, 'WR0005', '7.5', 1),
(6, 'WR0006', '8', 1),
(7, 'WR0007', '8.5', 1),
(8, 'WR0008', '9', 1),
(9, 'WR0009', '9.5', 1),
(10, 'WR0010', '10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `seriesrubble`
--

CREATE TABLE `seriesrubble` (
  `id` int(11) NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `WidthRubble` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `DiameterRubble` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `relationWidth` int(11) NOT NULL,
  `relationDiameter` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `seriesrubble`
--

INSERT INTO `seriesrubble` (`id`, `code`, `Description`, `status`, `WidthRubble`, `DiameterRubble`, `relationWidth`, `relationDiameter`) VALUES
(1, 'RS0001', '25', 1, '', '', 0, 0),
(2, 'RS0002', '30', 1, '', '', 0, 0),
(3, 'RS0003', '35', 1, '', '', 0, 0),
(4, 'RS0004', '40', 1, '', '', 0, 0),
(5, 'RS0005', '45', 1, '', '', 0, 0),
(6, 'RS0006', '50', 1, '', '', 0, 0),
(7, 'RS0007', '55', 1, '', '', 0, 0),
(8, 'RS0008', '60', 1, '', '', 0, 0),
(9, 'RS0009', '65', 1, '', '', 0, 0),
(10, 'RS0010', '70', 1, '', '', 0, 0),
(11, 'RS0011', '75', 1, '', '', 0, 0),
(12, 'RS0012', '80', 1, '', '', 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `shelf`
--

CREATE TABLE `shelf` (
  `shelf_id` int(11) NOT NULL,
  `shelf_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `shelf_detail` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `shelf_color` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `shelf_status` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `shelf_class` int(11) NOT NULL,
  `amt` int(11) DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shelf`
--

INSERT INTO `shelf` (`shelf_id`, `shelf_code`, `shelf_detail`, `shelf_color`, `shelf_status`, `shelf_class`, `amt`) VALUES
(11, 's0006', 'A', '', '1', 1, 20),
(12, 's0007', 'A', '', '1', 2, 40),
(13, 's0008', 'B', '', '1', 1, 50),
(14, 's0009', 'B', '', '1', 2, 30);

-- --------------------------------------------------------

--
-- Table structure for table `shelf_detail`
--

CREATE TABLE `shelf_detail` (
  `id` int(11) NOT NULL,
  `shelf_code` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `ProductID` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `amt_rimit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `shelf_detail`
--

INSERT INTO `shelf_detail` (`id`, `shelf_code`, `ProductID`, `amt_rimit`) VALUES
(1, 's0006', 'W0002', 10),
(2, 's0007', 'W0001', 5),
(3, 's0006', 'W0001', 10);

-- --------------------------------------------------------

--
-- Table structure for table `stock_tb_receive_master`
--

CREATE TABLE `stock_tb_receive_master` (
  `rid` int(11) NOT NULL,
  `po` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `datedo` date NOT NULL,
  `datereceive` date NOT NULL,
  `iduser` varchar(255) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stock_tb_receive_master`
--

INSERT INTO `stock_tb_receive_master` (`rid`, `po`, `datedo`, `datereceive`, `iduser`) VALUES
(1, 'PO0001', '2019-05-05', '2019-05-05', 'พัชรวี   สีดอก'),
(2, 'PO0002', '2019-05-06', '2019-05-06', 'พัชรวี   สีดอก'),
(3, 'PO0003', '2019-05-06', '2019-05-06', 'พัชรวี   สีดอก'),
(4, 'PO0004', '2019-05-09', '2019-05-09', '่jitrawan   chumpai'),
(5, 'PO0005', '2019-05-13', '2019-05-13', 'พัชรวี   สีดอก'),
(6, 'PO0006', '2019-05-13', '2019-05-13', 'พัชรวี   สีดอก'),
(7, 'PO0007', '2019-05-13', '2019-05-13', 'พัชรวี   สีดอก'),
(8, 'PO0008', '2019-05-13', '2019-05-13', 'พัชรวี   สีดอก');

-- --------------------------------------------------------

--
-- Table structure for table `stock_tb_receive_master_sub`
--

CREATE TABLE `stock_tb_receive_master_sub` (
  `no` int(11) NOT NULL,
  `po` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `ProductID` varchar(5) COLLATE utf8_unicode_ci NOT NULL,
  `total` int(11) NOT NULL,
  `price` double NOT NULL,
  `shelf_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL,
  `dealer_code` varchar(5) COLLATE utf8_unicode_ci DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `stock_tb_receive_master_sub`
--

INSERT INTO `stock_tb_receive_master_sub` (`no`, `po`, `ProductID`, `total`, `price`, `shelf_code`, `dealer_code`) VALUES
(2, 'PO0003', '', 1, 0, NULL, NULL),
(3, 'PO0004', 'P0001', 12, 0, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `system_font_size`
--

CREATE TABLE `system_font_size` (
  `font_key` char(32) NOT NULL,
  `font_name` varchar(128) NOT NULL,
  `font_size_text` text NOT NULL,
  `font_status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_font_size`
--

INSERT INTO `system_font_size` (`font_key`, `font_name`, `font_size_text`, `font_status`) VALUES
('6c3ca25445248c1dff79d51ad9fa4082', '14px', 'font-size:14px;', 1),
('74af75636b4e933684d63b617c97f398', '24px', 'font-size:24px;', 1),
('bffeb9ae0d04ffc7affc3701f9858932', '22px', 'font-size:22px;', 1),
('dd7e28065e654467be0f9c16f3bd987d', '16px', 'font-size:16px;', 1),
('e215155479796a0bdcad2326ffca09c7', '18px', 'font-size:18px;', 1),
('ff9ec5b758824e67edcf5ecc7e635f6f', '20px', 'font-size:20px;', 1),
('6c3ca25445248c1dff79d51ad9fa4082', '14px', 'font-size:14px;', 1),
('74af75636b4e933684d63b617c97f398', '24px', 'font-size:24px;', 1),
('bffeb9ae0d04ffc7affc3701f9858932', '22px', 'font-size:22px;', 1),
('dd7e28065e654467be0f9c16f3bd987d', '16px', 'font-size:16px;', 1),
('e215155479796a0bdcad2326ffca09c7', '18px', 'font-size:18px;', 1),
('ff9ec5b758824e67edcf5ecc7e635f6f', '20px', 'font-size:20px;', 1),
('6c3ca25445248c1dff79d51ad9fa4082', '14px', 'font-size:14px;', 1),
('74af75636b4e933684d63b617c97f398', '24px', 'font-size:24px;', 1),
('bffeb9ae0d04ffc7affc3701f9858932', '22px', 'font-size:22px;', 1),
('dd7e28065e654467be0f9c16f3bd987d', '16px', 'font-size:16px;', 1),
('e215155479796a0bdcad2326ffca09c7', '18px', 'font-size:18px;', 1),
('ff9ec5b758824e67edcf5ecc7e635f6f', '20px', 'font-size:20px;', 1);

-- --------------------------------------------------------

--
-- Table structure for table `system_info`
--

CREATE TABLE `system_info` (
  `site_key` char(32) NOT NULL,
  `site_logo` varchar(256) NOT NULL,
  `site_favicon` varchar(256) NOT NULL,
  `time_zone` varchar(128) NOT NULL,
  `year_type` varchar(16) NOT NULL,
  `year_format` varchar(32) NOT NULL,
  `booking_logo_en` varchar(128) NOT NULL,
  `booking_title_en` varchar(128) NOT NULL,
  `booking_note1_en` text NOT NULL,
  `booking_note2_en` text NOT NULL,
  `booking_logo_th` varchar(128) NOT NULL,
  `booking_title_th` varchar(128) NOT NULL,
  `booking_note1_th` text NOT NULL,
  `booking_note2_th` text NOT NULL,
  `reciept_logo_en` varchar(128) NOT NULL,
  `reciept_title_en` varchar(128) NOT NULL,
  `reciept_note1_en` text NOT NULL,
  `reciept_note2_en` text NOT NULL,
  `reciept_logo_th` varchar(128) NOT NULL,
  `reciept_title_th` varchar(128) NOT NULL,
  `reciept_note1_th` text NOT NULL,
  `reciept_note2_th` text NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `system_info`
--

INSERT INTO `system_info` (`site_key`, `site_logo`, `site_favicon`, `time_zone`, `year_type`, `year_format`, `booking_logo_en`, `booking_title_en`, `booking_note1_en`, `booking_note2_en`, `booking_logo_th`, `booking_title_th`, `booking_note1_th`, `booking_note2_th`, `reciept_logo_en`, `reciept_title_en`, `reciept_note1_en`, `reciept_note2_en`, `reciept_logo_th`, `reciept_title_th`, `reciept_note1_th`, `reciept_note2_th`) VALUES
('8f411b77c389d5de467af8f2c0e91cda', 'logo.png', 'icon.png', 'Asia/Bangkok', 'BE', '3', 'logo.png', 'Booking Slip', 'Name..............................................<br/>Address..............................................................................<br/>Tel................................................................', '', 'logo.png', 'ใบจองห้องพัก', 'ชื่อ..............................................<br/>ที่อยู่..............................................................................<br/>โทร................................................................', '', 'logo.png', 'Reciept', 'Name..............................................<br/>Address..............................................................................<br/>Tel................................................................', '', 'logo.png', 'ใบเสร็จรับเงิน', 'ชื่อ..............................................<br/>ที่อยู่..............................................................................<br/>โทร................................................................', ''),
('8f411b77c389d5de467af8f2c0e91cda', 'logo.png', 'icon.png', 'Asia/Bangkok', 'BE', '3', 'logo.png', 'Booking Slip', 'Name..............................................<br/>Address..............................................................................<br/>Tel................................................................', '', 'logo.png', 'ใบจองห้องพัก', 'ชื่อ..............................................<br/>ที่อยู่..............................................................................<br/>โทร................................................................', '', 'logo.png', 'Reciept', 'Name..............................................<br/>Address..............................................................................<br/>Tel................................................................', '', 'logo.png', 'ใบเสร็จรับเงิน', 'ชื่อ..............................................<br/>ที่อยู่..............................................................................<br/>โทร................................................................', ''),
('8f411b77c389d5de467af8f2c0e91cda', 'logo.png', 'icon.png', 'Asia/Bangkok', 'BE', '3', 'logo.png', 'Booking Slip', 'Name..............................................<br/>Address..............................................................................<br/>Tel................................................................', '', 'logo.png', 'ใบจองห้องพัก', 'ชื่อ..............................................<br/>ที่อยู่..............................................................................<br/>โทร................................................................', '', 'logo.png', 'Reciept', 'Name..............................................<br/>Address..............................................................................<br/>Tel................................................................', '', 'logo.png', 'ใบเสร็จรับเงิน', 'ชื่อ..............................................<br/>ที่อยู่..............................................................................<br/>โทร................................................................', '');

-- --------------------------------------------------------

--
-- Table structure for table `type`
--

CREATE TABLE `type` (
  `TypeID` varchar(5) NOT NULL,
  `TypeName` varchar(30) NOT NULL,
  `TypeStatus` char(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `type`
--

INSERT INTO `type` (`TypeID`, `TypeName`, `TypeStatus`) VALUES
('T0001', 'ยางมือ1', '1'),
('T0002', 'ยางมือ2', '1'),
('T0003', 'ล้อแม็กมือ1', '1'),
('T0004', 'ล้อแม็กมือ2', '1'),
('T0005', 'ล้อเปลี่ยนtest', '1'),
('T0006', 'ล้อแม็กเปลี่ยน', '1'),
('T0007', 'ประเภทสินค้า', '1');

-- --------------------------------------------------------

--
-- Table structure for table `typeformatwheel`
--

CREATE TABLE `typeformatwheel` (
  `id` int(11) NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `typeformatwheel`
--

INSERT INTO `typeformatwheel` (`id`, `code`, `Description`, `status`) VALUES
(2, 'WT0001', 'ล้อแม็กกะทะ', 1),
(3, 'WT0002', 'ล้อแม็กนีเซียมอัลลอย', 1),
(4, 'WT0003', 'ล้อแม็กอลูมินั่มอัลลอย', 1);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `user_key` char(32) NOT NULL,
  `name` varchar(64) NOT NULL,
  `lastname` varchar(64) NOT NULL,
  `username` varchar(64) NOT NULL,
  `password` varchar(32) NOT NULL,
  `user_photo` varchar(128) NOT NULL DEFAULT 'noimg.jpg',
  `user_class` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=user,2=admin,3=super admin',
  `bed_view` varchar(64) NOT NULL DEFAULT 'box_view',
  `user_language` varchar(8) NOT NULL DEFAULT 'th',
  `system_font_size` varchar(32) NOT NULL DEFAULT 'dd7e28065e654467be0f9c16f3bd987d',
  `email` varchar(128) NOT NULL,
  `user_status` tinyint(1) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_key`, `name`, `lastname`, `username`, `password`, `user_photo`, `user_class`, `bed_view`, `user_language`, `system_font_size`, `email`, `user_status`) VALUES
('1', 'jitrawan', 'chumpai', 'jitrawan.ch@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '', 3, 'box_view', 'th', 'dd7e28065e654467be0f9c16f3bd987d', 'jitrawan.ch@gmail.com', 1),
('d97530f6437e7ffa3a74afe46a953a15', 'พัชรวี', 'สีดอก', 'pat', '81dc9bdb52d04dc20036dbd8313ed055', 'noimg.jpg', 3, 'box_view', 'th', '74af75636b4e933684d63b617c97f398', 'applee@gmail.com', 1),
('5e16c811e91f8a4bed61801e7bf1ce20', 'user', '', 'user1', '81dc9bdb52d04dc20036dbd8313ed055', 'noimg.jpg', 2, 'box_view', 'th', 'dd7e28065e654467be0f9c16f3bd987d', '', 1),
('6a7c6fe063021a761c8498b4f11aad85', '่jitrawan', 'chumpai', 'film', 'e10adc3949ba59abbe56e057f20f883e', 'noimg.jpg', 3, 'box_view', 'th', 'dd7e28065e654467be0f9c16f3bd987d', 'jitrawan.ch@hotmail.com', 1);

-- --------------------------------------------------------

--
-- Table structure for table `viewtables`
--

CREATE TABLE `viewtables` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `age` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `gender` varchar(50) COLLATE utf8_unicode_ci NOT NULL,
  `action` varchar(50) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `viewtables`
--

INSERT INTO `viewtables` (`id`, `name`, `age`, `gender`, `action`) VALUES
(1, '[{\"amt\":\"1\",\"pid\":\"P0001\"},{\"amt\":\"1\",\"pid\":\"P0002\"},{\"amt\":\"1\",\"pid\":\"P0003\"},{\"amt\":\"1\",\"pid\":\"P0001\"}]', '', '', ''),
(2, '[{\"amt\":\"1\",\"pid\":\"P0001\"},{\"amt\":\"1\",\"pid\":\"P0002\"},{\"amt\":\"1\",\"pid\":\"P0003\"},{\"amt\":\"1\",\"pid\":\"P0001\"}]', '', '', ''),
(3, '[{\"amt\":\"1\",\"pid\":\"P0001\"},{\"amt\":\"1\",\"pid\":\"P0002\"},{\"amt\":\"1\",\"pid\":\"P0003\"},{\"amt\":\"1\",\"pid\":\"P0001\"}]', '', '', ''),
(4, 'Array', '', '', ''),
(5, '[\"[{\"amt\":\"1\",\"pid\":\"P0001\"},{\"amt\":\"1\",\"pid\":\"P0002\"},{\"amt\":\"1\",\"pid\":\"P0003\"},{\"amt\":\"1\",\"pid\":\"P0001\"}]\"]', '', '', ''),
(6, 'Array', '', '', ''),
(7, '[{\"amt\":\"1\"', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `widthrubble`
--

CREATE TABLE `widthrubble` (
  `id` int(11) NOT NULL,
  `code` varchar(10) COLLATE utf8_unicode_ci NOT NULL,
  `Description` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `status` int(11) NOT NULL,
  `relationSeries` int(11) NOT NULL,
  `relationDiameter` int(11) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `widthrubble`
--

INSERT INTO `widthrubble` (`id`, `code`, `Description`, `status`, `relationSeries`, `relationDiameter`) VALUES
(1, 'RW0001', '155', 1, 1, 1),
(2, 'RW0002', '165', 1, 2, 2),
(3, 'RW0003', '175', 1, 0, 0),
(4, 'RW0004', '185', 1, 0, 0),
(5, 'RW0005', '195', 1, 0, 0),
(6, 'RW0006', '205', 1, 0, 0),
(7, 'RW0007', '215', 1, 0, 0),
(8, 'RW0008', '225', 1, 0, 0),
(9, 'RW0009', '235', 1, 0, 0),
(12, 'RW0010', '245', 1, 0, 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `autonumber`
--
ALTER TABLE `autonumber`
  ADD PRIMARY KEY (`finance_number`);

--
-- Indexes for table `backup_logs`
--
ALTER TABLE `backup_logs`
  ADD PRIMARY KEY (`backup_key`);

--
-- Indexes for table `brand`
--
ALTER TABLE `brand`
  ADD PRIMARY KEY (`BrandID`);

--
-- Indexes for table `brandrubble`
--
ALTER TABLE `brandrubble`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `brandwhee`
--
ALTER TABLE `brandwhee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cancelesd_reserve`
--
ALTER TABLE `cancelesd_reserve`
  ADD PRIMARY KEY (`canceles_key`);

--
-- Indexes for table `dealer`
--
ALTER TABLE `dealer`
  ADD PRIMARY KEY (`dealer_id`);

--
-- Indexes for table `diameterrubble`
--
ALTER TABLE `diameterrubble`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `diameterwhee`
--
ALTER TABLE `diameterwhee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_info`
--
ALTER TABLE `event_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_item`
--
ALTER TABLE `event_item`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `holesizewhee`
--
ALTER TABLE `holesizewhee`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `language`
--
ALTER TABLE `language`
  ADD PRIMARY KEY (`language_code`);

--
-- Indexes for table `list`
--
ALTER TABLE `list`
  ADD PRIMARY KEY (`cases`);

--
-- Indexes for table `menus`
--
ALTER TABLE `menus`
  ADD PRIMARY KEY (`menu_key`);

--
-- Indexes for table `model`
--
ALTER TABLE `model`
  ADD PRIMARY KEY (`ModelID`);

--
-- Indexes for table `offset`
--
ALTER TABLE `offset`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product`
--
ALTER TABLE `product`
  ADD PRIMARY KEY (`ProductID`),
  ADD KEY `clothes_ibfk_1` (`BrandID`),
  ADD KEY `clothes_ibfk_2` (`TypeID`);

--
-- Indexes for table `productdetailrubber`
--
ALTER TABLE `productdetailrubber`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `productdetailwheel`
--
ALTER TABLE `productdetailwheel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `product_n`
--
ALTER TABLE `product_n`
  ADD PRIMARY KEY (`ProductID`);

--
-- Indexes for table `relationdiameter`
--
ALTER TABLE `relationdiameter`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relationholesize`
--
ALTER TABLE `relationholesize`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relationrim`
--
ALTER TABLE `relationrim`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relationseries`
--
ALTER TABLE `relationseries`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `relationwidth`
--
ALTER TABLE `relationwidth`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reprint_reserve`
--
ALTER TABLE `reprint_reserve`
  ADD PRIMARY KEY (`reprintReserveKey`);

--
-- Indexes for table `reserve`
--
ALTER TABLE `reserve`
  ADD PRIMARY KEY (`reserveId`);

--
-- Indexes for table `reserve_detail`
--
ALTER TABLE `reserve_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `reserve_info`
--
ALTER TABLE `reserve_info`
  ADD PRIMARY KEY (`reserve_key`);

--
-- Indexes for table `reserve_item`
--
ALTER TABLE `reserve_item`
  ADD PRIMARY KEY (`item_key`);

--
-- Indexes for table `rimwheel`
--
ALTER TABLE `rimwheel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `seriesrubble`
--
ALTER TABLE `seriesrubble`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `shelf`
--
ALTER TABLE `shelf`
  ADD PRIMARY KEY (`shelf_id`);

--
-- Indexes for table `shelf_detail`
--
ALTER TABLE `shelf_detail`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `stock_tb_receive_master`
--
ALTER TABLE `stock_tb_receive_master`
  ADD PRIMARY KEY (`rid`);

--
-- Indexes for table `stock_tb_receive_master_sub`
--
ALTER TABLE `stock_tb_receive_master_sub`
  ADD PRIMARY KEY (`no`);

--
-- Indexes for table `type`
--
ALTER TABLE `type`
  ADD PRIMARY KEY (`TypeID`);

--
-- Indexes for table `typeformatwheel`
--
ALTER TABLE `typeformatwheel`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `viewtables`
--
ALTER TABLE `viewtables`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `widthrubble`
--
ALTER TABLE `widthrubble`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brand`
--
ALTER TABLE `brand`
  MODIFY `BrandID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `brandrubble`
--
ALTER TABLE `brandrubble`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `brandwhee`
--
ALTER TABLE `brandwhee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `dealer`
--
ALTER TABLE `dealer`
  MODIFY `dealer_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `diameterrubble`
--
ALTER TABLE `diameterrubble`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `diameterwhee`
--
ALTER TABLE `diameterwhee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `event_info`
--
ALTER TABLE `event_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `event_item`
--
ALTER TABLE `event_item`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `holesizewhee`
--
ALTER TABLE `holesizewhee`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `offset`
--
ALTER TABLE `offset`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `productdetailrubber`
--
ALTER TABLE `productdetailrubber`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `productdetailwheel`
--
ALTER TABLE `productdetailwheel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `relationdiameter`
--
ALTER TABLE `relationdiameter`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `relationholesize`
--
ALTER TABLE `relationholesize`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `relationrim`
--
ALTER TABLE `relationrim`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;
--
-- AUTO_INCREMENT for table `relationseries`
--
ALTER TABLE `relationseries`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=72;
--
-- AUTO_INCREMENT for table `relationwidth`
--
ALTER TABLE `relationwidth`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `reserve_detail`
--
ALTER TABLE `reserve_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `rimwheel`
--
ALTER TABLE `rimwheel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `seriesrubble`
--
ALTER TABLE `seriesrubble`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `shelf`
--
ALTER TABLE `shelf`
  MODIFY `shelf_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `shelf_detail`
--
ALTER TABLE `shelf_detail`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `stock_tb_receive_master`
--
ALTER TABLE `stock_tb_receive_master`
  MODIFY `rid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `stock_tb_receive_master_sub`
--
ALTER TABLE `stock_tb_receive_master_sub`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `typeformatwheel`
--
ALTER TABLE `typeformatwheel`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `viewtables`
--
ALTER TABLE `viewtables`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `widthrubble`
--
ALTER TABLE `widthrubble`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
