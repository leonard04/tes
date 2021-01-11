
        Route::get('/user/getuser/{id_company}','UsersController@getUsers')->name('user.getUsers');
        Route::get('/user/getcompany_name','UsersController@getCompany')->name('user.getCompany');
        
        if (isset($request->export)){
//            dd(base64_decode($request->coid));
//            dd($request);
            $user = User::where('id', $request->user_company)->first();
//            dd($user);
            $userNew = new User();
            $userNew->name = $user->name;
            $userNew->password = $user->password;
            $userNew->username = $user->username;
            $userNew->email = $user->email;
            $userNew->company_id = base64_decode($request->coid);
//            $userNew->ein = $user->ein;
            $userNew->id_rms_roles_divisions = $user->id_rms_roles_divisions;
            $userNew->save();

        } else {
            $name = $request->name;
            $email = $request->email;
            $username = $request->username;
            $password = Hash::make($request->password);
            // $position = $request->position;
            $id = base64_decode($request->coid);

            $user = new User;
            $user->name = $name;
            $user->email = $email;
            $user->username = $username;
            $user->password = $password;
            // $user->position = $position;
            $user->id_rms_roles_divisions = $request->userRoleAdd;
            $user->company_id = $id;
            $user->save();

            //Add user privilege based on position
            $roleDivPriv = RolePrivilege::select('id_rms_modules', 'id_rms_actions')
                ->where('id_rms_roles_divisions', $request->userRoleAdd)
                ->get();
            foreach ($roleDivPriv as $key => $valDivPriv)
            {
                $addUserRole = new UserPrivilege;
                $addUserRole->id_users = $user->id;
                $addUserRole->id_rms_modules = $valDivPriv->id_rms_modules;
                $addUserRole->id_rms_actions = $valDivPriv->id_rms_actions;
                $addUserRole->save();
            }
        }
                               
                               
                               
        $arr = array();

            $users = User::where('username', Auth::user()->username)->get();
//            dd($users);

            foreach ($users as $k => $val){
                array_push( $arr ,$val->company_id);
            }

            Session::put('comp_user', $arr);
//            dd($_SESSION['comp_user']);
                           
                           
                           
                           
                           
                           
                           
                           
                           
                           
                           
                           
             @if(Auth::user()->username != 'cypher')<!--c4only-->
                                            @foreach(Session::get('comp_user') as $k => $valK)
                                                @foreach($comp as $value)
                                                    @if($value->id == $valK)
                                                        <div class="d-flex align-items-center mb-6">
                                                            <div class="symbol symbol-40 symbol-light-primary mr-5">
                                                                <span class="symbol-label">
                                                                    <span class="svg-icon svg-icon-lg svg-icon-primary">
                                                                        <img src='{{str_replace("public", "public_html", asset('images/'.$value->app_logo))}}' height='30px' alt="Company Logo"/>
                                                                    </span>
                                                                </span>
                                                            </div>
                                                            <div class="d-flex flex-column font-weight-bold">
                                                                <a href="{{URL::route('company.switch')."?id=".$value->id}}" class="text-dark text-hover-primary mb-1 font-size-lg">
                                                                    {{$value->company_name}}
                                                                </a>
                                                            </div>
                                                        </div>
                                                    @endif
                                                @endforeach
                                            @endforeach
                                        @else
                                            @foreach($comp as $value)
                                                <div class="d-flex align-items-center mb-6">
                                                    <div class="symbol symbol-40 symbol-light-primary mr-5">
                                                                <span class="symbol-label">
                                                                    <span class="svg-icon svg-icon-lg svg-icon-primary">
                                                                        <img src='{{str_replace("public", "public_html", asset('images/'.$value->app_logo))}}' height='30px' alt="Company Logo"/>
                                                                    </span>
                                                                </span>
                                                    </div>
                                                    <div class="d-flex flex-column font-weight-bold">
                                                        <a href="{{URL::route('company.switch')."?id=".$value->id}}" class="text-dark text-hover-primary mb-1 font-size-lg">
                                                            {{$value->company_name}}
                                                        </a>
                                                    </div>
                                                </div>

                                            @endforeach
                                        @endif
