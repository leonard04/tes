--util_master
--bep
INSERT INTO `finance_util_master` (`id`, `company_id`, `subject`, `description`, `recurrent_date`, `recurrent_type`, `type`, `amount`, `currency`, `status`, `last_date`, `n_date`, `classification`) VALUES
(NULL, 21, 'UTILISASI KEBERSIHAN', 'Kebersihan warehouse dan office', '2020-01-28', 'monthly', 'variable', 176700.00, 'IDR', 'running', '2020-01-31', 1, 10),
(NULL, 21, 'UTILISASI PANTRY', 'Pantry office dan kantin', '2020-01-28', 'monthly', 'variable', 440100.00, 'IDR', 'running', '2020-01-31', 1, 10),
(NULL, 21, 'UTILISASI TRUCK DYNA', 'Fuel Truck Dyna dan toll', '2020-01-28', 'monthly', 'variable', 1026000.00, 'IDR', 'running', '2020-01-31', 1, 10),
(NULL, 21, 'UTILISASI PAKAN IKAN', 'Pakan Ikan Koi WH', '2020-01-28', 'monthly', 'fixed', 130000.00, 'IDR', 'running', '2020-01-31', 1, 10),
(NULL, 21, 'UTILISASI MOTOR MIO J', 'Fuel Motor Mio J', '2020-01-28', 'monthly', 'variable', 248590.00, 'IDR', 'running', '2020-01-31', 1, 10),
(NULL, 21, 'UTILISASI JUMSIH', 'Jumsih Mingguan', '2020-01-28', 'monthly', 'variable', 50000.00, 'IDR', 'running', '2020-01-31', 1, 10),
(NULL, 21, 'UTILISASI ASTINET', 'Astinet Telkom Vessel Warehouse', '2020-01-15', 'monthly', 'fixed', 796000.00, 'IDR', 'running', '2020-01-15', 1, 10),
(NULL, 21, 'UTILISASI JASA KEAMANAN', 'Jasa Keamanan a.n : Pak Susanto', '2020-01-28', 'monthly', 'fixed', 5000000.00, 'IDR', 'running', '2020-01-30', 1, 10),
(NULL, 21, 'UTILISASI INTERNET', 'Internet Vessel Warehouse 1223 7121 7288', '2020-11-01', 'monthly', 'fixed', 232035.00, 'IDR', 'running', '2020-11-01', 1, 10),
(NULL, 21, 'UTILISASI MOBIL TRITON', 'Fuel dan tol', '2020-11-01', 'monthly', 'variable', 2000000.00, 'IDR', 'running', '2020-11-01', 1, 10);


--corp
INSERT INTO `finance_util_master` (`id`, `company_id`, `subject`, `description`, `recurrent_date`, `recurrent_type`, `type`, `amount`, `currency`, `status`, `last_date`, `n_date`, `classification`) VALUES
(NULL, 1, 'Meteran Listrik PLN ART 2', 'Pulsa Listrik ART 2', '2018-10-22', 'monthly', 'fixed', 1500000.00, 'IDR', 'ready', '2018-10-22', 1, 13),
(NULL, 1, 'Biaya Telp ', 'Biaya Telp Art Lantai 3', '2018-11-20', 'monthly', 'fixed', 560000.00, 'IDR', 'ready', '2018-11-20', 1, 13);

--kso
INSERT INTO `finance_util_master` (`id`, `company_id`, `subject`, `description`, `recurrent_date`, `recurrent_type`, `type`, `amount`, `currency`, `status`, `last_date`, `n_date`, `classification`) VALUES
(NULL, 22, 'PLN', 'BULANAN, SEBELIM TANGGAL 20 SETIAP BULAN SUDAH HARUS DIBAYARKAN', '2020-04-15', 'monthly', 'variable', 1000000.00, 'IDR', 'ready', '2020-04-15', 1, 16);

--mti
INSERT INTO `finance_util_master` (`id`, `company_id`, `subject`, `description`, `recurrent_date`, `recurrent_type`, `type`, `amount`, `currency`, `status`, `last_date`, `n_date`, `classification`) VALUES
(NULL, 23, 'UTILISASI LISTRIK', 'LISTRIK ID PELANGGAN 543600741002 A/N SOFJAN RUDIJANTO', '2020-01-10', 'monthly', 'fixed', 789880.00, 'IDR', 'running', '2020-01-10', 1, 19),
(NULL, 23, 'UTILISASI LISTRIK', 'LISTRIK ID PELANGGAN 543600621964 A/N NORMA INDRIATI ST', '2020-01-10', 'monthly', 'fixed', 416604.00, 'IDR', 'running', '2020-01-10', 1, 19),
(NULL, 23, 'UTILISASI INTERNET', 'INDIHOME 122210216462 A/N NOVA KURNIASIH', '2020-01-10', 'monthly', 'fixed', 445500.00, 'IDR', 'running', '2020-01-10', 1, 19),
(NULL, 23, 'UTILISASI PANTRY ', 'UTILISASI PANTRY ', '2020-03-01', 'monthly', 'fixed', 1304645.00, 'IDR', 'running', '2020-03-01', 1, 19),
(NULL, 23, 'UTILISASI TELEPON', 'UTILISASI TELEPON 02174861508 A/N NORMA INDRIATI ST', '2020-01-10', 'monthly', 'fixed', 51814.00, 'IDR', 'running', '2020-01-10', 1, 19),
(NULL, 23, 'UTILISASI IURAN SAMPAH', 'UTILISASI IURAN SAMPAH ', '2020-03-01', 'monthly', 'fixed', 100000.00, 'IDR', 'running', '2020-03-01', 1, 19);

--end

