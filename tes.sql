public function getCompany(){
        $users = ConfigCompany::all();
        $data = [];
        foreach ($users as $value){
            $data[] = array(
                "id" => $value->id,
                "text" => $value->company_name
            );
        }
        return response()->json($data);
    }

    public function getUsers($id_company){
        $arr = array(
            'company_id' => $id_company,
        );

        $users = User::where($arr)->get();
        $data = [];
        foreach ($users as $value){
            $data[] = array(
                "id" => $value->id,
                "text" => $value->name
            );
        }
        return response()->json($data);
    }
