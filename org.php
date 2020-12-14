        Route::get('/general/do/getItems/{id_wh}','GeneralDOController@getItems')->name('do.items');


public function getItems($id_wh){
//        dd($id_wh);
        $items = Asset_item::leftJoin('asset_qty_wh as qty_wh','qty_wh.item_id','=','asset_items.id')
            ->where('asset_items.company_id', \Session::get('company_id'))
            ->where('asset_items.item_code','like','%'.$_GET['term'].'%')
            ->orWhere('asset_items.name','like','%'.$_GET['term'].'%')
            ->where('qty_wh.wh_id', $id_wh)
            ->get();
//        dd($items);
        $return_arr =[];
        foreach ($items as $key => $item){
            $row_array['item_category'] = $item->category_id;
            $row_array['item_id'] = $item->id;
            $row_array['item_name'] = $item->name;
            $row_array['item_code'] = $item->item_code;
            $row_array['item_uom'] = trim($item->uom);
            $row_array['item_qoh'] = $item->qty;
            $row_array['item_type'] = $item->type_id;


            $row_array['value'] = $item->item_code." / ".$item->name." (".trim($item->uom).")";

            array_push($return_arr, $row_array);
        }
        echo json_encode($return_arr);
    }
