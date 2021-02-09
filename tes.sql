 ///Daily Report
        Route::get('/general/daily-report','GeneralDailyReport@index')->name('general.dr');
        Route::get('/general/daily-report/view/{id?}','GeneralDailyReport@viewPage')->name('general.dr.view');
        Route::post('/general/daily-report/post','GeneralDailyReport@store')->name('general.dr.store');
