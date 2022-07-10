-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Máy chủ: 127.0.0.1
-- Thời gian đã tạo: Th10 29, 2021 lúc 04:17 PM
-- Phiên bản máy phục vụ: 10.4.20-MariaDB
-- Phiên bản PHP: 8.0.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Cơ sở dữ liệu: `web_mysqli`
--

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id_admin` int(11) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `admin_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_admin`
--

INSERT INTO `tbl_admin` (`id_admin`, `username`, `password`, `admin_status`) VALUES
(1, 'admin', '123456', 1);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_dangky`
--

CREATE TABLE `tbl_dangky` (
  `id_dangky` int(11) NOT NULL,
  `tenkhachhang` varchar(200) NOT NULL,
  `email` varchar(100) NOT NULL,
  `diachi` varchar(200) NOT NULL,
  `matkhau` varchar(100) NOT NULL,
  `dienthoai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_dangky`
--

INSERT INTO `tbl_dangky` (`id_dangky`, `tenkhachhang`, `email`, `diachi`, `matkhau`, `dienthoai`) VALUES
(1, 'Quang Huy', 'huy@gmail.com', 'Hà Nội', '123', '0354522976');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_danhmuc`
--

CREATE TABLE `tbl_danhmuc` (
  `id_danhmuc` int(11) NOT NULL,
  `tendanhmuc` varchar(100) NOT NULL,
  `thutu` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_danhmuc`
--

INSERT INTO `tbl_danhmuc` (`id_danhmuc`, `tendanhmuc`, `thutu`) VALUES
(1, 'Thuốc xương khớp', 1),
(2, 'Thuốc tai mũi mắt', 3),
(3, 'Thuốc hạ sốt', 5),
(4, 'Thuốc da liễu', 4),
(7, 'Thuốc cảm lạnh', 5),
(8, 'Thuốc thần kinh', 6);

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_lienhe`
--

CREATE TABLE `tbl_lienhe` (
  `id` int(11) NOT NULL,
  `thongtinlienhe` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_lienhe`
--

INSERT INTO `tbl_lienhe` (`id`, `thongtinlienhe`) VALUES
(1, '<ol>\n	<li>\n	<h3>Môn Lập trình trên môi trường Web</h3>\n	</li>\n	<li>\n	<h3>Đề tài: Quản lý web bán thuốc</h3>\n	</li>\n	<li>\n	<h3>Thành viên: Nguyễn Quang Huy, Đinh Quang Minh, Nguyễn Thế Anh</h3>\n	</li>\n');

-- --------------------------------------------------------

--
-- Cấu trúc bảng cho bảng `tbl_sanpham`
--

CREATE TABLE `tbl_sanpham` (
  `id_sanpham` int(11) NOT NULL,
  `tensanpham` varchar(250) NOT NULL,
  `masp` varchar(100) NOT NULL,
  `giasp` varchar(50) NOT NULL,
  `soluong` int(11) NOT NULL,
  `hinhanh` varchar(50) NOT NULL,
  `tomtat` text NOT NULL,
  `noidung` text NOT NULL,
  `tinhtrang` int(11) NOT NULL,
  `id_danhmuc` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Đang đổ dữ liệu cho bảng `tbl_sanpham`
--

INSERT INTO `tbl_sanpham` (`id_sanpham`, `tensanpham`, `masp`, `giasp`, `soluong`, `hinhanh`, `tomtat`, `noidung`, `tinhtrang`, `id_danhmuc`) VALUES
(1, 'Rhinocort Aqua 64mcg', '001', '120000', 34, '', 'AstraZeneca A.B/Thuỵ Điển', 'Phòng ngừa & điều trị viêm mũi kể cả viêm mũi dị ứng & viêm mũi vận mạch,hen phế quản. ', 1, 2),
(2, 'Nasonex 0.05%', '002', '199999', 65, '', 'Bayer HealthCare Pharmaceuticals - Cộng hoà liên bang Đức', 'Thuốc xịt điều trị viêm mũi dị ứng cho người lớn & trẻ em trên 2 tuổi.', 1, 2),
(3, 'Thuốc xịt mũi Thái Dương', '003', '63000', 23, '', 'Sao Thái Dương - Việt Nam', 'Điều trị các triệu chứng ngứa mũi, khô mũi, sổ mũi, cảm giác khó chịu ở mũI.', 1, 2),
(4, 'Benita 64mcg', '004', '90000', 12, '', 'Merap - Việt Nam', 'Viêm mũi dị ứng quanh năm, viêm mũi dị ứng theo mùa, viêm mũi vận mạch.', 1, 2),
(5, 'V.Rohto Cool', '005', '49000', 76, '', 'Rohto-Mentholatum - Nhật Bản', 'Điều trị mỏi mắt, xung huyết kết mạc, ngứa mắt, phòng ngừa các bệnh về mắt.', 1, 2),
(6, 'Vrohto Antibacterial (13ml)', '006', '47000', 34, '', 'Rohto-Mentholatum - Nhật Bản', 'Điều trị lẹo mắt, viêm kết mạc, viêm mí mắt và ngứa mắt.', 1, 2),
(7, 'Otrivin 0.1% Nasal Spray (10ml)', '007', '48000', 31, '', 'Novartis - Thuỵ Sĩ', 'Hỗ trợ điều trị sung huyết mũi họng trong viêm tai giữa.', 1, 2),
(8, 'Thuốc súc họng và súc miệng Betadine', '008', '62000', 87, '', 'Mundipharma - Mỹ', 'Điều trị viêm miệng, viêm lợi, loét ap-tơ, viêm họng, viêm a-mi-đan, nhiễm nấm Candida.', 1, 2),
(9, 'Xịt mũi trị viêm xoang Xoang Spray', '009', '55000', 32, '', 'Nature Việt Nam ', 'Điều trị viêm xoang cấp và mạn tính, viêm mũi dị ứng, viêm mũi mạn tính. Điều trị cúm.', 1, 2),
(10, 'Sanlein Dry Eye 0.1%', '010', '59000', 21, '', 'Santen/Nhật Bản', 'Rối loạn biểu mô giác-kết mạc do các bệnh nội tại như hội chứng Sjogren, hội chứng khô mắt.', 1, 2),
(11, 'Agidecotyl 250mg ', '011', '40000', 76, '', 'Agipham', 'Bệnh lý thoái hóa cột sống & các rối loạn tư thế cột sống: vẹo cổ, đau thắt lưng.', 1, 1),
(12, 'Agietoxib 90mg', '012', '98000', 53, '', 'Agipham', 'Thuốc được chỉ định cho người lớn và trẻ em từ 16 tuổi trở lên để điều trị triệu chứng các bệnh viêm xương khớp, viêm khớp dạng thấp.', 1, 1),
(13, 'Celebrex', '013', '360000', 64, '', 'Pfizer - USA', 'Điều trị các triệu chứng thoái hóa khớp và viêm khớp dạng thấp. Kiểm soát đau cấp tính, điều trị thống kinh nguyên phát.', 1, 1),
(14, 'Rasanvisc', '014', '760000', 57, '', 'IDT Biologika GmbH - Đức', 'Điều trị các cơn đau do thoái hoá khớp gối ', 1, 1),
(15, 'Feburic', '015', '860000', 35, '', 'Astellas - Pháp', 'Dùng trong điều trị tăng axit uric máu mãn tính ở người bị gout', 1, 1),
(16, 'Arcoxia 60mg', '016', '450000', 78, '', 'Frosst - Tây Ban Nha', 'Điều trị các triệu chứng cấp, mãn tính các dấu hiệu và triệu chứng thoái hóa khớp.', 1, 1),
(17, 'Epicta 90mg', '017', '285000', 32, '', 'The Acme Laboratories - Bangladesh', 'Điều trị cấp tính và mãn tính các dấu hiệu và triệu chứng bệnh viêm xương khớp.', 1, 1),
(18, 'Waisan 50mg (10 vỉ x 10 viên/hộp)', '018', '145000', 98, '', 'Bidiphar ', 'Cải thiện triệu chứng tăng trương lực cơ trong các bệnh lý sau: Hội chứng cổ - vai - gáy, viêm quanh khớp vai và đau thắt lưng.', 1, 1),
(19, 'Savi Osmax 70mg', '019', '430000', 43, '', 'SaVi - Viêt nam', 'Điều trị loãng xương ở phụ nữ sau mãn kinh Điều trị để tăng khối lượng xương ở nam giới bị loãng xương.', 1, 1),
(20, 'Idéos 500mg/400IU', '020', '266000', 16, '', 'Innothera Chouzy - Pháp', 'Phòng & điều trị loãng xương ở phụ nữ, người có nguy cơ cao. Ðiều trị bổ sung Ca cho bệnh nhân chạy thận nhân tạo', 1, 1),
(21, 'Biafine', '021', '96000', 87, '', 'Johnson & Johnson', 'Điều trị phỏng, vết thương ngoài da ', 1, 4),
(22, 'Cồn BSI', '022', '6000', 32, '', 'Dược VTYT', 'Cồn BSI được dùng để điều trị hắc lào, nấm da.', 1, 4),
(23, 'Contractubex Gel', '023', '15900', 12, '', 'Merz Pharma GmbH & Co. KGaA', 'Điều trị sẹo theo dạng gel.', 1, 4),
(24, 'Selsun 1.8%', '024', '89000', 76, '', 'Nhật Bản', 'Giải pháp nhanh chóng và hoàn toàn hiệu quả giải quyết tình trạng gàu bạn đang gặp phải.', 1, 4),
(25, 'Methylen 1% (20ml)', '025', '4000', 98, '', 'Dược VTYT', 'Xanh Methylen 1% điều trị Nhiễm virus ngoài da như Herpes simplex, điều trị chốc đầu, lở loét, viêm da mủ.', 1, 4),
(26, 'Natri Borat Denicol', '026', '15000', 53, '', 'Sagopha', 'Dùng để trị đẹn (lưỡi trắng, tưa lưỡi), lở miệng, sưng lợi (sưng nướu).', 1, 4),
(27, 'Betadine Antiseptic 10%', '027', '34000', 23, '', 'Mundipharma', 'Dung dịch sát khuẩn Betadine Antiseptic 10% giúp diệt vi khuẩn, đơn bào, nấm men.', 1, 4),
(28, 'LeoPovidone 10%', '028', '16000', 94, '', 'Leopard Medical Brand', 'Dung dịch sát khuẩn LeoPovidone 10% điều trị các vết thương và ngăn ngừa nhiễm trùng đối với các vi khuẩn nhạy cảm.', 1, 4),
(29, 'Povidine Povidon Iod 10%', '029', '65000', 37, '', 'Pharmedic', 'Dung dịch sát khuẩn Povidine Povidon Iod 10% giúp sát trùng da trước khi phẫu thuật và khử trùng dụng cụ trước khi tiệt trùng.', 1, 4),
(30, 'Remos Anti-Itch', '030', '34000', 73, '', 'Remos', 'Gel giảm các triệu chứng ngứa như vết côn trùng cắn, viêm da do tiếp úc, viêm da dị ứng, mề đay, nổi ban, rôm sảy.', 1, 4),
(31, 'LeoPovidone', '031', '62000', 65, '', 'Leopard Medical Brand', 'Gel sát khuẩn LeoPovidone dùng để điều trị vết thương như vết bỏng, ngăn ngừa nhiễm nấm, nhiễm virus.', 1, 4),
(32, 'Acyclovir STELLA Cream', '032', '16000', 86, '', 'STADA ', 'Kem bôi da Acyclovir Stada dùng để điều trị ngăn ngừa tái phát Virut Herpes Simplex, nhiễm Herpes sinh dục, bệnh Zona và thủy đậu.', 1, 4),
(33, 'Leivis (Tuýp 10g)', '033', '12300', 53, '', 'Traphaco', 'Kem bôi da Leivis điều trị các nhiễm vi nấm ngoài da: Nấm thân, nấm bẹn, nấm bàn tay và nấm bàn chân. Điều trị viêm da tiết bã.', 1, 4),
(34, 'Decocort Cream', '034', '38000', 45, '', 'HOE Pharmaceuticals', 'Giúp điều trị các bệnh nhiễm vi nấm trên da kèm viêm, chàm phát ban trên da do nhiễm vi nấm hoặc vi khuẩn.', 1, 4),
(35, 'Agiparofen', '035', '50000', 83, '', 'Việt Nam', 'Agiparofen là thuốc giảm đau nhẹ đến vừa, điều trị các triệu chứng cảm lạnh và cảm cúm, đau họng và sốt.', 1, 3),
(36, 'Becacold-E', '036', '90000', 34, '', 'Việt Nam', 'Điều trị các triệu chứng cảm thông thường, viêm mũi dị ứng, viêm mũi vận mạch, viêm xoang do thay đổi thời tiết', 1, 3),
(37, 'Biragan', '037', '38000', 13, '1638198946_Biragan.jpg', '<p>Bidiphar&nbsp;</p>\r\n', '<p>Biragan 500mg điều trị c&aacute;c chứng đau v&agrave; sốt&nbsp;từ nhẹ đến vừa.Thuốc c&oacute; hiệu quả nhất l&agrave; l&agrave;m giảm đau cường độ thấp c&oacute; nguồn gốc kh&ocirc;ng phải nội tạng.</p>\r\n', 1, 3),
(38, 'Tydol Sachet Powder', '038', '17000', 46, '1638198891_Tydol Sachet Powder.jpg', '<p>OPV</p>\r\n', '<p>Bột uống gi&uacute;p giảm đau, hạ sốt Tydol Sachet Powder 80mg điều trị hiệu quả c&aacute;c cơn đau do: Cảm lạnh, cảm c&uacute;m, nhức đầu, đau họng, mọc răng, ch&iacute;ch ngừa, cắt Amiđan v&agrave; hạ sốt.</p>\r\n', 1, 3),
(39, 'Salonsip Gel-Patch', '039', '165000', 37, '1638198869_Salonsip Gel-Patch.jfif', '<p>Hisamitsu&nbsp;Pharmaceutical&nbsp;</p>\r\n', '<p>Cao d&aacute;n - gel Salonsip gi&uacute;p giảm đau, kh&aacute;ng vi&ecirc;m trong c&aacute;c cơn đau li&ecirc;n quan đến đau vai, đau cơ, đau khớp, bầm t&iacute;m.</p>\r\n', 1, 3),
(40, 'Salonpas Pain Relief Patch', '040', '25000', 62, '1638198849_Salonpas Pain Relief Patch.jpg', '<p>Hisamitsu&nbsp;Pharmaceutical&nbsp;</p>\r\n', '<p>Cao d&aacute;n Salonpas gi&uacute;p giảm đau, kh&aacute;ng vi&ecirc;m trong c&aacute;c cơn đau li&ecirc;n quan đến đau vai, đau cơ, đau khớp, bầm t&iacute;m, bong g&acirc;n, căng cơ.</p>\r\n', 1, 3),
(41, 'Tiger Balm Plaster-RD', '041', '48000', 37, '1638197191_anh1.jfif', '<p>HAW PAR HEALTHCARE LIMITED</p>\r\n', '<p>Cao d&aacute;n Tiger Balm Plaster-RD gi&uacute;p giảm c&aacute;c triệu chứng mỏi cơ, đau v&agrave; nhức cơ, cứng cổ v&agrave; vai, vết đụng đập, bong g&acirc;n v&agrave; đau lưng.</p>\r\n', 1, 3);

--
-- Chỉ mục cho các bảng đã đổ
--

--
-- Chỉ mục cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id_admin`);

--
-- Chỉ mục cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  ADD PRIMARY KEY (`id_dangky`);

--
-- Chỉ mục cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  ADD PRIMARY KEY (`id_danhmuc`);

--
-- Chỉ mục cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  ADD PRIMARY KEY (`id`);

--
-- Chỉ mục cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  ADD PRIMARY KEY (`id_sanpham`);

--
-- AUTO_INCREMENT cho các bảng đã đổ
--

--
-- AUTO_INCREMENT cho bảng `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id_admin` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT cho bảng `tbl_dangky`
--
ALTER TABLE `tbl_dangky`
  MODIFY `id_dangky` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT cho bảng `tbl_danhmuc`
--
ALTER TABLE `tbl_danhmuc`
  MODIFY `id_danhmuc` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT cho bảng `tbl_lienhe`
--
ALTER TABLE `tbl_lienhe`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT cho bảng `tbl_sanpham`
--
ALTER TABLE `tbl_sanpham`
  MODIFY `id_sanpham` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
