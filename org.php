       //Instrument Items
        Route::get('/techincal-engineering/items-instrument-details','TeInstrumentationController@index')->name('te.instrument.index');
        Route::get('/techincal-engineering/items-instrument-details/revision','TeInstrumentationController@revision')->name('te.instrument.revision');
        Route::get('/techincal-engineering/items-instrument-details/revision/detail/{id}','TeInstrumentationController@revision_detail')->name('te.instrument.revision_detail');
        Route::get('/techincal-engineering/items-instrument-details/getInstrumentList','TeInstrumentationController@getInstrumentList')->name('te.instrument.getInstrumentList');
        Route::post('/techincal-engineering/items-instrument-details/store','TeInstrumentationController@store')->name('te.instrument.store');
        Route::post('/techincal-engineering/items-instrument-details/update','TeInstrumentationController@update')->name('te.instrument.update');
        Route::post('/techincal-engineering/items-instrument-details/revision_approve','TeInstrumentationController@revision_approve')->name('te.revision_approve');
        Route::get('/techincal-engineering/items-instrument-details/delete/{id}','TeInstrumentationController@delete')->name('te.instrument.delete');

        //Test Equipment
        Route::get('/techincal-engineering/test-equipment','TeTestEqController@index')->name('te.testeq.index');
        Route::get('/techincal-engineering/test-equipment/revision','TeTestEqController@revision')->name('te.testeq.revision');
        Route::get('/techincal-engineering/test-equipment/revision/detail/{id}','TeTestEqController@revision_detail')->name('te.testeq.revision_detail');
        Route::get('/techincal-engineering/test-equipment/getInstrumentList','TeTestEqController@getInstrumentList')->name('te.testeq.getInstrumentList');
        Route::post('/techincal-engineering/test-equipment/store','TeTestEqController@store')->name('te.testeq.store');
        Route::post('/techincal-engineering/test-equipment/update','TeTestEqController@update')->name('te.testeq.update');
        Route::post('/techincal-engineering/test-equipment/revision_approve','TeTestEqController@revision_approve')->name('te.testeq.revision_approve');
        Route::get('/techincal-engineering/test-equipment/delete/{id}','TeTestEqController@delete')->name('te.testeq.delete');

<li class="menu-item menu-item-submenu" data-menu-toggle="hover" aria-haspopup="true">
                                                    <a href="{{route('te.instrument.index')}}" class="menu-link">
                                                    <span class="svg-icon menu-icon">
															<!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Add-user.svg-->

                                                        <!--end::Svg Icon-->
														</span>
                                                        <span class="menu-text">Instrumentation</span>
                                                    </a>
                                                </li>
                                                <li class="menu-item menu-item-submenu" data-menu-toggle="hover" aria-haspopup="true">
                                                    <a href="{{route('te.testeq.index')}}" class="menu-link">
                                                    <span class="svg-icon menu-icon">
															<!--begin::Svg Icon | path:assets/media/svg/icons/Communication/Add-user.svg-->

                                                        <!--end::Svg Icon-->
														</span>
                                                        <span class="menu-text">Test Equipment</span>
                                                    </a>
                                                </li>

CREATE TABLE IF NOT EXISTS `te_items_testeq` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_code` varchar(500) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id_main` int(11) DEFAULT NULL,
  `item_type` varchar(50) DEFAULT NULL,
  `item_series` varchar(50) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL COMMENT 'isi kategori ada di file categories.php',
  `type_id` int(11) DEFAULT NULL,
  `uom` varchar(12) NOT NULL COMMENT 'unit of measurement. misal: kg, unit, pcs, galon, box dsb.',
  `uom2` varchar(12) NOT NULL,
  `conversion` int(11) NOT NULL,
  `price2` float NOT NULL,
  `price` int(11) NOT NULL,
  `supplier` int(11) DEFAULT NULL,
  `minimal_stock` int(11) NOT NULL,
  `created_by` varchar(32) NOT NULL COMMENT 'utk nyimpan info username pembuat record',
  `created_time` datetime NOT NULL COMMENT 'menyimpan info waktu simpan record',
  `notes` text NOT NULL,
  `specification` text NOT NULL,
  `picture` text NOT NULL,
  `last_wh` int(11) DEFAULT NULL COMMENT 'lokasi warehouse terakhir',
  `data_sheet` text,
  `serial_number` varchar(50) DEFAULT NULL,
  `location` varchar(10) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `bast` varchar(250) DEFAULT NULL,
  `holder` varchar(100) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `penalty` varchar(200) DEFAULT NULL,
  `created_at` DATETIME NULL DEFAULT NULL,
  `deleted_at` DATETIME NULL DEFAULT NULL,
  `deleted_by` VARCHAR(50) NULL DEFAULT NULL,
  `updated_at` DATETIME NULL DEFAULT NULL,
  `updated_by` VARCHAR(50) NULL DEFAULT NULL,
    `company_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=UTF8MB4_UNICODE_CI;

CREATE TABLE IF NOT EXISTS `te_items_testeq_update` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) NOT NULL DEFAULT '0',
  `item_code` varchar(500) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id_main` int(11) DEFAULT NULL,
  `item_type` varchar(50) DEFAULT NULL,
  `item_series` varchar(50) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL COMMENT 'isi kategori ada di file categories.php',
  `type_id` int(11) DEFAULT NULL,
  `uom` varchar(12) NOT NULL COMMENT 'unit of measurement. misal: kg, unit, pcs, galon, box dsb.',
  `uom2` varchar(12) NOT NULL,
  `conversion` int(11) NOT NULL,
  `price2` float NOT NULL,
  `price` int(11) NOT NULL,
  `supplier` int(11) DEFAULT NULL,
  `minimal_stock` int(11) NOT NULL,
  `created_by` varchar(32) NOT NULL COMMENT 'utk nyimpan info username pembuat record',
  `created_time` datetime NOT NULL COMMENT 'menyimpan info waktu simpan record',
  `notes` text NOT NULL,
  `specification` text NOT NULL,
  `picture` text NOT NULL,
  `data_sheet` text,
  `last_wh` int(11) DEFAULT NULL COMMENT 'lokasi warehouse terakhir',
  `serial_number` varchar(50) DEFAULT NULL,
  `location` varchar(10) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `bast` varchar(250) DEFAULT NULL,
  `holder` varchar(100) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `penalty` varchar(200) DEFAULT NULL,
  `approved_by` varchar(200) DEFAULT NULL,
  `approved_time` datetime DEFAULT NULL,
  `created_at` DATETIME NULL DEFAULT NULL,
  `deleted_at` DATETIME NULL DEFAULT NULL,
  `deleted_by` VARCHAR(50) NULL DEFAULT NULL,
  `updated_at` DATETIME NULL DEFAULT NULL,
  `updated_by` VARCHAR(50) NULL DEFAULT NULL,
    `company_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=UTF8MB4_UNICODE_CI;

CREATE TABLE IF NOT EXISTS `te_items_instrument_update` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_id` int(11) DEFAULT '0',
  `item_code` varchar(500) DEFAULT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id_main` int(11) DEFAULT NULL,
  `item_type` varchar(50) DEFAULT NULL,
  `item_series` varchar(50) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL COMMENT 'isi kategori ada di file categories.php',
  `type_id` int(11) DEFAULT NULL,
  `uom` varchar(12) DEFAULT NULL COMMENT 'unit of measurement. misal: kg, unit, pcs, galon, box dsb.',
  `uom2` varchar(12) DEFAULT NULL,
  `conversion` int(11) DEFAULT NULL,
  `price2` float DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `supplier` int(11) DEFAULT NULL,
  `minimal_stock` int(11) DEFAULT NULL,
  `created_by` varchar(32) NOT NULL COMMENT 'utk nyimpan info username pembuat record',
  `created_time` datetime NOT NULL COMMENT 'menyimpan info waktu simpan record',
  `notes` text NOT NULL,
  `specification` text NOT NULL,
  `picture` text NOT NULL,
  `last_wh` int(11) DEFAULT NULL COMMENT 'lokasi warehouse terakhir',
  `serial_number` varchar(50) DEFAULT NULL,
  `location` varchar(10) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `bast` varchar(250) DEFAULT NULL,
  `holder` varchar(100) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `penalty` varchar(200) DEFAULT NULL,
  `approved_by` varchar(200) DEFAULT NULL,
  `approved_time` datetime DEFAULT NULL,
  `datasheet` text,
  `created_at` DATETIME NULL DEFAULT NULL,
  `deleted_at` DATETIME NULL DEFAULT NULL,
  `deleted_by` VARCHAR(50) NULL DEFAULT NULL,
  `updated_at` DATETIME NULL DEFAULT NULL,
  `updated_by` VARCHAR(50) NULL DEFAULT NULL,
  `company_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=UTF8MB4_UNICODE_CI;


CREATE TABLE IF NOT EXISTS `te_items_instrument` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `item_code` varchar(500) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `id_main` int(11) DEFAULT NULL,
  `item_type` varchar(50) DEFAULT NULL,
  `item_series` varchar(50) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL COMMENT 'isi kategori ada di file categories.php',
  `type_id` int(11) DEFAULT NULL,
  `uom` varchar(12) DEFAULT NULL COMMENT 'unit of measurement. misal: kg, unit, pcs, galon, box dsb.',
  `uom2` varchar(12) DEFAULT NULL,
  `conversion` int(11) DEFAULT NULL,
  `price2` float DEFAULT NULL,
  `price` int(11) DEFAULT NULL,
  `supplier` int(11) DEFAULT NULL,
  `minimal_stock` int(11) DEFAULT NULL,
  `created_by` varchar(32) DEFAULT NULL COMMENT 'utk nyimpan info username pembuat record',
  `created_time` datetime DEFAULT NULL COMMENT 'menyimpan info waktu simpan record',
  `notes` text,
  `specification` text,
  `picture` text,
  `last_wh` int(11) DEFAULT NULL COMMENT 'lokasi warehouse terakhir',
  `serial_number` varchar(50) DEFAULT NULL,
  `location` varchar(10) DEFAULT NULL,
  `purchase_date` date DEFAULT NULL,
  `bast` varchar(250) DEFAULT NULL,
  `holder` varchar(100) DEFAULT NULL,
  `condition` varchar(10) DEFAULT NULL,
  `penalty` varchar(200) DEFAULT NULL,
  `datasheet` text,
  `created_at` DATETIME NULL DEFAULT NULL,
  `deleted_at` DATETIME NULL DEFAULT NULL,
  `deleted_by` VARCHAR(50) NULL DEFAULT NULL,
  `updated_at` DATETIME NULL DEFAULT NULL,
  `updated_by` VARCHAR(50) NULL DEFAULT NULL,
  `company_id` int(11) NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;
