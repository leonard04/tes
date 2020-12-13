emp loan 
kso
INSERT INTO `hrd_employee_loan` (`id`, `company_id`, `old_id`,  `loanID`, `emp_id`, `date_given`, `loan_amount`, `loan_start`, `loan_end`, `given_by`, `given_time`, `notes`) VALUES
(NULL,22,1, '002/KSO/LN/IV/20', 31, NULL, 1200000, '2020-04-01', '2020-04-15', 'indri', '2020-04-22 15:06:46', 'Cash bon'),
(NULL,22,5, '006/KSO/LN/VII/20', 8, NULL, 1166666, '2020-06-16', '2020-07-14', 'indri', '2020-07-28 13:17:23', 'Pemotongan 1 minggu off');

corp
INSERT INTO `hrd_employee_loan` (`id`, `company_id`, `old_id`, `loanID`, `emp_id`, `date_given`, `loan_amount`, `loan_start`, `loan_end`, `given_by`, `given_time`, `notes`, `deleted_at`, `deleted_by`) VALUES
(NULL,1,2, '152/VESSEL/LN/XI/19', 2, NULL, 78820, '2019-10-14', '2019-12-18', 'dewi', '2019-11-19 13:37:54', 'Potongan pembayaran BPJS Kesehatan bulan November dan Desember 2019', NULL, NULL),
(NULL,1,3, '153/VESSEL/LN/XI/19', 8, NULL, 78820, '2019-10-14', '2019-12-18', 'dewi', '2019-11-19 13:49:57', 'Potongan pembayaran BPJS Kesehatan bulan November dan Desember 2019', NULL, NULL),
(NULL,1,4, '154/VESSEL/LN/XI/19', 3, NULL, 78820, '2019-10-14', '2019-12-18', 'dewi', '2019-11-19 13:50:57', 'Potongan pembayaran BPJS Kesehatan bulan November dan Desember 2019', NULL, NULL),
(NULL,1,5, '155/VESSEL/LN/XI/19', 9, NULL, 78820, '2019-10-14', '2019-12-18', 'dewi', '2019-11-19 13:56:21', 'Potongan pembayaran BPJS Kesehatan bulan November dan Desember 2019', NULL, NULL),
(NULL,1,6, '156/VESSEL/LN/XII/19', 7, NULL, 39410, '2019-12-14', '2019-12-18', 'dewi', '2019-12-19 09:37:30', 'Potongan BPJS Kesehatan bulan Desember 2019 sebesar 2 % ', NULL, NULL),
(NULL,1,7, '157/VESSEL/LN/I/20', 9, NULL, 513156, '2019-12-14', '2020-12-18', 'dewi', '2020-01-22 11:06:24', 'Potongan BPJS Kesehatan (1%) periode Januari sd Desember 2020 dengan input UMR 4.276.349,-', NULL, NULL),
(NULL,1,8, '158/VESSEL/LN/I/20', 3, NULL, 513156, '2019-12-14', '2020-12-18', 'dewi', '2020-01-22 11:08:57', 'Potongan BPJS Kesehatan (1%) periode Januari sd Desember 2020 dengan input UMR 4.276.349,-', NULL, NULL),
(NULL,1,9, '159/VESSEL/LN/I/20', 2, NULL, 513156, '2019-12-14', '2020-12-18', 'dewi', '2020-01-22 11:10:03', 'Potongan BPJS Kesehatan (1%) periode Januari sd Desember 2020 dengan input UMR 4.276.349,-', NULL, NULL),
(NULL,1,10, '160/VESSEL/LN/I/20', 8, NULL, 513156, '2019-12-14', '2020-12-18', 'dewi', '2020-01-22 11:10:53', 'Potongan BPJS Kesehatan (1%) periode Januari sd Desember 2020 dengan input UMR 4.276.349,-', NULL, NULL),
(NULL,1,11, '161/VESSEL/LN/I/20', 7, NULL, 513156, '2019-12-14', '2020-12-18', 'dewi', '2020-01-22 11:11:41', 'Potongan BPJS Kesehatan (1%) periode Januari sd Desember 2020 dengan input UMR 4.276.349,-', NULL, NULL),
(NULL,1,12, '162/VESSEL/LN/II/20', 14, NULL, 470393, '2020-01-14', '2020-12-18', 'dewi', '2020-02-25 10:25:57', 'Potongan BPJS Kesehatan (1%) periode Februari sd Desember 2020 (didaftarkan bulan Februari 2020)', NULL, NULL),
(NULL,1,13, '163/VESSEL/LN/II/20', 12, NULL, 470393, '2020-01-14', '2020-12-18', 'dewi', '2020-02-25 10:29:41', 'Potongan BPJS Kesehatan (1%) periode Februari sd Desember 2020 ', NULL, NULL),
(NULL,1,14, '164/VESSEL/LN/II/20', 13, NULL, 470393, '2020-01-14', '2020-12-18', 'dewi', '2020-02-25 10:31:04', 'Potongan BPJS Kesehatan (1%) periode Februari sd Desember 2020', NULL, NULL),
(NULL,1,16, '166/VESSEL/LN/V/20', 12, NULL, 584000, '2020-04-14', '2020-12-17', 'iwan', '2020-05-17 15:25:37', 'Pemotongan BPJS Ketenagakerjaan sebesar 2% Periode Mei sd Desember 2020\r\n\r\n', NULL, NULL),
(NULL,1,17, '167/VESSEL/LN/V/20', 13, NULL, 584000, '2020-04-14', '2020-12-17', 'iwan', '2020-05-17 15:26:55', 'Pemotongan BPJS Ketenagakerjaan sebesar 2% Periode Mei sd Desember 2020\r\n\r\n', NULL, NULL),
(NULL,1,20, '170/VESSEL/LN/V/20', 22, NULL, 427630, '2020-05-01', '2020-04-01', 'indri', '2020-05-18 11:25:13', NULL, NULL, NULL),
(NULL,1,21, '171/VESSEL/LN/VI/20', 22, NULL, 490000, '2020-05-17', '2020-12-17', 'iwan', '2020-06-18 08:39:28', 'Pemotongan BPJS Ketenagakerjaan sebesar 2% Periode juni sd Desember 2020 (Karena dipindah ke Cypher Holding)\r\n\r\n', NULL, NULL),
(NULL,1,23, '173/VESSEL/LN/VI/20', 24, NULL, 30000000, '2020-05-15', '2024-07-18', 'iwan', '2020-06-23 11:14:19', 'akan dipotongkan 600rb/bulan ', NULL, NULL),
(NULL,1,24, '174/VESSEL/LN/VI/20', 24, NULL, 8424798, '2020-05-15', '2021-07-18', 'iwan', '2020-06-23 11:22:39', 'Pembayaran cicilan pinjaman pribadi (pinjaman online)', NULL, NULL),
(NULL,1,25, '175/VESSEL/LN/VI/20', 24, NULL, 299341, '2020-05-15', '2020-12-18', 'iwan', '2020-06-23 11:38:30', 'Potongan BPJS Kesehatan (1%) periode juni sd Desember 2020 dengan input UMR 4.276.349,- (pindah dari PSI)\r\n\r\n', NULL, NULL),
(NULL,1,26, '176/VESSEL/LN/XI/20', 24, NULL, 2655466, '2020-10-15', '2020-11-17', 'iwan', '2020-11-19 11:08:36', 'karyawan tersebut tidak masuk kerja ', NULL, NULL),
(NULL,1,27, '177/VESSEL/LN/XI/20', 20, NULL, 73000, '2020-10-15', '2020-11-17', 'iwan', '2020-11-26 13:49:23', 'BPJS TK', NULL, NULL);
