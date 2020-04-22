-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3308
-- Generation Time: Jan 11, 2020 at 10:05 AM
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
-- Database: `quan_ly_ban_hang_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `dongdh`
--

DROP TABLE IF EXISTS `dongdh`;
CREATE TABLE IF NOT EXISTS `dongdh` (
  `MADDH` int(11) NOT NULL,
  `SOLUONG` int(11) NOT NULL,
  `MAHANG` int(11) NOT NULL,
  `MADH` int(11) NOT NULL,
  PRIMARY KEY (`MADDH`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `dongdh`
--

INSERT INTO `dongdh` (`MADDH`, `SOLUONG`, `MAHANG`, `MADH`) VALUES
(622, 1, 14, 518),
(558, 2, 18, 518),
(127, 1, 16, 323),
(972, 1, 16, 983),
(529, 1, 14, 983),
(850, 1, 13, 59);

-- --------------------------------------------------------

--
-- Table structure for table `donhang`
--

DROP TABLE IF EXISTS `donhang`;
CREATE TABLE IF NOT EXISTS `donhang` (
  `MADH` int(11) NOT NULL AUTO_INCREMENT,
  `NGAYDATHANG` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TONGTIEN` float NOT NULL,
  `TENNGUOINHAN` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `EMAIL` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `DIACHINHANHANG` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SDT` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `GHICHU` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `TRANGTHAI` int(1) NOT NULL,
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`MADH`)
) ENGINE=MyISAM AUTO_INCREMENT=984 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `donhang`
--

INSERT INTO `donhang` (`MADH`, `NGAYDATHANG`, `TONGTIEN`, `TENNGUOINHAN`, `EMAIL`, `DIACHINHANHANG`, `SDT`, `GHICHU`, `TRANGTHAI`, `ID`) VALUES
(323, '2020/1/11', 101, 'Do Trong Thi', 'ngodinhnam0416@gmail.com', '58/17 Nguyen Lu-Ngo May-Ngo May-Quy Nhon', '0979787892', 'hay', 2, 31),
(983, '2020/1/11', 216, 'Ngô Dình Nam', 'ngodinhnam0416@gmail.com', '58/17 Nguyen Lu-Ngo May-Ngo May-Quy Nhon', '0979787892', 'c?n th?n', 2, 33),
(59, '2020/1/11', 161, 'Do Trong Thi', 'dotrongthi9@gmail.com', '58/17 Nguyen Lu-Ngo May-Ngo May-Quy Nhon', '0979787892', 'hàng d? v?', 3, 33),
(518, '2020/1/11', 2613, 'Do Trong Thi', 'dotrongthi9@gmail.com', '58/17 Nguyen Lu-Ngo May-Ngo May-Quy Nhon', '0979787892', 'h', 0, 33);

-- --------------------------------------------------------

--
-- Table structure for table `hang`
--

DROP TABLE IF EXISTS `hang`;
CREATE TABLE IF NOT EXISTS `hang` (
  `MAHANG` int(11) NOT NULL AUTO_INCREMENT,
  `TENHANG` text CHARACTER SET ucs2 COLLATE ucs2_unicode_ci NOT NULL,
  `DONGIA` int(11) NOT NULL,
  `IMAGELINK` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `VAT` float NOT NULL,
  `MALOAI` int(11) NOT NULL,
  `NHASX` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `NGAYSX` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `TGBAOHANH` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `TTTHEM` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `SOLUONGHANG` int(11) NOT NULL,
  `TRANGTHAIHANG` bit(1) NOT NULL,
  PRIMARY KEY (`MAHANG`)
) ENGINE=MyISAM AUTO_INCREMENT=970 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `hang`
--

INSERT INTO `hang` (`MAHANG`, `TENHANG`, `DONGIA`, `IMAGELINK`, `VAT`, `MALOAI`, `NHASX`, `NGAYSX`, `TGBAOHANH`, `TTTHEM`, `SOLUONGHANG`, `TRANGTHAIHANG`) VALUES
(14, 'Smart Tivi LG 4K 49 inch 49UM7290PTD ', 115, 'LG7.jpg', 0.4, 1, 'LG', '11/12/2019', '12 tháng', 'Thi?t k? sang tr?ng, màn hình kích c? 49 inch.\r\n?ô? phân gia?i 4K s?c nét, ch?t l??ng hình ?nh v??t tr?i.\r\nT?ng c??ng ?? t??ng ph?n cho hình ?nh v?i công nghê? 4K Active HDR.\r\nX? lý hình ?nh hi?u qu? v?i chip x? lý Quad Core.\r\nÂm thanh m?nh m? nh? công ngh? DTS Virtual:X.\r\nHê? ?iê?u ha?nh WebOS 4.5 dê? s?? du?ng, ti?m kiê?m gio?ng no?i b??ng tiê?ng Viê?t ca? 3 miê?n.\r\nTrí tu? nhân t?o AI ThinQ thông minh, th?u hi?u thói quen c?a ng??i dùng.\r\n?iê?u khiê?n tivi b??ng ?iê?n thoa?i qua ??ng du?ng LG TV Plus ti?n l?i.\r\nHô? tr?? chiê?u ma?n hi?nh ?iê?n thoa?i lên tivi v?i tính n?ng Screen Mirroring và AirPlay 2.', 12, b'0'),
(15, 'Smart Tivi Cong Samsung 4K 49 inch UA49RU7300', 115, 'ss.jpg', 0.4, 1, 'SAMSUNG', '12/11/2019', '12 tháng', 'Thi?t k? màn hình cong hi?n ??i, phong cách, bao trùm m?i góc nhìn.\r\nMàn hình 4K s?c nét g?p 4 l?n Full HD.\r\nT?ng c??ng ?? t??ng ph?n, s?c màu chi ti?t h?n v?i công ngh? HDR.\r\nMàu s?c t? nhiên, s?ng ??ng v?i công ngh? PurColor.\r\nCông ngh? UHD Dimming mang ??n s?c ?en sâu, s?c sáng sáng h?n.\r\nÂm thanh ?a chi?u, lôi cu?n t? công ngh? Dolby Digital Plus.\r\nH? ?i?u hành Tizen OS tr?c quan, m??t mà.\r\nD? dàng trình chi?u màn hình ?i?n tho?i lên tivi v?i tính n?ng Screen Mirroring và Airplay 2.', 29, b'0'),
(16, 'Smart Tivi LG 4K 43 inch 43UM7300PTA', 101, 'LG8.jpg', 0.4, 1, 'LG', '12/11/2019', '12 tháng', 'hi?t k? màn hình kích c? 43 inch, vi?n 1.2 cm.\r\n?ô? phân gia?i 4K cho hình ?nh s?c nét, ?n t??ng.\r\nCông ngh? True Color Accuracy cho tr?i nghi?m hình ?nh ??y màu s?c.\r\nCông nghê? 4K Active HDR giúp hình ?nh tr? nên chân th?c, s?ng ??ng.\r\nChip x? lý Quad Core tái t?o và nâng c?p ch?t l??ng hình ?nh.\r\nÂm thanh s?c s?o v?i công ngh? DTS Virtual:X.\r\nHê? ?iê?u ha?nh WebOS 4.5 dê? s?? du?ng, ?i ke?m remote thông minh hô? tr?? ti?m kiê?m gio?ng no?i b??ng tiê?ng Viê?t ca? 3 miê?n.\r\nTr?i nghi?m tivi tuy?t v?i, linh ho?t v?i trí tu? nhân t?o AI ThinQ.\r\nHô? tr?? ?iê?u khiê?n tivi b??ng ?iê?n thoa?i qua ??ng du?ng LG TV Plus.\r\nChiê?u ma?n hi?nh ?iê?n thoa?i lên tivi ??n gi?n cùng tính n?ng Screen Mirroring và AirPlay 2.', 13, b'0'),
(17, 'Smart Tivi LG 4K 55 inch 55SM8100PTA', 163, 'LG9.jpg', 0.5, 1, 'LG', '15/12/2019', '24 tháng', 'Thiết kế màn hình 55 inch, viền siêu mỏng 0.5 cm.\r\nĐộ phân giải 4K sắc nét cùng công nghệ 4K Active HDR cho hình ảnh chân thật từng chi tiết.\r\nCông nghệ màn hình chấm lượng tử Nano Cell 2 cho dải màu rộng, màu sắc sống động rực rỡ.\r\nTái tạo hình ảnh chân thực hơn với chip xử lý Quad Core.\r\nCông nghệ âm thanh DTS Virtual:X, Clear Voice III mang đến âm thanh vòm sống động mạnh mẽ.\r\nHệ điều hành WebOS 4.5 mới dễ sử dụng, đi kèm remote thông minh hỗ trợ tìm kiếm và ra lệnh bằng giọng nói bằng tiếng Việt cả 3 miền.\r\nCông nghệ trí tuệ nhân tạo AI ThinQ + trợ lý ảo Google Assistant cho những trải nghiệm thú vị hơn.\r\nDễ dàng điều khiển tivi bằng điện thoại qua ứng dụng LG TV Plus.\r\nHỗ trợ chiếu màn hình điện thoại lên tivi với Screen Mirroring và AirPlay 2.', 19, b'0'),
(18, 'Smart Tivi LG 4K 86 inch 86UM7500PTA', 1249, 'LG5.jpg', 0.5, 1, 'LG', '20/12/2019', '12 tháng', 'Thi?t k? hi?n ??i ?i kèm kích th??c màn hình kh?ng 86 inch.\r\n?ô? phân gia?i 4K s?c nét cùng công nghê? 4K Active HDR cho hình ?nh chân th?t.\r\nCông ngh? True Color Accuracy hi?n th? màu s?c r?c r?.\r\nChip x? lý Quad Core hoàn thi?n ch?t l??ng hình ?nh.\r\nTr?i nghi?m âm thanh bùng n? v?i công ngh? DTS Virtual:X có h? tr? Dolby ATMOS.\r\nHê? ?iê?u ha?nh WebOS 4.5 dê? s?? du?ng, ?i ke?m remote thông minh hô? tr?? ti?m kiê?m gio?ng no?i b??ng tiê?ng Viê?t ca? 3 miê?n.\r\nNh?n d?ng gi?ng nói, tìm ki?m thông tin d? dàng, chính xác h?n v?i trí thông minh nhân t?o AI ThinQ.\r\n?iê?u khiê?n tivi b??ng ?iê?n thoa?i qua ??ng du?ng LG TV Plus.\r\nChiê?u ma?n hi?nh ?iê?n thoa?i lên tivi v?i tính n?ng Screen Mirroring và AirPlay 2.', 45, b'0'),
(19, 'Smart Tivi LG 8K 75 inch 75SM9900PTA', 1990, 'LG6.jpg', 0.5, 1, 'LG', '27/11/2019', '24 tháng', 'Thiết kế viền màn hình mỏng 0.5 cm đi cùng màn hình lớn kích thước 75 inch.\r\nĐộ phân giải 8K cực nét cùng với công nghệ 8K Upscaler.\r\nChip LG α9 thế hệ 2 mới nhất xử lý hình ảnh hiệu quả.\r\nHình ảnh rực rỡ hơn với công nghệ màn hình chấm lượng tử NanoCell 2.\r\nÂm thanh vòm sống động với công nghệ âm thanh Dolby Atmos.\r\nHệ điều hành WebOS 4.5 thân thiện, dễ sử dụng.\r\nTính năng tìm kiếm bằng giọng nói bằng tiếng việt trên Magic Remote với LG ThinQ.\r\nĐiều khiển từ xa với ứng dụng LG TV Plus trên điện thoại và trình chiếu màn hình lên tivi thông qua tính năng Screen Mirroring và AirPlay 2.', 24, b'0'),
(20, 'Điện thoại iPhone 11 64GB', 2199, 'IP1.jpg', 0.1, 3, 'IPHONE', '13/12/2019', '12 tháng', 'Sau chiếc điện thoại iPhone Xr có doanh số tốt từng gây nhiều tiếng vang, Apple tiếp tục ra mắt siêu phẩm 2019 mang tên iPhone 11 64GB - một smartphone được nâng cấp toàn diện từ thiết kế cao cấp, vi xử lý hiệu năng mạnh mẽ đến hệ thống camera chất lượng cùng thời lượng pin vượt trội.\r\nHiệu năng đứng đầu bảng smartphone\r\nChiếc điện thoại này được Apple trang bị vi xử lý Apple A13 Bionic mạnh mẽ được lắp ráp trên tiến trình 7 nm, cho hiệu năng mạnh mẽ cùng khả năng tiết kiệm điện cao hơn hẳn với người tiền nhiệm.', 43, b'0'),
(21, 'iPhone 11 Pro 256GB', 3499, 'IP2.jpg', 0.1, 3, 'IPHONE', '15/12/2019', '6 tháng', 'Được nhận xét là sự lựa chọn cân bằng nhất trong bộ ba iPhone 2019, siêu phẩm iPhone 11 Pro 256GB nổi bật với kích thước nhỏ gọn, cùng toàn bộ cấu hình, camera được giữ nguyên từ iPhone 11 Pro Max.\r\nThiết kế nhỏ gọn, màn hình chất lượng\r\nKích thước nhỏ gọn tất nhiên không phải ưu điểm lớn nhất của iPhone 11 Pro, nhưng nó lại là điểm tạo sự khác biệt so với hai phiên bản iPhone 11 Pro Max và iPhone 11, cũng như nhiều flagship cao cấp khác hiện nay, thường có kích thước màn hình rất lớn.', 29, b'0'),
(22, '?i?n tho?i Samsung Galaxy Note 10 ??\r\n', 2299, 'DTSS.jpg', 0.1, 3, 'SAMSUNG', '16/12/2019', '6 Tháng', 'N?m 2019 ?ánh d?u l?n ??u tiên Samsung ra m?t ??n 2 phiên b?n c?a dòng Galaxy Note và chi?c Samsung Galaxy Note 10 ?? r?c r? và sang tr?ng s? r?t phù h?p v?i không khí l? h?i nh?ng tháng cu?i n?m.\r\nThi?t k? màn hình ??c l? tuy?t ??p\r\nMàn hình trên Galaxy Note 10 là ?ánh d?u s? ??i m?i v? thi?t k? c?a Samsung.', 33, b'0'),
(23, '?i?n tho?i Vivo U10', 399, 'vivo.jpg', 0.1, 3, 'VIVO', '17/11/2019', '6 tháng', 'Trong t?m giá d??i 4 tri?u ??ng, Vivo U10 là m?t chi?c smartphone khá cân b?ng và toàn di?n t? hi?u n?ng, pin s?c ??n camera r?t ?áng quan tâm n?a cu?i n?m 2019.\r\nT? tin v? hi?u n?ng ph?n c?ng\r\n?i?m sáng ??u tiên c?n k? ??n khi nh?c ??n Vivo U10 chính là hi?u n?ng ph?n c?ng t? tin ??ng trong top ??u b?ng khi so sánh v?i các ??i th? cùng t?m giá. C? th? chúng ta có vi x? lý Snapdragon 665 m?nh m? và b? nh? RAM 4 GB.', 43, b'0'),
(24, 'Apple Macbook Air 2019 i5 1.6GHz/8GB/128GB (MVFM2SA/A)', 2899, 'mac.jpg', 0.3, 4, 'APPLE', '23/11/2019', '24 tháng', 'MacBook Air 2019 i5 1.6GHz/8GB/128GB là chiếc laptop học tập văn phòng mỏng hơn, nhẹ hơn với màn hình Retina sắc nét, thời lượng pin cả ngày và bàn phím thế hệ mới nhất mang đến những trải nghiệm tốt nhất cho bạn.\r\nMỏng hơn, nhẹ hơn\r\nMacBook Air 2019 i5 được thiết kế với vỏ nhôm tái chế nguyên khối, pin liền với độ dày 15.6 mm và khối lượng 1.25 kg rất tiện lợi cho bạn dễ dàng di chuyển.', 65, b'0'),
(25, 'Asus Gaming ROG Strix G531G i7 9750H/8GB/512GB/4GB GTX1650/Win10 (AL017T)\r\n\r\n', 2899, 'asus1.jpg', 0.3, 4, 'ASUS', '27/12/2019', '24 tháng', 'Tối giản trong thiết kế\r\nLaptop ASUS ROG Strix G G531GT-AL017T được thiết kế với bản lề và thân máy phù hợp nhất cho việc thông khí và làm mát máy. Điều đặc biệt là chiếc laptop này còn tạo điểm nhấn với các đường chạm khắc ẩn và dải đèn cùng đèn nền bàn phím RGB độc đáo, trầm tĩnh.\r\n\r\n', 44, b'0'),
(26, 'HP 348 G5 i3 7020U/4GB/256GB/Win10 (7XJ62PA)', 1069, 'HP1.jpg', 0.1, 4, 'HP', '25/12/2019', '24 tháng', 'Laptop HP 348 G5 7XJ62PA là m?u  laptop sinh viên v?i thi?t k? g?n nh?, d? dàng mang theo khi ?i h?c hay ?i làm cùng v?i c?u hình ?n ??nh ?áp ?ng nhu c?u h?c t?p, làm vi?c và gi?i trí c?a m?i ng??i.\r\nLaptop HP 348 G5 i3 dày 19.89 mm, n?ng 1.42 kg cùng v?i l?p v? nh?a cao c?p giúp t?i ?u hoá v?n ?? cân n?ng, d? dàng mang theo b?t c? ?âu.', 21, b'0'),
(363, 'dedfseferferf', 2, 'Screenshot (4).png', 23, 1, 'nb', '2323', '1', '', 121, b'0'),
(27, 'Tai nghe Bluetooth True Wireless Huawei FreeBuds 3\r\n', 429, 'tainghe.jpg', 0.1, 2, 'HUAWEI', '11/12/2019', '6 tháng', 'Thiết kế nhỏ gọn, êm ái, đảm bảo thoải mái khi sử dụng.\r\nChất lượng âm thanh sống động, bass mạnh mẽ, chân thực.\r\nSử dụng chip Kirin A1 với tốc độ truyền tín hiệu lớn.\r\nKết nối Bluetooth chuẩn 5.1 hiện đại, truyền tín hiệu ổn định, âm thanh mượt mà.\r\nTích hợp tính năng khử tiếng ồn chủ động ANC cho âm thanh thuần túy hơn.\r\nCảm biến giọng nói qua khung xương tai.\r\nThời lượng pin cao với 4 tiếng sử dụng cùng 20 tiếng qua hộp sạc.\r\nDễ dàng điều kiển nhạc, nhận cuộc gọi, bật tắt ANC bằng cách gõ vào tai nghe.\r\nSau lần kết nối đầu tiên, các lần sau tai nghe sẽ tự động kết nối với điện thoại nhanh chóng.', 34, b'0'),
(28, 'Tai nghe ch?p tai Kanen IP-350 Tím', 150, 'tainghe2.jpg', 0.1, 2, 'KANEN', '12/12/2019', '4 tháng', 'Thi?t k? màu s?c tr? trung, n?ng ??ng, ki?u dáng nh? g?n.\r\nL?p ??m tai dày và êm, tho?i mái khi ?eo, cách âm t?t.\r\nCó th? n?i l?ng tai nghe thêm kho?ng 2.7 cm ?? tho?i mái khi dùng.\r\nT??ng thích v?i h?u h?t thi?t b? có c?ng 3.5mm hi?n nay.\r\nCó nút nh?n cu?c g?i, phát/d?ng ch?i nh?c, t?ng/gi?m âm l??ng.\r\nCh?i nh?c, nghe nh?n cu?c g?i ti?n l?i b?ng các nút b?m trên tai nghe.', 42, b'0'),
(29, 'ai nghe EP Mozard DS510-WB Xanh\r\n\r\n', 105, 'tainghe3.jpg', 0.1, 2, 'EP Mozard', '22/11/2019', '2 tháng', 'Thiết kế mới mẻ, trẻ trung với màu xanh bắt mắt.\r\nCó đệm cao su cách âm tốt, êm ái khi đeo.\r\nTương thích nhiều thiết bị có cổng 3.5mm, dây dài 1.2 m.\r\n Kèm theo 2 cặp đệm tai nghe cho người dùng có thể thay đổi khi cần thiết.', 22, b'0'),
(30, 'Tai nghe chụp tai Gaming MozardX DS902 7.1 Đen', 990, 'tainghe4.jpg', 0.1, 2, 'mozard', '29/11/2019', '2 tháng', 'Tai nghe được thiết kế dành riêng cho các tín đồ chơi game.\r\nChụp tai và quai đeo có lớp đệm êm tạo cảm giác thoải mái khi sử dụng thời gian dài.\r\nTrang bị công nghệ âm thanh vòm 7.1 cho âm thanh sống động cho trãi nghiệm các game đỉnh cao.\r\nMàn loa âm thanh lớn 40mm tạo ra âm thanh hoàn chỉnh và chi tiết hơn.\r\nJack kết nối USB phù hợp cho laptop, máy tính để bàn (PC) ,...', 54, b'0'),
(31, 'Tủ lạnh Panasonic Inverter 290 lít NR-BV329QSVN', 1049, 'tulanh.jpg', 0.1, 7, 'PANASONIC', '28/11/2019', '24 Tháng', 'Bảo quản tươi ngon thịt cá với ngăn PrimeFresh thế hệ mới.\r\nTiết kiệm điện tối ưu với bộ 3 công nghệ Inverter, Multi Control và cảm biến thông minh Econavi.\r\nLoại bỏ 99,9% vi khuẩn và khử sạch mùi hôi với bộ lọc Ag Clean.\r\nCông nghệ Panorama tiên tiến cho hiệu quả làm lạnh đồng đều.', 24, b'0'),
(32, 'Tủ lạnh Samsung Inverter 647 lít RS62R5001B4/SV', 2290, 'tulanh2.jpg', 0.3, 7, 'SAMSUNG', '25/11/2019', '24 tháng', 'Thiết kế tối giản, hiện đại.\r\nTiết kiệm điện năng hơn khi có công nghệ Digital Inverter.\r\nLàm lạnh nhanh chóng, nhiệt độ đồng đều nhờ công nghệ làm lạnh vòm.\r\nTrả lại không gian trong lành cho thực phẩm với bộ lọc khử mùi than hoạt tính.\r\nKhai phóng không gian lưu trữ với công nghệ viền siêu mỏng SpaceMax.\r\nTự phát tín hiệu cảnh báo khi cửa tủ bị hở hoặc mở quá lâu.', 42, b'0'),
(33, 'Tu lanh Toshiba Inverter 233 lít GR-A28VS (DS)\r\n', 679, 'tulanh3.jpg', 0.4, 7, 'TOSHIBA', '29/11/2019', '24 Tháng', 'Thi?t k? nh? g?n, sang tr?ng.\r\nCông ngh? inverter hi?n ??i, v?n hành êm ái, ti?t ki?m ?i?n 45% so v?i t? l?nh th??ng.\r\nCông ngh? làm l?nh tu?n hoàn duy trì t?t nhi?t ?? trong t?.\r\nH? th?ng l?c Ag Bio kháng khu?n kh? mùi, b?o v? s?c kh?e cho gia ?ình b?n.\r\nNg?n tr? th?c ph?m t??i s?ng trong ngày riêng bi?t ti?n l?i, ng?n l?n mùi.\r\nNg?n rau qu? r?ng ch?a nhi?u rau c?, ??m b?o ?? t??i ngon.', 32, b'0'),
(34, 'Quạt đứng Midea FS40-19PRD\r\n', 139, 'quat.jpg', 0.1, 9, 'MIDEA', '22/11/2019', '12 tháng', '5 cánh quạt với đường kính 40 cm, công suất 35 W, làm mát hiệu quả.\r\nCó điều khiển từ xa, không cần lại gần quạt vẫn điều chỉnh chức năng chính xác.\r\nChủ động về thời gian sử dụng quạt với chế độ hẹn giờ tắt.\r\nTùy chỉnh linh hoạt với bảng điều khiển cảm ứng.\r\nSử dụng núm vặn thay đổi chiều cao quạt dễ dàng.\r\nThương hiệu Midea của Trung Quốc, sản xuất tại Trung Quốc.', 43, b'0'),
(35, 'Quạt treo Midea FW40-6H', 59, 'quat2.jpg', 0.4, 9, 'MIDEA', '21/11/2019', '6 tháng', 'Kiểu treo tường hiện đại, công suất 55 W, làm mát hiệu quả ở không gian rộng.\r\n3 tốc độ gió dễ tùy chỉnh với nút xoay và dây kéo.\r\nThương hiệu Midea và sản xuất tại Trung Quốc, tin cậy về chất lượng.', 32, b'0'),
(36, 'Quat hop Asia F16001 xám', 67, 'quat1.jpg', 0.3, 9, 'ASIA', '23/10/2019', '2 tháng', 'Qu?t h?p công su?t 45 W, 3 cánh qu?t s?i cánh l?n 40 cm làm mát t?t.\r\nCh? ?? xoay lên, xu?ng và ??o chi?u gia t?ng di?n tích làm mát.\r\nPhù h?p v?i nh?ng không gian nh? h?p nh? phòng ?n, bàn làm vi?c hay góc h?c t?p.\r\nNan l?ng b?o v? ?an khít an toàn cho bàn tay tr? nh?.\r\nTh??ng hi?u Asia - Vi?t Nam, s?n xu?t t?i Vi?t Nam uy tín, ch?t l??ng.', 21, b'0'),
(37, 'Quạt hộp Midea FB40-9H', 55, 'quat3.jpg', 0.3, 9, 'MIDEA', '23/9/2019', '2 tháng', 'Quạt có đường kính cánh quạt dài 40 cm, công suất tới 55 W.\r\nThiết lập 3 tốc độ gió dễ dàng với núm vặn.\r\nSản phẩm của thương hiệu Midea và sản xuất tại Trung Quốc.', 45, b'0');

-- --------------------------------------------------------

--
-- Table structure for table `loai`
--

DROP TABLE IF EXISTS `loai`;
CREATE TABLE IF NOT EXISTS `loai` (
  `MALOAI` int(11) NOT NULL AUTO_INCREMENT,
  `TENLOAI` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`MALOAI`)
) ENGINE=MyISAM AUTO_INCREMENT=13 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `loai`
--

INSERT INTO `loai` (`MALOAI`, `TENLOAI`) VALUES
(1, 'TiVi'),
(2, 'Tai nghe'),
(3, 'Điện thoại'),
(4, 'Máy tính'),
(7, 'Tủ lạnh'),
(9, 'Máy quạt'),
(12, '');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `USERNAME` varchar(100) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `PASSWORD` varchar(50) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `HOVATEN` text CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  `IMAGELINK` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `DIACHI` text CHARACTER SET utf8 COLLATE utf8_unicode_ci,
  `SDT` varchar(12) CHARACTER SET utf8 COLLATE utf8_unicode_ci DEFAULT NULL,
  `LOAI` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `Username` (`USERNAME`)
) ENGINE=MyISAM AUTO_INCREMENT=34 DEFAULT CHARSET=utf8 COLLATE=utf8_vietnamese_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`ID`, `USERNAME`, `PASSWORD`, `HOVATEN`, `IMAGELINK`, `DIACHI`, `SDT`, `LOAI`) VALUES
(31, 'admin', '1234', 'Thi', 'nam.jpg', 'Quy Nhon', '08976543', 0),
(33, 'user', '1234', 'Ngo Nam', 'nam.jpg', 'Quy Nhon-Binh Dinh', '92820191', 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
