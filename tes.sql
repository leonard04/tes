
        Route::get('/general/sowaiting','AssetSreController@getSoWaiting')->name('so.waiting');
        Route::get('/general/sobank','AssetSreController@getSoBank')->name('so.bank');
        Route::get('/general/soreject','AssetSreController@getSoReject')->name('so.rejected');
        
        Route::get('/general/frwatings', 'AssetPreController@getFrWaiting')->name('fr.getFrWaiting');
        Route::get('/general/frbanks', 'AssetPreController@getFrBank')->name('fr.getFrBank');
        Route::get('/general/frrejects', 'AssetPreController@getFrReject')->name('fr.getFrReject');
