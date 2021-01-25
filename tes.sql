<div class ="tab-pane fade" id="insurance-management" role="tabpanel">
                        @if(!(session()->has('seckey_empfin')) || (session()->has('seckey_empfin') < 10))
                            <div class="card-header py-3">
                                <div class="row">
                                    <div class="card-title align-items-start flex-column col-md-10">
                                        <h3 class="card-label font-weight-bolder text-dark">RESTRICTED AREA</h3>
                                    </div>
                                </div>
                            </div>
                            <div class="card-body">
                                <h4>You need to register your security key first<br /><br />Thank you</h4>
                                <hr />
                                <br />

                                <h4>Input Password : </h4>
                                <form action='{{route('emp_fin.needsec.submit')}}' method='POST' class='col-md-4'>
                                    @csrf
                                    <input type='password' class='form-control' name='searchInput' id='search' required>
                                    <input type='submit' class='form-control btn btn-success' name='submit' id='submit' value='Login'>
                                </form>
                            </div>
                        @else
                            <div class="card-header py-3">
                                <div class="row">
                                    <div class="card-title align-items-start flex-column col-md-10">
                                        <h3 class="card-label font-weight-bolder text-dark">Insurance Management</h3>
                                    </div>
                                </div>
                            </div>
                            <form method="post" action="{{route('employee.updateInsurance',['id' =>$emp_detail->id])}}">
                                @csrf
                                <input type="hidden" name="id" value="{{$emp_detail->id}}">
                                <div class="card-body">
                                    <div class="row">
                                        <div class="col-md-6">
                                            <div class="ml-48">
                                                <h4><b>Allowance</b></h4>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputEmail3" class="col-sm-3 control-label">BPJS TK</label>
                                                <div class="col-sm-8">
                                                    <input type="number" class="form-control" name="allow_bpjs_tk" id="allow_bpjs_tk" placeholder="" required value="{{$emp_detail->allow_bpjs_tk}}">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputEmail3" class="col-sm-3 control-label">BPJS KES</label>
                                                <div class="col-sm-8">
                                                    <input type="number" class="form-control" name="allow_bpjs_kes" id="allow_bpjs_kes" placeholder="" value="{{$emp_detail->allow_bpjs_kes}}">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputEmail3" class="col-sm-3 control-label">JSHK</label>
                                                <div class="col-sm-8">
                                                    <input type="number" class="form-control" name="allow_jshk" id="allow_jshk" placeholder="" value="{{$emp_detail->allow_jshk}}">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputEmail3" class="col-sm-3 control-label">PPH21</label>
                                                <div class="col-sm-8">

                                                </div>
                                            </div>

                                        </div>
                                        <div class="col-md-6">
                                            <div class="ml-48">
                                                <h4><b>Deduction</b></h4>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputEmail3" class="col-sm-3 control-label"></label>
                                                <div class="col-sm-8">
                                                    <input type="number" class="form-control" name="deduc_bpjs_tk" id="deduc_bpjs_tk" placeholder="" value="{{$emp_detail->deduc_bpjs_tk}}">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputEmail3" class="col-sm-3 control-label"></label>
                                                <div class="col-sm-8">
                                                    <input type="number" class="form-control" name="deduc_bpjs_kes" id="deduc_bpjs_kes" placeholder="" value="{{$emp_detail->deduc_bpjs_kes}}">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputEmail3" class="col-sm-3 control-label"></label>
                                                <div class="col-sm-8">
                                                    <input type="number" class="form-control" name="deduc_jshk" id="deduc_jshk" placeholder="" value="{{$emp_detail->deduc_jshk}}">
                                                </div>
                                            </div>
                                            <div class="form-group">
                                                <label for="inputEmail3" class="col-sm-3 control-label"></label>
                                                <div class="col-sm-8">
                                                    <input type="number" class="form-control" name="deduc_pph21" id="deduc_pph21" placeholder="" value="{{$emp_detail->deduc_pph21}}">
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="card-footer">
                                    <button type="submit" name="submit" class="btn btn-success font-weight-bold">
                                        <i class="fa fa-check"></i>
                                        Update</button>
                                </div>
                            </form>
                        @endif

                    </div>
                    
                                                                   
                  <li class="nav-item mb-2">
                            <a href="#insurance-management" data-toggle="tab" class="nav-link py-4">
							<span class="nav-icon mr-2">
								<span class="svg-icon">
									<!--begin::Svg Icon | path:C:\wamp64\www\keenthemes\themes\metronic\theme\html\demo7\dist/../src/media/svg/icons\Shopping\Money.svg-->
									<i class="fa fa-money-check"></i>
								</span>
							</span>
                                <span class="nav-text font-size-lg">Insurance Management</span>
                            </a>
                        </li>                                                 
                                                                   
                public function updateInsurance(Request $request){
        Hrd_employee::where('id',$request['id'])
            ->update([
                'allow_bpjs_tk' => ($request->input('allow_bpjs_tk')) ? $request->input('allow_bpjs_tk') : 0,
                'deduc_bpjs_tk' => ($request->input('deduc_bpjs_tk')) ? $request->input('deduc_bpjs_tk') : 0,
                'allow_bpjs_kes' => ($request->input('allow_bpjs_kes')) ? $request->input('allow_bpjs_kes') : 0,
                'deduc_bpjs_kes' => ($request->input('deduc_bpjs_kes')) ? $request->input('deduc_bpjs_kes') : 0,
                'allow_jshk' => ($request->input('allow_jshk')) ? $request->input('allow_jshk') : 0,
                'deduc_jshk' => ($request->input('deduc_jshk')) ? $request->input('deduc_jshk') : 0,
                'deduc_pph21' => ($request->input('deduc_pph21')) ? $request->input('deduc_pph21') : 0,
            ]);
        return redirect()->route('employee.detail',['id'=>$request['id']]);
    }
                                                                   
          Route::post('/hrd/employee/{id}/updateInsurance','HrdEmployeeController@updateInsurance')->name('employee.updateInsurance');
                                                                 
