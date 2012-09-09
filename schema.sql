--
-- Table structure for table `administratives`
--

CREATE TABLE IF NOT EXISTS `administratives` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(1000) DEFAULT NULL,
  `governorate_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_central_stations_governorates` (`governorate_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=353 ;

--
-- Dumping data for table `administratives`
--

INSERT INTO `administratives` (`id`, `name`, `governorate_id`) VALUES
(1, 'اول اسوان', 1),
(2, 'ثان اسوان', 1),
(3, 'مركز ابو سمبل', 1),
(4, 'مركز ادفو', 1),
(5, 'مركز اسوان', 1),
(6, 'مركز دراو', 1),
(7, 'مركز كوم امبو', 1),
(8, 'مركز نصر النوبة', 1),
(9, 'ابوتيج', 2),
(10, 'اسيوط اول', 2),
(11, 'اسيوط ثان', 2),
(12, 'مركز ابنوب', 2),
(13, 'مركز ابوتيج', 2),
(14, 'مركز اسيوط', 2),
(15, 'مركز البدارى', 2),
(16, 'مركز الغنايم', 2),
(17, 'مركز الفتح', 2),
(18, 'مركز القوصيه', 2),
(19, 'مركز ديروط', 2),
(20, 'مركز ساحل سليم', 2),
(21, 'مركز صدفا', 2),
(22, 'مركز منفلوط', 2),
(23, 'الجمرك', 3),
(24, 'الدخيله', 3),
(25, 'العطارين', 3),
(26, 'اللبان', 3),
(27, 'المنشية', 3),
(28, 'اول الرمل', 3),
(29, 'اول العمريه', 3),
(30, 'اول المنتزه', 3),
(31, 'باب شرق', 3),
(32, 'برج العرب', 3),
(33, 'ثان الرمل', 3),
(34, 'ثان العمريه', 3),
(35, 'ثان المنتزه', 3),
(36, 'سيدى جابر', 3),
(37, 'كرموز', 3),
(38, 'محرم بيك', 3),
(39, 'مينا البصر', 3),
(40, 'ابو صوير', 4),
(41, 'الاسماعيليه اول', 4),
(42, 'الاسماعيليه ثالث', 4),
(43, 'الاسماعيليه ثان', 4),
(44, 'القنطره شرق', 4),
(45, 'مركز الاسماعيليه', 4),
(46, 'مركز التل الكبير', 4),
(47, 'مركز القنطره غرب', 4),
(48, 'مركز فايد', 4),
(49, 'الاقصر', 5),
(50, 'طيبة', 5),
(51, 'مركز ارمنت', 5),
(52, 'مركز اسنا', 5),
(53, 'مركز الاقصر', 5),
(54, 'مركز القرنه', 5),
(55, 'القصير', 6),
(56, 'اول الغردقه', 6),
(57, 'ثان الغرقة', 6),
(58, 'راس غارب', 6),
(59, 'سفاجا', 6),
(60, 'شلاتين', 6),
(61, 'مرسى علم', 6),
(62, 'دمنهور', 7),
(63, 'غرب النوبارية', 7),
(64, 'كفر الدوار', 7),
(65, 'مركز كوم ابو المطامير', 7),
(66, 'مركز ابوحمص', 7),
(67, 'مركز ادكو', 7),
(68, 'مركز الدلنجات', 7),
(69, 'مركز الرحمانية', 7),
(70, 'مركز المحموديه', 7),
(71, 'مركز بدر', 7),
(72, 'مركز حوش عيسى', 7),
(73, 'مركز دمنهور', 7),
(74, 'مركز رشيد', 7),
(75, 'مركز شبراخيت', 7),
(76, 'مركز كفر الدوار', 7),
(77, 'مركز كوم حماده', 7),
(78, 'مركز واداى النطرون', 7),
(79, 'مركز اتياى البارود', 7),
(80, '6 اكتوبر اول', 8),
(81, '6اكتوبر ثان', 8),
(82, 'الجيزه', 8),
(83, 'الحوامديه', 8),
(84, 'الدقى', 8),
(85, 'الشيخ زايد', 8),
(86, 'الطالبيه', 8),
(87, 'العجوزه', 8),
(88, 'العمرانيه', 8),
(89, 'الهرم', 8),
(90, 'الواحات البحريه', 8),
(91, 'الوراق', 8),
(92, 'امبابه', 8),
(93, 'بولاق الدكرور', 8),
(94, 'مركز اطفيح', 8),
(95, 'مركز البدرشين', 8),
(96, 'مركز الصف', 8),
(97, 'مركز العياط', 8),
(98, 'مركز اوسيم', 8),
(99, 'مركز كرداسه', 8),
(100, 'مركزابوالنمرس', 8),
(101, 'منشاه القناطر', 8),
(102, 'الكردى', 9),
(103, 'المنصوره اول', 9),
(104, 'المنصوره ثان', 9),
(105, 'جمصه', 9),
(106, 'مركز اجا', 9),
(107, 'مركز الجماليه', 9),
(108, 'مركز السنبلاوين', 9),
(109, 'مركز المطريه', 9),
(110, 'مركز المنزله', 9),
(111, 'مركز المنصوره', 9),
(112, 'مركز بلقاس', 9),
(113, 'مركز بنى عبيد', 9),
(114, 'مركز تمى الامديد', 9),
(115, 'مركز دكرنس', 9),
(116, 'مركز شربين', 9),
(117, 'مركز طلخا', 9),
(118, 'مركز محله دمنه', 9),
(119, 'مركز منيه النصر', 9),
(120, 'مركز ميت سلسيل', 9),
(121, 'مركز ميت غمر', 9),
(122, 'مركز نبروه', 9),
(123, 'ميت غمر', 9),
(124, 'االربعين', 10),
(125, 'الجناين', 10),
(126, 'السويس', 10),
(127, 'عتاقه', 10),
(128, 'فيصل', 10),
(129, 'الزقازيق اول', 11),
(130, 'الزقازيق ثان', 11),
(131, 'الصالحيه الجديده', 11),
(132, 'العاشر من رمضان', 11),
(133, 'القرين', 11),
(134, 'القنايات', 11),
(135, 'ثان العاشر من رمضان', 11),
(136, 'فاقوس', 11),
(137, 'مركز ابوحماد', 11),
(138, 'مركز ابوكبير', 11),
(139, 'مركز االبراهيميه', 11),
(140, 'مركز الحسينيه', 11),
(141, 'مركز الزقازيق', 11),
(142, 'مركز اوالد صقر', 11),
(143, 'مركز اولاد صقر', 11),
(144, 'مركز بلبيس', 11),
(145, 'مركز ديرب نجم', 11),
(146, 'مركز صان الحجر', 11),
(147, 'مركز فاقوس', 11),
(148, 'مركز كفر صقر', 11),
(149, 'مركز مشتول السوق', 11),
(150, 'مركز منشاه ابوعمر', 11),
(151, 'مركز منيا القمح', 11),
(152, 'مركز ههيا', 11),
(153, 'المحله اول', 12),
(154, 'المحله ثان', 12),
(155, 'طنطا اول', 12),
(156, 'طنطا ثان', 12),
(157, 'مركز السنطه', 12),
(158, 'مركز بسيون', 12),
(159, 'مركز زفتى', 12),
(160, 'مركز سمنود', 12),
(161, 'مركز طنطا', 12),
(162, 'مركز قطور', 12),
(163, 'مركز كفر الزيات', 12),
(164, 'مركزالمحله الكبرى', 12),
(165, 'الفيوم', 13),
(166, 'مركز ابشواى', 13),
(167, 'مركز اطسا', 13),
(168, 'مركز الفيوم', 13),
(169, 'مركز سنورس', 13),
(170, 'مركز طاميه', 13),
(171, 'مركز يوسف الصديق', 13),
(172, 'الازبكيه', 14),
(173, 'الاميريه', 14),
(174, 'البساتين', 14),
(175, 'التبين', 14),
(176, 'الجماليه', 14),
(177, 'الخليفه', 14),
(178, 'الدرب االحمر', 14),
(179, 'الزاويه الحمراء', 14),
(180, 'الزيتون', 14),
(181, 'الساحل', 14),
(182, 'السيده زينب', 14),
(183, 'الشرابيه', 14),
(184, 'الشروق', 14),
(185, 'الظاهر', 14),
(186, 'المرج', 14),
(187, 'المطريه', 14),
(188, 'المعادى', 14),
(189, 'المقطم', 14),
(190, 'الموسكى', 14),
(191, 'النزهه', 14),
(192, 'الوايلى', 14),
(193, 'اول السالم', 14),
(194, 'اول القاهره الجديده', 14),
(195, 'باب الشعريه', 14),
(196, 'بوالق', 14),
(197, 'ثالث القاهره الجديد', 14),
(198, 'ثان السالم', 14),
(199, 'ثان القاهره الجديده', 14),
(200, 'حدائق القبه', 14),
(201, 'حلوان', 14),
(202, 'خمسه عشر مايو', 14),
(203, 'دار السالم', 14),
(204, 'روض الفرج', 14),
(205, 'شبرا', 14),
(206, 'عابدين', 14),
(207, 'عين شمس', 14),
(208, 'قصر النيل', 14),
(209, 'مدينه بدر', 14),
(210, 'مدينه نصر ثان', 14),
(211, 'مدينه نصراول', 14),
(212, 'مصر الجديده', 14),
(213, 'مصر القديمه', 14),
(214, 'منشيه ناصر', 14),
(215, 'الخانكه', 15),
(216, 'الخصوص', 15),
(217, 'العبور', 15),
(218, 'بنها', 15),
(219, 'شبرا الخيمه اول', 15),
(220, 'شبرا الخيمه ثان', 15),
(221, 'قليوب', 15),
(222, 'قها', 15),
(223, 'مركز الخانكه', 15),
(224, 'مركز القناطر الخيري', 15),
(225, 'مركز بنها', 15),
(226, 'مركز شبين القناطر', 15),
(227, 'مركز طوخ', 15),
(228, 'مركز قليوب', 15),
(229, 'مركز كفر شكر', 15),
(230, 'سرس الليان', 16),
(231, 'شبين الكوم', 16),
(232, 'مركز اشمون', 16),
(233, 'مركز الباجور', 16),
(234, 'مركز السادات', 16),
(235, 'مركز الشهداء', 16),
(236, 'مركز بركه السبع', 16),
(237, 'مركز تلا', 16),
(238, 'مركز شبين الكوم', 16),
(239, 'مركز قويسنا', 16),
(240, 'مركز منوف', 16),
(241, 'منوف', 16),
(242, 'المنيا', 17),
(243, 'المنيا الجديده', 17),
(244, 'مركز ابوقرقاص', 17),
(245, 'مركز العدوه', 17),
(246, 'مركز المنيا', 17),
(247, 'مركز بنى مزار', 17),
(248, 'مركز ديرمواس', 17),
(249, 'مركز سمالوط', 17),
(250, 'مركز مطاى', 17),
(251, 'مركز مغاغه', 17),
(252, 'مركز ملوى', 17),
(253, 'ملوى', 17),
(254, 'الواحات الخارجه', 18),
(255, 'م الواحات الداخله', 18),
(256, 'مركز الفرافره', 18),
(257, 'مركز باريس', 18),
(258, 'مركز بلاط', 18),
(259, 'بنى سويف', 19),
(260, 'بنى سويف الجديده', 19),
(261, 'مركز الفشن', 19),
(262, 'مركز الواسطى', 19),
(263, 'مركز اهناسيا', 19),
(264, 'مركز ببا', 19),
(265, 'مركز بنى سويف', 19),
(266, 'مركز سمسطا', 19),
(267, 'مركز ناصر', 19),
(268, 'الجنوب', 20),
(269, 'الزهور', 20),
(270, 'الشرق', 20),
(271, 'الضواحى', 20),
(272, 'العرب', 20),
(273, 'المناخ', 20),
(274, 'بورفؤاد', 20),
(275, 'ثان بورفؤاد', 20),
(276, 'ابورديس', 21),
(277, 'دهب', 21),
(278, 'راس  سدر', 21),
(279, 'سانت كاترين', 21),
(280, 'شرم الشيخ', 21),
(281, 'طابا', 21),
(282, 'طور سيناء', 21),
(283, 'نويبع', 21),
(284, 'اول دمياط', 22),
(285, 'ثان دمياط', 22),
(286, 'دمياط الجديده', 22),
(287, 'راس البر', 22),
(288, 'مركز الزرقا', 22),
(289, 'مركز دمياط', 22),
(290, 'مركز فارسكور', 22),
(291, 'مركز كفر البطيخ', 22),
(292, 'مركز كفر سعد', 22),
(293, 'الكوثر', 23),
(294, 'جرجا', 23),
(295, 'سوهاج اول', 23),
(296, 'سوهاج ثان', 23),
(297, 'طهطا', 23),
(298, 'مركز اخميم', 23),
(299, 'مركز البلينا', 23),
(300, 'مركز العسيرات', 23),
(301, 'مركز المراغه', 23),
(302, 'مركز المنشاه', 23),
(303, 'مركز جرجا', 23),
(304, 'مركز جهينه', 23),
(305, 'مركز دار السالم', 23),
(306, 'مركز ساقلته', 23),
(307, 'مركز سوهاج', 23),
(308, 'مركز طما', 23),
(309, 'مركز طهطا', 23),
(310, 'الحسنه', 24),
(311, 'الشيخ زويد', 24),
(312, 'العريش اول', 24),
(313, 'العريش ثالث', 24),
(314, 'العريش ثان', 24),
(315, 'العريش رابع', 24),
(316, 'القسيمه', 24),
(317, 'بئر العبد', 24),
(318, 'رفح', 24),
(319, 'رمانه', 24),
(320, 'نخل', 24),
(321, 'قنا', 25),
(322, 'مركز ابوتشت', 25),
(323, 'مركز الوقف', 25),
(324, 'مركز دشنا', 25),
(325, 'مركز فرشوط', 25),
(326, 'مركز قفط', 25),
(327, 'مركز قنا', 25),
(328, 'مركز قوص', 25),
(329, 'مركز نجع حمادى', 25),
(330, 'مركز نقاده', 25),
(331, 'اول كفر الشيخ', 26),
(332, 'بيلا', 26),
(333, 'ثان كفر الشيخ', 26),
(334, 'دسوق', 26),
(335, 'مركز البرلس', 26),
(336, 'مركز الحامول', 26),
(337, 'مركز الرياض', 26),
(338, 'مركز بيلا', 26),
(339, 'مركز دسوق', 26),
(340, 'مركز سيدى سالم', 26),
(341, 'مركز فوه', 26),
(342, 'مركز قلين', 26),
(343, 'مركز كفر الشيخ', 26),
(344, 'مركز مطوبس', 26),
(345, 'الحمام', 27),
(346, 'السلوم', 27),
(347, 'الضبعه', 27),
(348, 'العلمين', 27),
(349, 'النجيله', 27),
(350, 'سيدى برانى', 27),
(351, 'سيوه', 27),
(352, 'مرسى مطروح', 27);

-- --------------------------------------------------------

--
-- Table structure for table `governorates`
--

CREATE TABLE IF NOT EXISTS `governorates` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(45) DEFAULT NULL,
  `public_id` varchar(20) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=28 ;

--
-- Dumping data for table `governorates`
--

INSERT INTO `governorates` (`id`, `name`, `public_id`) VALUES
(1, 'محافظة اسوان', ''),
(2, 'محافظة اسيوط', ''),
(3, 'محافظة الاسكندرية', ''),
(4, 'محافظة الاسماعلية', ''),
(5, 'محافظة الاقصر ', ''),
(6, 'محافظة البحر الاحمر', ''),
(7, 'محافظة البحيرة', ''),
(8, 'محافظة الجيزة', ''),
(9, 'محافظة الدقهلية', ''),
(10, 'محافظة السويس', ''),
(11, 'محافظة الشرقية', ''),
(12, 'محافظة الغربية', ''),
(13, 'محافظة الفيوم', ''),
(14, 'محافظة القاهرة', ''),
(15, 'محافظة القليوبية', ''),
(16, 'محافظة المنوفية', ''),
(17, 'محافظة المنيا', ''),
(18, 'محافظة الوادى الجديد', ''),
(19, 'محافظة بنى سويف', ''),
(20, 'محافظة بورسعيد', ''),
(21, 'محافظة جنوب سيناء', ''),
(22, 'محافظة دمياط', ''),
(23, 'محافظة سوهاج', ''),
(24, 'محافظة شمال سيناء', ''),
(25, 'محافظة قنا', ''),
(26, 'محافظة كفر الشيخ', ''),
(27, 'محافظة مرسى مطروح', '');

--
-- Constraints for dumped tables
--

--
-- Constraints for table `administratives`
--
ALTER TABLE `administratives`
  ADD CONSTRAINT `fk_administratives_governorates` FOREIGN KEY (`governorate_id`) REFERENCES `governorates` (`id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
