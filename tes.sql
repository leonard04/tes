
$vendor = Procurement_vendor::where('category', 'Supplier')->get();
        
        $childs = array();
        if (Session::get('company_child') != null){
            foreach (Session::get('company_child') as $item) {
                $childs[] = $item->id;
            }
            array_push($childs, Session::get('company_id'));
        }

        $_comp = ConfigCompany::select('id_parent')
            ->whereNotNull('id_parent')
            ->whereNotNull('inherit')
            ->where('id', Session::get('company_id'))
            ->get();
        foreach ($_comp as $item){
            $childs[] = $item->id_parent;
        }
        

        $items = Asset_item::leftJoin('new_category as cat','cat.id','=','asset_items.category_id')
            ->select('asset_items.*','cat.name as catName')
            ->where('asset_items.category_id', $category)
            ->where('asset_items.class_id', $classification)
            ->whereIn('company_id', $childs)
            ->whereNull('asset_items.deleted_at')->get();
        $itemsup = Asset_item_update::where('approved_by', null)
            ->whereIn('company_id', $childs)
            ->get();
        $warehouses = Asset_wh::whereIn('company_id', $childs)->get();


        $cat = Asset_new_category::where('id', $category)->first();
        $class = Asset_item_classification::all();

        return view('items.index', [
            'vendor' => $vendor,
            'items' => $items,
            'itemsup' => count($itemsup),
            'categories' => $cat,
            'warehouses' => $warehouses,
            'classification' => $class,
            'class' => $classification,
        ]);
