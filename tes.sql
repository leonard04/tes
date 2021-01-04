
INSERT INTO `new_category` (`id`, `id_parent`, `name`, `created_at`, `updated_at`, `deleted_at`, `created_by`, `updated_by`, `deleted_by`, `code`) VALUES
	(1, 0, 'Electronic', '2021-01-04 02:11:56', '2021-01-04 02:11:56', NULL, NULL, NULL, NULL, 'ELC'),
	(2, 1, 'Computers', '2021-01-04 02:12:37', '2021-01-04 02:12:37', NULL, NULL, NULL, NULL, 'COM'),
	(3, 0, 'Automotive', '2021-01-04 02:13:09', '2021-01-04 02:13:09', NULL, NULL, NULL, NULL, 'MOT'),
	(4, 0, 'Industrial and Scientific', '2021-01-04 02:13:59', '2021-01-04 02:13:59', NULL, NULL, NULL, NULL, 'INS'),
	(5, 0, 'Tools and General Affair', '2021-01-04 02:14:27', '2021-01-04 02:14:27', NULL, NULL, NULL, NULL, 'TGA'),
	(6, 4, 'Machinery, Industrail Parts & Tools', '2021-01-04 03:33:01', '2021-01-04 03:33:01', NULL, NULL, NULL, NULL, 'MIT'),
	(7, 4, 'Metallurgy, Chemicals, Rubber & Plastics', '2021-01-04 03:45:24', '2021-01-04 03:45:24', NULL, NULL, NULL, NULL, 'MCR');


INSERT INTO `asset_items_classification` (`id`, `id_category`, `classification_name`, `classification_code`, `created_by`, `updated_by`, `deleted_by`, `created_at`, `updated_at`, `deleted_at`, `company_id`) VALUES
	(1, 1, 'Accessories & Supplies', 'ACS', 'cypher', NULL, NULL, '2021-01-04 02:15:17', '2021-01-04 02:15:17', NULL, 1),
	(2, 1, 'Camera & Photo', 'CAM', 'cypher', NULL, NULL, '2021-01-04 02:15:38', '2021-01-04 02:15:38', NULL, 1),
	(3, 1, 'Car & Vehicle Electronic', 'CVE', 'cypher', NULL, NULL, '2021-01-04 02:16:18', '2021-01-04 02:16:18', NULL, 1),
	(4, 1, 'Cell Phones & Accessories', 'CPA', 'cypher', NULL, NULL, '2021-01-04 02:16:47', '2021-01-04 02:16:47', NULL, 1),
	(5, 1, 'Computers & Accessories', 'CNA', 'cypher', NULL, NULL, '2021-01-04 02:17:18', '2021-01-04 02:17:18', NULL, 1),
	(6, 1, 'GPS & Navigation', 'GPS', 'cypher', NULL, NULL, '2021-01-04 02:17:31', '2021-01-04 02:17:31', NULL, 1),
	(7, 1, 'Earphones & Headphones', 'PHO', 'cypher', 'cypher', NULL, '2021-01-04 02:17:49', '2021-01-04 03:29:41', NULL, 1),
	(8, 1, 'Home Audio', 'AUD', 'cypher', NULL, NULL, '2021-01-04 02:18:04', '2021-01-04 02:18:04', NULL, 1),
	(9, 1, 'Office Electronic', 'OFE', 'cypher', NULL, NULL, '2021-01-04 02:18:23', '2021-01-04 02:18:23', NULL, 1),
	(10, 1, 'Portable Audio & Video', 'POR', 'cypher', NULL, NULL, '2021-01-04 02:18:43', '2021-01-04 02:18:43', NULL, 1),
	(11, 1, 'Security & Surveillance', 'SEC', 'cypher', NULL, NULL, '2021-01-04 02:19:14', '2021-01-04 02:19:14', NULL, 1),
	(12, 1, 'Service Plans', 'SER', 'cypher', NULL, NULL, '2021-01-04 02:19:36', '2021-01-04 02:19:36', NULL, 1),
	(13, 1, 'Television & Video', 'TVI', 'cypher', NULL, NULL, '2021-01-04 02:19:51', '2021-01-04 02:19:51', NULL, 1),
	(14, 1, 'Video Game Console & Accessories', 'VGC', 'cypher', NULL, NULL, '2021-01-04 02:20:14', '2021-01-04 02:20:14', NULL, 1),
	(15, 1, 'Video Projectors', 'VPR', 'cypher', NULL, NULL, '2021-01-04 02:20:33', '2021-01-04 02:20:33', NULL, 1),
	(16, 1, 'Wearable Technology', 'WEA', 'cypher', NULL, NULL, '2021-01-04 02:20:59', '2021-01-04 02:20:59', NULL, 1),
	(17, 1, 'eBook Readers & Accessories', 'EBO', 'cypher', NULL, NULL, '2021-01-04 02:21:24', '2021-01-04 02:21:24', NULL, 1),
	(18, 2, 'Computer Accessories & Peripherals', 'CAP', 'cypher', NULL, NULL, '2021-01-04 02:27:20', '2021-01-04 02:27:20', NULL, 1),
	(19, 2, 'Computer Components', 'CCP', 'cypher', NULL, NULL, '2021-01-04 02:27:39', '2021-01-04 02:27:39', NULL, 1),
	(20, 2, 'Computers & Tablets', 'COT', 'cypher', NULL, NULL, '2021-01-04 02:28:00', '2021-01-04 02:28:00', NULL, 1),
	(21, 2, 'Data Storage', 'DST', 'cypher', NULL, NULL, '2021-01-04 02:29:19', '2021-01-04 02:29:19', NULL, 1),
	(22, 2, 'External Components', 'EXT', 'cypher', NULL, NULL, '2021-01-04 02:29:32', '2021-01-04 02:29:32', NULL, 1),
	(23, 2, 'Laptop Accessories', 'LAC', 'cypher', NULL, NULL, '2021-01-04 02:29:47', '2021-01-04 02:29:47', NULL, 1),
	(24, 2, 'Monitors', 'MON', 'cypher', NULL, NULL, '2021-01-04 02:29:57', '2021-01-04 02:29:57', NULL, 1),
	(25, 2, 'Networking Products', 'NET', 'cypher', NULL, NULL, '2021-01-04 02:30:10', '2021-01-04 02:30:10', NULL, 1),
	(26, 2, 'Power Strips & Surge Protector', 'PSP', 'cypher', NULL, NULL, '2021-01-04 02:30:39', '2021-01-04 02:30:39', NULL, 1),
	(27, 2, 'Printers', 'PRI', 'cypher', NULL, NULL, '2021-01-04 02:30:49', '2021-01-04 02:30:49', NULL, 1),
	(28, 2, 'Scanners', 'SCA', 'cypher', NULL, NULL, '2021-01-04 02:30:59', '2021-01-04 02:30:59', NULL, 1),
	(29, 2, 'Servers', 'SER', 'cypher', NULL, NULL, '2021-01-04 02:31:12', '2021-01-04 02:31:12', NULL, 1),
	(30, 2, 'Tablet Accessories', 'TAC', 'cypher', NULL, NULL, '2021-01-04 02:31:27', '2021-01-04 02:31:27', NULL, 1),
	(31, 2, 'Tablet Replacement Parts', 'TRP', 'cypher', NULL, NULL, '2021-01-04 02:31:46', '2021-01-04 02:31:46', NULL, 1),
	(32, 2, 'Warranties & Services', 'WNS', 'cypher', NULL, NULL, '2021-01-04 02:32:04', '2021-01-04 02:32:04', NULL, 1),
	(33, 3, 'Car Care', 'CRE', 'cypher', NULL, NULL, '2021-01-04 02:32:37', '2021-01-04 02:32:37', NULL, 1),
	(34, 3, 'Car Electronics & Accessories', 'CEA', 'cypher', NULL, NULL, '2021-01-04 02:32:59', '2021-01-04 02:32:59', NULL, 1),
	(35, 3, 'Exterior Accessories', 'EXA', 'cypher', NULL, NULL, '2021-01-04 02:33:27', '2021-01-04 02:33:27', NULL, 1),
	(36, 3, 'Interior Accessories', 'INT', 'cypher', NULL, NULL, '2021-01-04 02:33:56', '2021-01-04 02:33:56', NULL, 1),
	(37, 3, 'Lights & Lightning Accessories', 'LLA', 'cypher', NULL, NULL, '2021-01-04 02:34:20', '2021-01-04 02:34:20', NULL, 1),
	(38, 3, 'Motorcycle & Powersports', 'MOP', 'cypher', NULL, NULL, '2021-01-04 02:34:44', '2021-01-04 02:34:44', NULL, 1),
	(39, 3, 'Oils & Fluids', 'OIL', 'cypher', NULL, NULL, '2021-01-04 02:35:02', '2021-01-04 02:35:02', NULL, 1),
	(40, 3, 'Paint & Paint Supplies', 'PAI', 'cypher', NULL, NULL, '2021-01-04 02:35:23', '2021-01-04 02:35:23', NULL, 1),
	(41, 3, 'Performance Part & Accessories', 'PPA', 'cypher', NULL, NULL, '2021-01-04 02:35:46', '2021-01-04 02:35:46', NULL, 1),
	(42, 3, 'Replacement Parts', 'REP', 'cypher', NULL, NULL, '2021-01-04 02:36:04', '2021-01-04 02:36:04', NULL, 1),
	(43, 3, 'RV Parts & Accessories', 'RVP', 'cypher', NULL, NULL, '2021-01-04 02:36:27', '2021-01-04 02:36:27', NULL, 1),
	(44, 3, 'Tires & Wheels', 'TWH', 'cypher', NULL, NULL, '2021-01-04 02:36:48', '2021-01-04 02:36:48', NULL, 1),
	(45, 3, 'Tools & Equipment', 'TEQ', 'cypher', NULL, NULL, '2021-01-04 02:37:05', '2021-01-04 02:37:05', NULL, 1),
	(46, 3, 'Automotive Enthusiast Merchandise', 'AEM', 'cypher', NULL, NULL, '2021-01-04 02:37:35', '2021-01-04 02:37:35', NULL, 1),
	(47, 3, 'Heavy Duty & Commercial Vehicle Equipment', 'HCV', 'cypher', NULL, NULL, '2021-01-04 02:38:21', '2021-01-04 02:38:21', NULL, 1),
	(48, 4, 'Abrasive & Finishing Products', 'AFP', 'cypher', NULL, NULL, '2021-01-04 02:41:30', '2021-01-04 02:41:30', NULL, 1),
	(49, 4, 'Additive Manufacturing Products', 'AMP', 'cypher', NULL, NULL, '2021-01-04 02:42:10', '2021-01-04 02:42:10', NULL, 1),
	(50, 4, 'Commercial Door Products', 'CDP', 'cypher', NULL, NULL, '2021-01-04 02:42:30', '2021-01-04 02:42:30', NULL, 1),
	(51, 4, 'Cutting Tools', 'CTO', 'cypher', NULL, NULL, '2021-01-04 02:42:42', '2021-01-04 02:42:42', NULL, 1),
	(52, 4, 'Fasteners', 'FAS', 'cypher', NULL, NULL, '2021-01-04 02:42:52', '2021-01-04 02:42:52', NULL, 1),
	(53, 4, 'Filtration', 'FIL', 'cypher', NULL, NULL, '2021-01-04 02:43:02', '2021-01-04 02:43:02', NULL, 1),
	(54, 4, 'Food Service Equipemnt & Supplies', 'FSS', 'cypher', NULL, NULL, '2021-01-04 02:43:32', '2021-01-04 02:43:32', NULL, 1),
	(55, 4, 'Hydraulics, Pneumatics & Plumbing', 'HPP', 'cypher', NULL, NULL, '2021-01-04 02:44:11', '2021-01-04 02:44:11', NULL, 1),
	(56, 4, 'Industrial Electrical', 'IEL', 'cypher', NULL, NULL, '2021-01-04 02:44:34', '2021-01-04 02:44:34', NULL, 1),
	(57, 4, 'Industrial Hardware', 'IHA', 'cypher', NULL, NULL, '2021-01-04 02:44:58', '2021-01-04 02:44:58', NULL, 1),
	(58, 4, 'Industrial Power & Hand Tools', 'PHT', 'cypher', NULL, NULL, '2021-01-04 02:45:23', '2021-01-04 02:45:23', NULL, 1),
	(59, 4, 'Janitorial & Sanitation Supplies', 'JSS', 'cypher', NULL, NULL, '2021-01-04 02:45:49', '2021-01-04 02:45:49', NULL, 1),
	(60, 4, 'Lab & Scientific Products', 'LAB', 'cypher', NULL, NULL, '2021-01-04 02:46:11', '2021-01-04 02:46:11', NULL, 1),
	(61, 4, 'Material Handling Products', 'MHP', 'cypher', NULL, NULL, '2021-01-04 02:46:29', '2021-01-04 02:46:29', NULL, 1),
	(62, 4, 'Occupational Health & Safety Products', 'HSP', 'cypher', NULL, NULL, '2021-01-04 02:46:59', '2021-01-04 02:46:59', NULL, 1),
	(63, 4, 'Packaging & Shipping Supplies', 'PSS', 'cypher', NULL, NULL, '2021-01-04 02:47:26', '2021-01-04 02:47:26', NULL, 1),
	(64, 4, 'Power Transmission Products', 'PTP', 'cypher', NULL, NULL, '2021-01-04 02:47:55', '2021-01-04 02:47:55', NULL, 1),
	(65, 4, 'Professional Dental Supplies', 'PDS', 'cypher', NULL, NULL, '2021-01-04 02:48:12', '2021-01-04 02:48:12', NULL, 1),
	(66, 4, 'Professional Medical Supplies', 'PMS', 'cypher', NULL, NULL, '2021-01-04 02:48:35', '2021-01-04 02:48:35', NULL, 1),
	(67, 4, 'Raw Materials', 'RAW', 'cypher', NULL, NULL, '2021-01-04 02:48:48', '2021-01-04 02:48:48', NULL, 1),
	(68, 4, 'Retail Store Fixtures & Equipment', 'RSE', 'cypher', NULL, NULL, '2021-01-04 02:49:13', '2021-01-04 02:49:13', NULL, 1),
	(69, 4, 'Robotics', 'ROB', 'cypher', NULL, NULL, '2021-01-04 02:49:25', '2021-01-04 02:49:25', NULL, 1),
	(70, 4, 'Science Education', 'SCE', 'cypher', NULL, NULL, '2021-01-04 02:49:40', '2021-01-04 02:49:40', NULL, 1),
	(71, 4, 'Tapes, Adhesives & Sealants', 'TAS', 'cypher', NULL, NULL, '2021-01-04 02:50:11', '2021-01-04 02:50:11', NULL, 1),
	(72, 4, 'Test, Measure & Inspect', 'TMI', 'cypher', NULL, NULL, '2021-01-04 02:50:33', '2021-01-04 02:50:33', NULL, 1),
	(73, 5, 'Tools & Home Improvement', 'THI', 'cypher', NULL, NULL, '2021-01-04 03:17:34', '2021-01-04 03:17:34', NULL, 1),
	(74, 5, 'Appliances', 'APL', 'cypher', NULL, NULL, '2021-01-04 03:17:59', '2021-01-04 03:17:59', NULL, 1),
	(75, 5, 'Building Supplies', 'BSU', 'cypher', NULL, NULL, '2021-01-04 03:18:28', '2021-01-04 03:18:28', NULL, 1),
	(76, 5, 'Electrical', 'ECA', 'cypher', NULL, NULL, '2021-01-04 03:18:45', '2021-01-04 03:18:45', NULL, 1),
	(77, 5, 'Hardware', 'HRW', 'cypher', NULL, NULL, '2021-01-04 03:18:59', '2021-01-04 03:18:59', NULL, 1),
	(78, 5, 'Kitchen & Bath Fixtures', 'KBF', 'cypher', NULL, NULL, '2021-01-04 03:19:24', '2021-01-04 03:19:24', NULL, 1),
	(79, 5, 'Light Bulbs', 'LBU', 'cypher', NULL, NULL, '2021-01-04 03:19:52', '2021-01-04 03:19:52', NULL, 1),
	(80, 5, 'Lighting & Ceiling Fans', 'LCF', 'cypher', NULL, NULL, '2021-01-04 03:20:24', '2021-01-04 03:20:24', NULL, 1),
	(81, 5, 'Measuring & Layout Tools', 'MLT', 'cypher', NULL, NULL, '2021-01-04 03:20:43', '2021-01-04 03:20:43', NULL, 1),
	(82, 5, 'Painting Supplies & Wall Treatment', 'PWT', 'cypher', NULL, NULL, '2021-01-04 03:21:13', '2021-01-04 03:21:13', NULL, 1),
	(83, 5, 'Power & Hand Tools', 'PNH', 'cypher', NULL, NULL, '2021-01-04 03:21:38', '2021-01-04 03:21:38', NULL, 1),
	(84, 5, 'Rough Plumbing', 'ROP', 'cypher', NULL, NULL, '2021-01-04 03:22:03', '2021-01-04 03:22:03', NULL, 1),
	(85, 5, 'Safety & Security', 'SNS', 'cypher', NULL, NULL, '2021-01-04 03:22:21', '2021-01-04 03:22:21', NULL, 1),
	(86, 5, 'Storage & Home Organization', 'SHO', 'cypher', NULL, NULL, '2021-01-04 03:22:41', '2021-01-04 03:22:41', NULL, 1),
	(87, 5, 'Welding & Soldering', 'WSO', 'cypher', NULL, NULL, '2021-01-04 03:23:04', '2021-01-04 03:23:04', NULL, 1),
	(88, 1, 'Electronic Publication', 'EPB', 'cypher', NULL, NULL, '2021-01-04 03:24:17', '2021-01-04 03:24:17', NULL, 1),
	(89, 1, 'Power Banks', 'PBK', 'cypher', NULL, NULL, '2021-01-04 03:24:52', '2021-01-04 03:24:52', NULL, 1),
	(90, 1, 'Charger', 'CHA', 'cypher', NULL, NULL, '2021-01-04 03:25:17', '2021-01-04 03:25:17', NULL, 1),
	(91, 1, 'Speaker', 'SPE', 'cypher', 'cypher', NULL, '2021-01-04 03:25:44', '2021-01-04 03:27:20', NULL, 1),
	(92, 1, 'Cables', 'CAB', 'cypher', NULL, NULL, '2021-01-04 03:28:40', '2021-01-04 03:28:40', NULL, 1),
	(93, 1, 'Digital Battery', 'DBT', 'cypher', NULL, NULL, '2021-01-04 03:29:10', '2021-01-04 03:29:10', NULL, 1),
	(94, 1, 'Other Consumer Electronics', 'OTH', 'cypher', NULL, NULL, '2021-01-04 03:29:55', '2021-01-04 03:29:55', NULL, 1),
	(95, 1, 'Air Conditioning Appliances', 'ACP', 'cypher', NULL, NULL, '2021-01-04 03:30:57', '2021-01-04 03:30:57', NULL, 1),
	(96, 1, 'Water Heater', 'WHE', 'cypher', NULL, NULL, '2021-01-04 03:31:20', '2021-01-04 03:31:20', NULL, 1),
	(97, 1, 'Coffee Makers', 'COF', 'cypher', NULL, NULL, '2021-01-04 03:31:40', '2021-01-04 03:31:40', NULL, 1),
	(98, 1, 'Other Home Appliances', 'OHA', 'cypher', NULL, NULL, '2021-01-04 03:32:01', '2021-01-04 03:32:01', NULL, 1),
	(99, 6, 'Agriculture Machinery & Equipment', 'AME', 'cypher', NULL, NULL, '2021-01-04 03:33:56', '2021-01-04 03:33:56', NULL, 1),
	(100, 6, 'Building Material Machinery', 'BMM', 'cypher', NULL, NULL, '2021-01-04 03:34:10', '2021-01-04 03:34:10', NULL, 1),
	(101, 6, 'Electronic Products Machinery', 'EPM', 'cypher', NULL, NULL, '2021-01-04 03:34:26', '2021-01-04 03:34:26', NULL, 1),
	(102, 6, 'Engineering & Construction Machinery', 'ECM', 'cypher', NULL, NULL, '2021-01-04 03:34:41', '2021-01-04 03:34:41', NULL, 1),
	(103, 6, 'General Industrial Equipment', 'GIE', 'cypher', NULL, NULL, '2021-01-04 03:34:53', '2021-01-04 03:34:53', NULL, 1),
	(104, 6, 'Industry Laser Equipment', 'ILE', 'cypher', NULL, NULL, '2021-01-04 03:35:03', '2021-01-04 03:35:03', NULL, 1),
	(105, 6, 'Metal & Metallurgy Machinery', 'MMM', 'cypher', NULL, NULL, '2021-01-04 03:35:13', '2021-01-04 03:35:13', NULL, 1),
	(106, 6, 'Packaging Machine', 'PAM', 'cypher', NULL, NULL, '2021-01-04 03:35:29', '2021-01-04 03:35:29', NULL, 1),
	(107, 6, 'Pharmaceutical Machinery', 'PHA', 'cypher', NULL, NULL, '2021-01-04 03:35:39', '2021-01-04 03:35:39', NULL, 1),
	(108, 6, 'Printing Machine', 'PRM', 'cypher', NULL, NULL, '2021-01-04 03:35:51', '2021-01-04 03:37:46', '2021-01-04 03:37:46', 1),
	(109, 6, 'Used Machinery & Equipment', 'UME', 'cypher', NULL, NULL, '2021-01-04 03:38:09', '2021-01-04 03:38:09', NULL, 1),
	(110, 6, 'Apparel & Textile Machinery', 'ATM', 'cypher', NULL, NULL, '2021-01-04 03:38:23', '2021-01-04 03:38:23', NULL, 1),
	(111, 6, 'Chemical Machinery & Equipment', 'CHE', 'cypher', NULL, NULL, '2021-01-04 03:38:50', '2021-01-04 03:38:50', NULL, 1),
	(112, 6, 'Energy & Mineral Equipment', 'EME', 'cypher', NULL, NULL, '2021-01-04 03:38:58', '2021-01-04 03:38:58', NULL, 1),
	(113, 6, 'Food & Beverage Machinery', 'FBM', 'cypher', NULL, NULL, '2021-01-04 03:39:12', '2021-01-04 03:39:12', NULL, 1),
	(114, 6, 'Home Product Making Machine', 'HOM', 'cypher', NULL, NULL, '2021-01-04 03:39:27', '2021-01-04 03:39:27', NULL, 1),
	(115, 6, 'Machine Tool Equipment', 'MTE', 'cypher', NULL, NULL, '2021-01-04 03:39:35', '2021-01-04 03:39:35', NULL, 1),
	(116, 6, 'Other Machinery & Industry Equipment', 'OMI', 'cypher', NULL, NULL, '2021-01-04 03:39:46', '2021-01-04 03:39:46', NULL, 1),
	(117, 6, 'Paper Production Machinery', 'PPM', 'cypher', NULL, NULL, '2021-01-04 03:39:56', '2021-01-04 03:39:56', NULL, 1),
	(118, 6, 'Plastic & Rubber Machinery', 'PRU', 'cypher', NULL, NULL, '2021-01-04 03:40:09', '2021-01-04 03:40:09', NULL, 1),
	(119, 6, 'Refrigeration & Heat Exchange Equipment', 'RHE', 'cypher', NULL, NULL, '2021-01-04 03:40:22', '2021-01-04 03:40:22', NULL, 1),
	(120, 6, 'Woodworking Machinery', 'WMA', 'cypher', NULL, NULL, '2021-01-04 03:40:41', '2021-01-04 03:40:41', NULL, 1),
	(121, 6, 'Custom Fabrication Services', 'CFS', 'cypher', NULL, NULL, '2021-01-04 03:40:55', '2021-01-04 03:40:55', NULL, 1),
	(122, 6, 'General Mechanical Components', 'GMC', 'cypher', NULL, NULL, '2021-01-04 03:41:12', '2021-01-04 03:41:12', NULL, 1),
	(123, 6, 'Machine Tools Accessory', 'MTA', 'cypher', NULL, NULL, '2021-01-04 03:41:29', '2021-01-04 03:41:29', NULL, 1),
	(124, 6, 'Industrial Brake', 'IBR', 'cypher', NULL, NULL, '2021-01-04 03:41:46', '2021-01-04 03:41:46', NULL, 1),
	(125, 6, 'Moulds', 'MOU', 'cypher', NULL, NULL, '2021-01-04 03:41:55', '2021-01-04 03:41:55', NULL, 1),
	(126, 6, 'Other Mechanical Parts', 'OMP', 'cypher', NULL, NULL, '2021-01-04 03:42:05', '2021-01-04 03:42:05', NULL, 1),
	(127, 6, 'Tool Processing Services', 'TPS', 'cypher', NULL, NULL, '2021-01-04 03:42:38', '2021-01-04 03:42:38', NULL, 1),
	(128, 6, 'Tool Design Services', 'TDS', 'cypher', NULL, NULL, '2021-01-04 03:42:48', '2021-01-04 03:42:48', NULL, 1),
	(129, 6, 'Power Tool Accessories', 'PTA', 'cypher', NULL, NULL, '2021-01-04 03:43:02', '2021-01-04 03:43:02', NULL, 1),
	(130, 6, 'Material Handling Tools', 'MHT', 'cypher', NULL, NULL, '2021-01-04 03:43:13', '2021-01-04 03:43:13', NULL, 1),
	(131, 6, 'Lawn Mower', 'LAM', 'cypher', NULL, NULL, '2021-01-04 03:43:28', '2021-01-04 03:43:28', NULL, 1),
	(132, 6, 'Hand Carts & Trolleys', 'HCT', 'cypher', NULL, NULL, '2021-01-04 03:43:39', '2021-01-04 03:43:39', NULL, 1),
	(133, 6, 'Sander', 'SAN', 'cypher', NULL, NULL, '2021-01-04 03:43:47', '2021-01-04 03:43:47', NULL, 1),
	(134, 6, 'Tool Stock', 'STO', 'cypher', NULL, NULL, '2021-01-04 03:44:19', '2021-01-04 03:44:19', NULL, 1),
	(135, 6, 'Tool Parts', 'TPR', 'cypher', NULL, NULL, '2021-01-04 03:44:34', '2021-01-04 03:44:34', NULL, 1),
	(136, 6, 'Tool Sets', 'SET', 'cypher', NULL, NULL, '2021-01-04 03:44:44', '2021-01-04 03:44:44', NULL, 1),
	(137, 7, 'Aluminum', 'ALU', 'cypher', NULL, NULL, '2021-01-04 03:45:42', '2021-01-04 03:45:42', NULL, 1),
	(138, 7, 'Billets', 'BIL', 'cypher', NULL, NULL, '2021-01-04 03:48:54', '2021-01-04 03:48:54', NULL, 1),
	(139, 7, 'Carbon Fiber', 'CAF', 'cypher', NULL, NULL, '2021-01-04 03:49:07', '2021-01-04 03:49:07', NULL, 1),
	(140, 7, 'Cemented Carbide', 'CEM', 'cypher', NULL, NULL, '2021-01-04 03:49:19', '2021-01-04 03:49:19', NULL, 1),
	(141, 7, 'Ceramics', 'CER', 'cypher', NULL, NULL, '2021-01-04 03:49:31', '2021-01-04 03:49:31', NULL, 1),
	(142, 7, 'Copper Forged', 'COP', 'cypher', NULL, NULL, '2021-01-04 03:49:43', '2021-01-04 03:49:43', NULL, 1),
	(143, 7, 'Glass', 'GLA', 'cypher', NULL, NULL, '2021-01-04 03:49:54', '2021-01-04 03:49:54', NULL, 1),
	(144, 7, 'Ingots', 'ING', 'cypher', NULL, NULL, '2021-01-04 03:50:05', '2021-01-04 03:50:05', NULL, 1),
	(145, 7, 'Magnetic Materials', 'MAG', 'cypher', NULL, NULL, '2021-01-04 03:50:26', '2021-01-04 03:50:26', NULL, 1),
	(146, 7, 'Other Metals & Metal Products', 'MET', 'cypher', NULL, NULL, '2021-01-04 03:50:41', '2021-01-04 03:50:41', NULL, 1),
	(147, 7, 'Non-Metallic Mineral Deposit', 'NME', 'cypher', NULL, NULL, '2021-01-04 03:50:55', '2021-01-04 03:50:55', NULL, 1),
	(148, 7, 'Quartz Products', 'QUA', 'cypher', NULL, NULL, '2021-01-04 03:51:20', '2021-01-04 03:51:20', NULL, 1),
	(149, 7, 'Steel', 'STE', 'cypher', NULL, NULL, '2021-01-04 03:51:31', '2021-01-04 03:51:31', NULL, 1),
	(150, 7, 'Gas Disposal', 'GDI', 'cypher', NULL, NULL, '2021-01-04 03:51:52', '2021-01-04 03:51:52', NULL, 1),
	(151, 7, 'Noise Reduction Device', 'NRD', 'cypher', NULL, NULL, '2021-01-04 03:52:05', '2021-01-04 03:52:05', NULL, 1),
	(152, 7, 'Other Environmental Products', 'OTE', 'cypher', NULL, NULL, '2021-01-04 03:52:29', '2021-01-04 03:52:29', NULL, 1),
	(153, 7, 'Titanium', 'TAN', 'cypher', NULL, NULL, '2021-01-04 03:52:58', '2021-01-04 03:52:58', NULL, 1),
	(154, 7, 'Refractory', 'REF', 'cypher', NULL, NULL, '2021-01-04 03:53:09', '2021-01-04 03:53:09', NULL, 1),
	(155, 7, 'Biodiesel', 'BDI', 'cypher', NULL, NULL, '2021-01-04 03:53:22', '2021-01-04 03:53:22', NULL, 1),
	(156, 7, 'Charcoal', 'CHO', 'cypher', NULL, NULL, '2021-01-04 03:53:34', '2021-01-04 03:53:34', NULL, 1),
	(157, 7, 'Petrochemical Products', 'PET', 'cypher', NULL, NULL, '2021-01-04 03:53:52', '2021-01-04 03:53:52', NULL, 1),
	(158, 7, 'Solar Energy Systems', 'SES', 'cypher', NULL, NULL, '2021-01-04 03:54:02', '2021-01-04 03:54:02', NULL, 1),
	(159, 7, 'Lubricant', 'LUB', 'cypher', NULL, NULL, '2021-01-04 03:54:11', '2021-01-04 03:54:11', NULL, 1),
	(160, 7, 'Solar Collectors', 'SOL', 'cypher', NULL, NULL, '2021-01-04 03:54:42', '2021-01-04 03:54:42', NULL, 1),
	(161, 7, 'Wood Pellets', 'WOD', 'cypher', NULL, NULL, '2021-01-04 03:54:50', '2021-01-04 03:54:50', NULL, 1),
	(162, 7, 'Natural Gas', 'NGA', 'cypher', NULL, NULL, '2021-01-04 03:54:59', '2021-01-04 03:54:59', NULL, 1),
	(163, 7, 'Solar Energy Products', 'SEN', 'cypher', NULL, NULL, '2021-01-04 03:55:12', '2021-01-04 03:55:12', NULL, 1),
	(164, 7, 'Coke Fuel', 'CFU', 'cypher', NULL, NULL, '2021-01-04 03:55:21', '2021-01-04 03:55:21', NULL, 1),
	(165, 7, 'Biogas', 'BGA', 'cypher', NULL, NULL, '2021-01-04 03:55:31', '2021-01-04 03:55:31', NULL, 1),
	(166, 7, 'Plastic Products', 'PLA', 'cypher', NULL, NULL, '2021-01-04 03:55:48', '2021-01-04 03:55:48', NULL, 1),
	(167, 7, 'Rubber Projects', 'RUB', 'cypher', NULL, NULL, '2021-01-04 03:56:00', '2021-01-04 03:56:00', NULL, 1),
	(168, 7, 'PVC', 'PVC', 'cypher', NULL, NULL, '2021-01-04 03:56:11', '2021-01-04 03:56:11', NULL, 1),
	(169, 7, 'HDPE', 'HDP', 'cypher', NULL, NULL, '2021-01-04 03:56:18', '2021-01-04 03:56:18', NULL, 1),
	(170, 7, 'LDPE', 'LDP', 'cypher', NULL, NULL, '2021-01-04 03:56:27', '2021-01-04 03:56:27', NULL, 1);


