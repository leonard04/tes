// Items
        Route::get('/asset/items/item_code','AssetItemsController@itemCodeFunction')->name('items.itemCodeFunction');
        Route::get('/asset/items/list', 'AssetItemsController@indexInventory')->name('items.inventory');
        Route::get('/asset/items/list/withcategory/{category?}/{classification?}', 'AssetItemsController@index')->name('items.index');
        Route::get('/asset/items/list/class/{category?}','AssetItemsController@indexClassification')->name('items.class.index');
        Route::post('/asset/items', 'AssetItemsController@addItem')->name('items.add');
        Route::post('/asset/items/find', 'AssetItemsController@find_item')->name('items.find');
        Route::post('/asset/items/edit', 'AssetItemsController@edit_item')->name('items.edit');
        Route::post('/asset/items/delete', 'AssetItemsController@delete')->name('items.delete');
        Route::get('/asset/items/revision', 'AssetItemsController@revision')->name('items.revision');
        Route::get('/asset/items/revision/{id}', 'AssetItemsController@revision_detail')->name('items.revision_detail');
        Route::post('/asset/items/revision/update', 'AssetItemsController@revision_update')->name('items.revision_update');
        Route::post('/asset/items/revision/delete', 'AssetItemsController@revision_delete')->name('items.revision_delete');
        Route::get('/asset/items/list/warehouse/list/{id_wh}', 'AssetItemsController@getItemWh')->name('items.warehouses');
        Route::get('/asset/items/transaction/find/{id?}', 'AssetItemsController@find_transaction')->name('items.find_transaction');

        //category
        Route::get('/asset/items','AssetNewCategoryController@index')->name('category.index');
        Route::get('/asset/items/category','AssetNewCategoryController@getCategory')->name('category.get');
        Route::post('/asset/items/category/update','AssetNewCategoryController@update')->name('category.update');
        Route::post('/asset/items/category/store','AssetNewCategoryController@store')->name('category.store');
        Route::get('/asset/items/category/{id}/del','AssetNewCategoryController@delete')->name('category.del');
        Route::get('/asset/items/category/cari','AssetNewCategory@loadData')->name('category.cari');

        //Classification
        Route::get('/asset/items/classification/{category?}','AssetItemsClassificationController@index')->name('item_class.index');
        Route::get('/asset/items/classification/getclassification/{id}','AssetItemsClassificationController@getClassification')->name('item_class.getclass');
        Route::post('/asset/items/classification/store','AssetItemsClassificationController@store')->name('item_class.store');
        Route::post('/asset/items/classification/update','AssetItemsClassificationController@update')->name('item_class.update');
        Route::get('/asset/items/classification/delete/{id}','AssetItemsClassificationController@delete')->name('item_class.delete');
