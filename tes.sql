@extends('layouts.template')
@section('content')
    <div class="card card-custom gutter-b">
        <div class="card-header">
            <div class="card-title">
                <h3>{{($type == 'input')? 'Add': 'Edit'}} Daily Report</h3><br>
            </div>
        </div>
        <div class="card-body">
            <form method="post" action="{{route('general.dr.store')}}" enctype="multipart/form-data">
                @csrf
                <input type="hidden" name="type" id="type" value="{{$type}}">
                <input type="hidden" name="id" id="id" value="{{($type=='edit')?$report->id:0}}">
                <h4>Detail</h4>
                <hr>
                <div class="form-group row">
                    <label class="col-md-2 col-form-label text-right">Report By</label>
                    <div class="col-md-6">
                        <input type="text" class="form-control" name="report_by" @if(isset($addmore) && $addmore == 1) value="{{$report_by}}" @else @if($type=='edit') value="{{$report->create_by}}" @else value="{{\Illuminate\Support\Facades\Auth::user()->username}}" @endif @endif readonly>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-md-2 col-form-label text-right">Division</label>
                    <div class="col-md-6">
                        <select name="divisions" class="form-control">
                            @foreach($divisions as $val)
                                <option value="{{$val}}" @if(isset($addmore) && $addmore == 1) @if($division == $val) selected @endif @else @if($type=='edit') @if($report->rpt_wh == $val) SELECTED @endif @endif @endif>{{$val}}</option>
                            @endforeach
                        </select>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-md-2 col-form-label text-right">Report Date</label>
                    <div class="col-md-6">
                        <input type="date" class="form-control" name="report_date" @if(isset($addmore) && $addmore == 1) value="{{$report_date}}" @else @if($type=='edit') value="{{date('Y-m-d',strtotime($report->rpt_time))}}" @endif @endif required>
                    </div>
                </div>
                <div class="form-group row">
                    <label class="col-md-2 col-form-label text-right">Location</label>
                    <div class="col-md-6">
                        <input type="text" class="form-control" name="location" @if(isset($addmore) && $addmore == 1) value="{{$location}}" @else @if($type=='edit') value="{{$report->rpt_text}}" @endif @endif required>
                    </div>
                </div>
                <br><br>
                <h4>Report Content</h4>
                <hr>


                @for($i = 0; $i<$count_activity; $i++)
                    @if(isset($addmore) && $addmore == 1)
                        @if(!($rpt_to[$i] == "" && $i != (count($rpt_to)-1)))

                            <div class="form-group row">
                                <div class="col-md-2">
                                    <input type="time" class="form-control" id="rep_from[{{$i}}]" name="rep_from[]" value="{{$rpt_from[$i]}}" required>
                                </div>
                                <div class="col-md-2">
                                    <input type="time" class="form-control" id="rep_to[{{$i}}]" name="rep_to[]" value="{{$rpt_to[$i]}}" placeholder="hh:mm" required>
                                </div>
                                <div class="col-md-8">
                                    <textarea class="form-control" id="rep_desc[{{$i}}]" name="rep_desc[]">{{$rpt_desc[$i]}}</textarea>
                                </div>
                            </div>
                        @endif
                    @else
                        @if($type != 'edit')
                        <div class="form-group row">
                            <div class="col-md-2">
                                <input type="time" class="form-control" id="rep_from[{{$i}}]" name="rep_from[]" placeholder="hh:mm" required>
                            </div>
                            <div class="col-md-2">
                                <input type="time" class="form-control" id="rep_to[{{$i}}]" name="rep_to[]" placeholder="hh:mm" required>
                            </div>
                            <div class="col-md-8">
                                <textarea class="form-control" id="rep_desc[{{$i}}]" name="rep_desc[]"></textarea>
                            </div>
                        </div>
                        @endif
                    @endif
                @endfor
                @if($type == 'edit')
                    @if(!(isset($addmore) && $addmore == 1))
                    @foreach($activity as $key => $value)
                        <div class="form-group row">
                            <div class="col-md-2">
                                <input type="time" class="form-control" id="rep_from[{{$i}}]" name="rep_from[]" value="{{$value->rep_from}}" placeholder="hh:mm" required>
                            </div>
                            <div class="col-md-2">
                                <input type="time" class="form-control" id="rep_to[{{$i}}]" name="rep_to[]" value="{{$value->rep_to}}" placeholder="hh:mm" required>
                            </div>
                            <div class="col-md-8">
                                <textarea class="form-control" id="rep_desc[{{$i}}]" name="rep_desc[]">{{$value->rep_desc}}</textarea>
                            </div>
                        </div>
                    @endforeach
                    @endif
                @endif

                <div class="form-group row">
                    <div class="col-md-2"></div>
                    <div class="col-md-2"></div>
                    <div class="col-md-8 text-right">
                        <button type="submit" name="add_activity" value="add_activity" class="btn btn-primary font-weight-bold pull-right">
                            Add More
                        </button>

                    </div>
                </div>

                <br><br>
                <hr>
                <h4>Attach File</h4>

                <div class="form-group">
                    <label class="col-md-6 col-form-label text-right"><em>Max image size is 2mb Only JPG, JPEG, PNG & GIF</em></label>
                </div>
                <div class="form-group row">
                    <div class="col-md-4"></div>
                    <div class="col-md-4">
                        <input type="file" name="attachment[]" class="form-control" accept="image/*"/> <br>
                        <button id="add_more" class="btn btn-primary btn-sm text-right">Add More Files</button>
                        <br><br><br>
                        <table>
                            <tr>
                                @if($type == 'edit')
                                @foreach($attach as $key => $val)
                                    <td><a href="{{route('download',$val->filename)}}" class="btn btn-info"><i class="fa fa-download"></i>&nbsp; Download File</a>
                                        <br></td>
                                @endforeach
                                @endif
                            </tr>
                        </table>

                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-6 text-right">

                        <button type="submit" name="submitAll" class="btn btn-success font-weight-bold pull-right">
                            <i class="fa fa-check"></i>
                            {{($type=='input')?'Save':'Update'}}
                        </button>

                    </div>
                </div>

            </form>
        </div>
    </div>
@endsection
@section('custom_script')
    <script src="{{asset('theme/tinymce/tinymce.min.js')}}"></script>
    <script type="text/javascript">
        $(document).ready(function() {
            tinymce.init({
                editor_selector : ".form-control",
                selector:'textarea',
                mode : "textareas",
            })
            $('#add_more').click(function(e){
                e.preventDefault();
                $(this).before("<div class='col-md-12'><input name='attachment[]' type='file' class='form-control' accept='image/*'/></div><br>");
            });
        });


    </script>
@endsection
