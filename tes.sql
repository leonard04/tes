@extends('layouts.template')
@section('content')
    <div class="card card-custom gutter-b">
        <div class="card-header">
            <div class="card-title">
                Daily Report
            </div>

            <div class="card-toolbar">
                <div class="btn-group" role="group" aria-label="Basic example">
                    <a href="{{route('general.dr.view')}}" class="btn btn-primary" ><i class="fa fa-plus"></i>New Record</a>
                </div>
                <!--end::Button-->
            </div>

        </div>

        <div class="card-body">
            <ul class="nav nav-tabs" id="myTab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#all">
                        <span class="nav-icon">
                            <i class="flaticon-folder-1"></i>
                        </span>
                        <span class="nav-text">All</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#asset" aria-controls="profile">
                        <span class="nav-icon">
                            <i class="flaticon-folder-2"></i>
                        </span>
                        <span class="nav-text">Asset</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#finance" aria-controls="profile">
                        <span class="nav-icon">
                            <i class="flaticon-folder-3"></i>
                        </span>
                        <span class="nav-text">Finance</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#hrd" aria-controls="profile">
                        <span class="nav-icon">
                            <i class="flaticon-folder-3"></i>
                        </span>
                        <span class="nav-text">HRD</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#hse" aria-controls="profile">
                        <span class="nav-icon">
                            <i class="flaticon-folder-3"></i>
                        </span>
                        <span class="nav-text">HSE</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#it" aria-controls="profile">
                        <span class="nav-icon">
                            <i class="flaticon-folder-3"></i>
                        </span>
                        <span class="nav-text">IT</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#laboratory" aria-controls="profile">
                        <span class="nav-icon">
                            <i class="flaticon-folder-3"></i>
                        </span>
                        <span class="nav-text">Laboratory</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#marketing" aria-controls="profile">
                        <span class="nav-icon">
                            <i class="flaticon-folder-3"></i>
                        </span>
                        <span class="nav-text">Marketing</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#operation" aria-controls="profile">
                        <span class="nav-icon">
                            <i class="flaticon-folder-3"></i>
                        </span>
                        <span class="nav-text">Operation</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#procurement" aria-controls="profile">
                        <span class="nav-icon">
                            <i class="flaticon-folder-3"></i>
                        </span>
                        <span class="nav-text">Procurement</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#te" aria-controls="profile">
                        <span class="nav-icon">
                            <i class="flaticon-folder-3"></i>
                        </span>
                        <span class="nav-text">Technical Engineering</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#technology" aria-controls="profile">
                        <span class="nav-icon">
                            <i class="flaticon-folder-3"></i>
                        </span>
                        <span class="nav-text">Technology</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#911" aria-controls="profile">
                        <span class="nav-icon">
                            <i class="flaticon-folder-3"></i>
                        </span>
                        <span class="nav-text">911</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#mb" aria-controls="profile">
                        <span class="nav-icon">
                            <i class="flaticon-folder-3"></i>
                        </span>
                        <span class="nav-text">MB</span>
                    </a>
                </li>
            </ul>
            <div class="tab-content mt-5" id="myTabContent">
                <div class="tab-pane fade show active" id="all" role="tabpanel" aria-labelledby="home-tab">
                    <div id="kt_datatable_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                        <table class="table table-bordered table-hover display font-size-sm " style="margin-top: 13px !important; width: 100%;">
                            <thead>
                            <tr>
                                <th class="text-center">#</th>
                                <th nowrap="nowrap" class="text-center">Report By</th>
                                <th nowrap="nowrap" class="text-center">Report Date</th>
                                <th nowrap="nowrap" class="text-center">Division</th>
                                <th nowrap="nowrap" class="text-center" style="width: 25%">Subject</th>
                                <th nowrap="nowrap" class="text-center">Approval</th>
                                <th nowrap="nowrap" class="text-center">#</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($all as $key => $value)
                                <tr>
                                    <td class="text-center">{{($key+1)}}</td>
                                    <td class="text-center">{{$value->create_by}}</td>
                                    <td class="text-center">{{date('d M Y', strtotime($value->rpt_time))}}</td>
                                    <td class="text-center">{{strtoupper($value->rpt_wh)}}</td>
                                    <td class="text-center"><a href="{{route('general.dr.view',['id' => $value->id])}}" class="btn btn-link">{{strtoupper($value->rpt_subject)}}</a></td>
                                    <td class="text-center">
                                        @if($value->approve_time == null)
                                            <a href="#" class="btn btn-link"><i class="fa fa-clock"></i>&nbsp;waiting</a>
                                        @else
                                            @if($value->approve_time)
                                                {{$value->approve_by}}
                                                <br />
                                                <em style='font-size:10px'>
                                                    {{date('d M Y',strtotime($value->approve_time))}}
                                                </em>
                                            @else
                                                waiting
                                            @endif
                                        @endif
                                    </td>
                                    <td class="text-center">
                                        @if(\Illuminate\Support\Facades\Auth::user()->id_rms_roles_divisions == 1)
                                            <a href="#" class="btn btn-danger btn-sm btn-icon" onclick="return confirm('Are you sure you want to delete?');"><i class="fa fa-trash"></i></a>
                                        @else
                                            -
                                        @endif
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="tab-pane fade" id="asset" role="tabpanel" aria-labelledby="profile-tab">
                    <div id="kt_datatable_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                        <table class="table table-bordered table-hover display font-size-sm " style="margin-top: 13px !important; width: 100%;">
                            <thead>
                            <tr>
                                <th class="text-center">#</th>
                                <th nowrap="nowrap" class="text-center">Report By</th>
                                <th nowrap="nowrap" class="text-center">Report Date</th>
                                <th nowrap="nowrap" class="text-center">Division</th>
                                <th nowrap="nowrap" class="text-center" style="width: 25%">Subject</th>
                                <th nowrap="nowrap" class="text-center">Approval</th>
                                <th nowrap="nowrap" class="text-center">#</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($asset as $key => $value)
                                <tr>
                                    <td class="text-center">{{($key+1)}}</td>
                                    <td class="text-center">{{$value->create_by}}</td>
                                    <td class="text-center">{{date('d M Y', strtotime($value->rpt_time))}}</td>
                                    <td class="text-center">{{strtoupper($value->rpt_wh)}}</td>
                                    <td class="text-center"><a href="{{route('general.dr.view',['id' => $value->id])}}" class="btn btn-link">{{strtoupper($value->rpt_subject)}}</a></td>
                                    <td class="text-center">
                                        @if($value->approve_time == null)
                                            <a href="#" class="btn btn-link"><i class="fa fa-clock"></i>&nbsp;waiting</a>
                                        @else
                                            @if($value->approve_time)
                                                {{$value->approve_by}}
                                                <br />
                                                <em style='font-size:10px'>
                                                    {{date('d M Y',strtotime($value->approve_time))}}
                                                </em>
                                            @else
                                                waiting
                                            @endif
                                        @endif
                                    </td>
                                    <td class="text-center">
                                        @if(\Illuminate\Support\Facades\Auth::user()->id_rms_roles_divisions == 1)
                                            <a href="#" class="btn btn-danger btn-sm btn-icon" onclick="return confirm('Are you sure you want to delete?');"><i class="fa fa-trash"></i></a>
                                        @else
                                            -
                                        @endif
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="tab-pane fade" id="finance" role="tabpanel" aria-labelledby="profile-tab">
                    <div id="kt_datatable_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                        <table class="table table-bordered table-hover display font-size-sm " style="margin-top: 13px !important; width: 100%;">
                            <thead>
                            <tr>
                                <th class="text-center">#</th>
                                <th nowrap="nowrap" class="text-center">Report By</th>
                                <th nowrap="nowrap" class="text-center">Report Date</th>
                                <th nowrap="nowrap" class="text-center">Division</th>
                                <th nowrap="nowrap" class="text-center" style="width: 25%">Subject</th>
                                <th nowrap="nowrap" class="text-center">Approval</th>
                                <th nowrap="nowrap" class="text-center">#</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($finance as $key => $value)
                                <tr>
                                    <td class="text-center">{{($key+1)}}</td>
                                    <td class="text-center">{{$value->create_by}}</td>
                                    <td class="text-center">{{date('d M Y', strtotime($value->rpt_time))}}</td>
                                    <td class="text-center">{{strtoupper($value->rpt_wh)}}</td>
                                    <td class="text-center"><a href="{{route('general.dr.view',['id' => $value->id])}}" class="btn btn-link">{{strtoupper($value->rpt_subject)}}</a></td>
                                    <td class="text-center">
                                        @if($value->approve_time == null)
                                            <a href="#" class="btn btn-link"><i class="fa fa-clock"></i>&nbsp;waiting</a>
                                        @else
                                            @if($value->approve_time)
                                                {{$value->approve_by}}
                                                <br />
                                                <em style='font-size:10px'>
                                                    {{date('d M Y',strtotime($value->approve_time))}}
                                                </em>
                                            @else
                                                waiting
                                            @endif
                                        @endif
                                    </td>
                                    <td class="text-center">
                                        @if(\Illuminate\Support\Facades\Auth::user()->id_rms_roles_divisions == 1)
                                            <a href="#" class="btn btn-danger btn-sm btn-icon" onclick="return confirm('Are you sure you want to delete?');"><i class="fa fa-trash"></i></a>
                                        @else
                                            -
                                        @endif
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="tab-pane fade" id="hrd" role="tabpanel" aria-labelledby="profile-tab">
                    <div id="kt_datatable_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                        <table class="table table-bordered table-hover display font-size-sm " style="margin-top: 13px !important; width: 100%;">
                            <thead>
                            <tr>
                                <th class="text-center">#</th>
                                <th nowrap="nowrap" class="text-center">Report By</th>
                                <th nowrap="nowrap" class="text-center">Report Date</th>
                                <th nowrap="nowrap" class="text-center">Division</th>
                                <th nowrap="nowrap" class="text-center" style="width: 25%">Subject</th>
                                <th nowrap="nowrap" class="text-center">Approval</th>
                                <th nowrap="nowrap" class="text-center">#</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($hrd as $key => $value)
                                <tr>
                                    <td class="text-center">{{($key+1)}}</td>
                                    <td class="text-center">{{$value->create_by}}</td>
                                    <td class="text-center">{{date('d M Y', strtotime($value->rpt_time))}}</td>
                                    <td class="text-center">{{strtoupper($value->rpt_wh)}}</td>
                                    <td class="text-center"><a href="{{route('general.dr.view',['id' => $value->id])}}" class="btn btn-link">{{strtoupper($value->rpt_subject)}}</a></td>
                                    <td class="text-center">
                                        @if($value->approve_time == null)
                                            <a href="#" class="btn btn-link"><i class="fa fa-clock"></i>&nbsp;waiting</a>
                                        @else
                                            @if($value->approve_time)
                                                {{$value->approve_by}}
                                                <br />
                                                <em style='font-size:10px'>
                                                    {{date('d M Y',strtotime($value->approve_time))}}
                                                </em>
                                            @else
                                                waiting
                                            @endif
                                        @endif
                                    </td>
                                    <td class="text-center">
                                        @if(\Illuminate\Support\Facades\Auth::user()->id_rms_roles_divisions == 1)
                                            <a href="#" class="btn btn-danger btn-sm btn-icon" onclick="return confirm('Are you sure you want to delete?');"><i class="fa fa-trash"></i></a>
                                        @else
                                            -
                                        @endif
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="tab-pane fade" id="hse" role="tabpanel" aria-labelledby="profile-tab">
                    <div id="kt_datatable_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                        <table class="table table-bordered table-hover display font-size-sm " style="margin-top: 13px !important; width: 100%;">
                            <thead>
                            <tr>
                                <th class="text-center">#</th>
                                <th nowrap="nowrap" class="text-center">Report By</th>
                                <th nowrap="nowrap" class="text-center">Report Date</th>
                                <th nowrap="nowrap" class="text-center">Division</th>
                                <th nowrap="nowrap" class="text-center" style="width: 25%">Subject</th>
                                <th nowrap="nowrap" class="text-center">Approval</th>
                                <th nowrap="nowrap" class="text-center">#</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($hse as $key => $value)
                                <tr>
                                    <td class="text-center">{{($key+1)}}</td>
                                    <td class="text-center">{{$value->create_by}}</td>
                                    <td class="text-center">{{date('d M Y', strtotime($value->rpt_time))}}</td>
                                    <td class="text-center">{{strtoupper($value->rpt_wh)}}</td>
                                    <td class="text-center"><a href="{{route('general.dr.view',['id' => $value->id])}}" class="btn btn-link">{{strtoupper($value->rpt_subject)}}</a></td>
                                    <td class="text-center">
                                        @if($value->approve_time == null)
                                            <a href="#" class="btn btn-link"><i class="fa fa-clock"></i>&nbsp;waiting</a>
                                        @else
                                            @if($value->approve_time)
                                                {{$value->approve_by}}
                                                <br />
                                                <em style='font-size:10px'>
                                                    {{date('d M Y',strtotime($value->approve_time))}}
                                                </em>
                                            @else
                                                waiting
                                            @endif
                                        @endif
                                    </td>
                                    <td class="text-center">
                                        @if(\Illuminate\Support\Facades\Auth::user()->id_rms_roles_divisions == 1)
                                            <a href="#" class="btn btn-danger btn-sm btn-icon" onclick="return confirm('Are you sure you want to delete?');"><i class="fa fa-trash"></i></a>
                                        @else
                                            -
                                        @endif
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="tab-pane fade" id="it" role="tabpanel" aria-labelledby="profile-tab">
                    <div id="kt_datatable_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                        <table class="table table-bordered table-hover display font-size-sm " style="margin-top: 13px !important; width: 100%;">
                            <thead>
                            <tr>
                                <th class="text-center">#</th>
                                <th nowrap="nowrap" class="text-center">Report By</th>
                                <th nowrap="nowrap" class="text-center">Report Date</th>
                                <th nowrap="nowrap" class="text-center">Division</th>
                                <th nowrap="nowrap" class="text-center" style="width: 25%">Subject</th>
                                <th nowrap="nowrap" class="text-center">Approval</th>
                                <th nowrap="nowrap" class="text-center">#</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($it as $key => $value)
                                <tr>
                                    <td class="text-center">{{($key+1)}}</td>
                                    <td class="text-center">{{$value->create_by}}</td>
                                    <td class="text-center">{{date('d M Y', strtotime($value->rpt_time))}}</td>
                                    <td class="text-center">{{strtoupper($value->rpt_wh)}}</td>
                                    <td class="text-center"><a href="{{route('general.dr.view',['id' => $value->id])}}" class="btn btn-link">{{strtoupper($value->rpt_subject)}}</a></td>
                                    <td class="text-center">
                                        @if($value->approve_time == null)
                                            <a href="#" class="btn btn-link"><i class="fa fa-clock"></i>&nbsp;waiting</a>
                                        @else
                                            @if($value->approve_time)
                                                {{$value->approve_by}}
                                                <br />
                                                <em style='font-size:10px'>
                                                    {{date('d M Y',strtotime($value->approve_time))}}
                                                </em>
                                            @else
                                                waiting
                                            @endif
                                        @endif
                                    </td>
                                    <td class="text-center">
                                        @if(\Illuminate\Support\Facades\Auth::user()->id_rms_roles_divisions == 1)
                                            <a href="#" class="btn btn-danger btn-sm btn-icon" onclick="return confirm('Are you sure you want to delete?');"><i class="fa fa-trash"></i></a>
                                        @else
                                            -
                                        @endif
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="tab-pane fade" id="laboratory" role="tabpanel" aria-labelledby="profile-tab">
                    <div id="kt_datatable_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                        <table class="table table-bordered table-hover display font-size-sm " style="margin-top: 13px !important; width: 100%;">
                            <thead>
                            <tr>
                                <th class="text-center">#</th>
                                <th nowrap="nowrap" class="text-center">Report By</th>
                                <th nowrap="nowrap" class="text-center">Report Date</th>
                                <th nowrap="nowrap" class="text-center">Division</th>
                                <th nowrap="nowrap" class="text-center" style="width: 25%">Subject</th>
                                <th nowrap="nowrap" class="text-center">Approval</th>
                                <th nowrap="nowrap" class="text-center">#</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($laboratory as $key => $value)
                                <tr>
                                    <td class="text-center">{{($key+1)}}</td>
                                    <td class="text-center">{{$value->create_by}}</td>
                                    <td class="text-center">{{date('d M Y', strtotime($value->rpt_time))}}</td>
                                    <td class="text-center">{{strtoupper($value->rpt_wh)}}</td>
                                    <td class="text-center"><a href="{{route('general.dr.view',['id' => $value->id])}}" class="btn btn-link">{{strtoupper($value->rpt_subject)}}</a></td>
                                    <td class="text-center">
                                        @if($value->approve_time == null)
                                            <a href="#" class="btn btn-link"><i class="fa fa-clock"></i>&nbsp;waiting</a>
                                        @else
                                            @if($value->approve_time)
                                                {{$value->approve_by}}
                                                <br />
                                                <em style='font-size:10px'>
                                                    {{date('d M Y',strtotime($value->approve_time))}}
                                                </em>
                                            @else
                                                waiting
                                            @endif
                                        @endif
                                    </td>
                                    <td class="text-center">
                                        @if(\Illuminate\Support\Facades\Auth::user()->id_rms_roles_divisions == 1)
                                            <a href="#" class="btn btn-danger btn-sm btn-icon" onclick="return confirm('Are you sure you want to delete?');"><i class="fa fa-trash"></i></a>
                                        @else
                                            -
                                        @endif
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="tab-pane fade" id="marketing" role="tabpanel" aria-labelledby="profile-tab">
                    <div id="kt_datatable_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                        <table class="table table-bordered table-hover display font-size-sm " style="margin-top: 13px !important; width: 100%;">
                            <thead>
                            <tr>
                                <th class="text-center">#</th>
                                <th nowrap="nowrap" class="text-center">Report By</th>
                                <th nowrap="nowrap" class="text-center">Report Date</th>
                                <th nowrap="nowrap" class="text-center">Division</th>
                                <th nowrap="nowrap" class="text-center" style="width: 25%">Subject</th>
                                <th nowrap="nowrap" class="text-center">Approval</th>
                                <th nowrap="nowrap" class="text-center">#</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($marketing as $key => $value)
                                <tr>
                                    <td class="text-center">{{($key+1)}}</td>
                                    <td class="text-center">{{$value->create_by}}</td>
                                    <td class="text-center">{{date('d M Y', strtotime($value->rpt_time))}}</td>
                                    <td class="text-center">{{strtoupper($value->rpt_wh)}}</td>
                                    <td class="text-center"><a href="{{route('general.dr.view',['id' => $value->id])}}" class="btn btn-link">{{strtoupper($value->rpt_subject)}}</a></td>
                                    <td class="text-center">
                                        @if($value->approve_time == null)
                                            <a href="#" class="btn btn-link"><i class="fa fa-clock"></i>&nbsp;waiting</a>
                                        @else
                                            @if($value->approve_time)
                                                {{$value->approve_by}}
                                                <br />
                                                <em style='font-size:10px'>
                                                    {{date('d M Y',strtotime($value->approve_time))}}
                                                </em>
                                            @else
                                                waiting
                                            @endif
                                        @endif
                                    </td>
                                    <td class="text-center">
                                        @if(\Illuminate\Support\Facades\Auth::user()->id_rms_roles_divisions == 1)
                                            <a href="#" class="btn btn-danger btn-sm btn-icon" onclick="return confirm('Are you sure you want to delete?');"><i class="fa fa-trash"></i></a>
                                        @else
                                            -
                                        @endif
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="tab-pane fade" id="operation" role="tabpanel" aria-labelledby="profile-tab">
                    <div id="kt_datatable_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                        <table class="table table-bordered table-hover display font-size-sm " style="margin-top: 13px !important; width: 100%;">
                            <thead>
                            <tr>
                                <th class="text-center">#</th>
                                <th nowrap="nowrap" class="text-center">Report By</th>
                                <th nowrap="nowrap" class="text-center">Report Date</th>
                                <th nowrap="nowrap" class="text-center">Division</th>
                                <th nowrap="nowrap" class="text-center" style="width: 25%">Subject</th>
                                <th nowrap="nowrap" class="text-center">Approval</th>
                                <th nowrap="nowrap" class="text-center">#</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($operation as $key => $value)
                                <tr>
                                    <td class="text-center">{{($key+1)}}</td>
                                    <td class="text-center">{{$value->create_by}}</td>
                                    <td class="text-center">{{date('d M Y', strtotime($value->rpt_time))}}</td>
                                    <td class="text-center">{{strtoupper($value->rpt_wh)}}</td>
                                    <td class="text-center"><a href="{{route('general.dr.view',['id' => $value->id])}}" class="btn btn-link">{{strtoupper($value->rpt_subject)}}</a></td>
                                    <td class="text-center">
                                        @if($value->approve_time == null)
                                            <a href="#" class="btn btn-link"><i class="fa fa-clock"></i>&nbsp;waiting</a>
                                        @else
                                            @if($value->approve_time)
                                                {{$value->approve_by}}
                                                <br />
                                                <em style='font-size:10px'>
                                                    {{date('d M Y',strtotime($value->approve_time))}}
                                                </em>
                                            @else
                                                waiting
                                            @endif
                                        @endif
                                    </td>
                                    <td class="text-center">
                                        @if(\Illuminate\Support\Facades\Auth::user()->id_rms_roles_divisions == 1)
                                            <a href="#" class="btn btn-danger btn-sm btn-icon" onclick="return confirm('Are you sure you want to delete?');"><i class="fa fa-trash"></i></a>
                                        @else
                                            -
                                        @endif
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="tab-pane fade" id="procurement" role="tabpanel" aria-labelledby="profile-tab">
                    <div id="kt_datatable_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                        <table class="table table-bordered table-hover display font-size-sm " style="margin-top: 13px !important; width: 100%;">
                            <thead>
                            <tr>
                                <th class="text-center">#</th>
                                <th nowrap="nowrap" class="text-center">Report By</th>
                                <th nowrap="nowrap" class="text-center">Report Date</th>
                                <th nowrap="nowrap" class="text-center">Division</th>
                                <th nowrap="nowrap" class="text-center" style="width: 25%">Subject</th>
                                <th nowrap="nowrap" class="text-center">Approval</th>
                                <th nowrap="nowrap" class="text-center">#</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($procurement as $key => $value)
                                <tr>
                                    <td class="text-center">{{($key+1)}}</td>
                                    <td class="text-center">{{$value->create_by}}</td>
                                    <td class="text-center">{{date('d M Y', strtotime($value->rpt_time))}}</td>
                                    <td class="text-center">{{strtoupper($value->rpt_wh)}}</td>
                                    <td class="text-center"><a href="{{route('general.dr.view',['id' => $value->id])}}" class="btn btn-link">{{strtoupper($value->rpt_subject)}}</a></td>
                                    <td class="text-center">
                                        @if($value->approve_time == null)
                                            <a href="#" class="btn btn-link"><i class="fa fa-clock"></i>&nbsp;waiting</a>
                                        @else
                                            @if($value->approve_time)
                                                {{$value->approve_by}}
                                                <br />
                                                <em style='font-size:10px'>
                                                    {{date('d M Y',strtotime($value->approve_time))}}
                                                </em>
                                            @else
                                                waiting
                                            @endif
                                        @endif
                                    </td>
                                    <td class="text-center">
                                        @if(\Illuminate\Support\Facades\Auth::user()->id_rms_roles_divisions == 1)
                                            <a href="#" class="btn btn-danger btn-sm btn-icon" onclick="return confirm('Are you sure you want to delete?');"><i class="fa fa-trash"></i></a>
                                        @else
                                            -
                                        @endif
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="tab-pane fade" id="te" role="tabpanel" aria-labelledby="profile-tab">
                    <div id="kt_datatable_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                        <table class="table table-bordered table-hover display font-size-sm " style="margin-top: 13px !important; width: 100%;">
                            <thead>
                            <tr>
                                <th class="text-center">#</th>
                                <th nowrap="nowrap" class="text-center">Report By</th>
                                <th nowrap="nowrap" class="text-center">Report Date</th>
                                <th nowrap="nowrap" class="text-center">Division</th>
                                <th nowrap="nowrap" class="text-center" style="width: 25%">Subject</th>
                                <th nowrap="nowrap" class="text-center">Approval</th>
                                <th nowrap="nowrap" class="text-center">#</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($te as $key => $value)
                                <tr>
                                    <td class="text-center">{{($key+1)}}</td>
                                    <td class="text-center">{{$value->create_by}}</td>
                                    <td class="text-center">{{date('d M Y', strtotime($value->rpt_time))}}</td>
                                    <td class="text-center">{{strtoupper($value->rpt_wh)}}</td>
                                    <td class="text-center"><a href="{{route('general.dr.view',['id' => $value->id])}}" class="btn btn-link">{{strtoupper($value->rpt_subject)}}</a></td>
                                    <td class="text-center">
                                        @if($value->approve_time == null)
                                            <a href="#" class="btn btn-link"><i class="fa fa-clock"></i>&nbsp;waiting</a>
                                        @else
                                            @if($value->approve_time)
                                                {{$value->approve_by}}
                                                <br />
                                                <em style='font-size:10px'>
                                                    {{date('d M Y',strtotime($value->approve_time))}}
                                                </em>
                                            @else
                                                waiting
                                            @endif
                                        @endif
                                    </td>
                                    <td class="text-center">
                                        @if(\Illuminate\Support\Facades\Auth::user()->id_rms_roles_divisions == 1)
                                            <a href="#" class="btn btn-danger btn-sm btn-icon" onclick="return confirm('Are you sure you want to delete?');"><i class="fa fa-trash"></i></a>
                                        @else
                                            -
                                        @endif
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="tab-pane fade" id="technology" role="tabpanel" aria-labelledby="profile-tab">
                    <div id="kt_datatable_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                        <table class="table table-bordered table-hover display font-size-sm " style="margin-top: 13px !important; width: 100%;">
                            <thead>
                            <tr>
                                <th class="text-center">#</th>
                                <th nowrap="nowrap" class="text-center">Report By</th>
                                <th nowrap="nowrap" class="text-center">Report Date</th>
                                <th nowrap="nowrap" class="text-center">Division</th>
                                <th nowrap="nowrap" class="text-center" style="width: 25%">Subject</th>
                                <th nowrap="nowrap" class="text-center">Approval</th>
                                <th nowrap="nowrap" class="text-center">#</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($technology as $key => $value)
                                <tr>
                                    <td class="text-center">{{($key+1)}}</td>
                                    <td class="text-center">{{$value->create_by}}</td>
                                    <td class="text-center">{{date('d M Y', strtotime($value->rpt_time))}}</td>
                                    <td class="text-center">{{strtoupper($value->rpt_wh)}}</td>
                                    <td class="text-center"><a href="{{route('general.dr.view',['id' => $value->id])}}" class="btn btn-link">{{strtoupper($value->rpt_subject)}}</a></td>
                                    <td class="text-center">
                                        @if($value->approve_time == null)
                                            <a href="#" class="btn btn-link"><i class="fa fa-clock"></i>&nbsp;waiting</a>
                                        @else
                                            @if($value->approve_time)
                                                {{$value->approve_by}}
                                                <br />
                                                <em style='font-size:10px'>
                                                    {{date('d M Y',strtotime($value->approve_time))}}
                                                </em>
                                            @else
                                                waiting
                                            @endif
                                        @endif
                                    </td>
                                    <td class="text-center">
                                        @if(\Illuminate\Support\Facades\Auth::user()->id_rms_roles_divisions == 1)
                                            <a href="#" class="btn btn-danger btn-sm btn-icon" onclick="return confirm('Are you sure you want to delete?');"><i class="fa fa-trash"></i></a>
                                        @else
                                            -
                                        @endif
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="tab-pane fade" id="911" role="tabpanel" aria-labelledby="profile-tab">
                    <div id="kt_datatable_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                        <table class="table table-bordered table-hover display font-size-sm " style="margin-top: 13px !important; width: 100%;">
                            <thead>
                            <tr>
                                <th class="text-center">#</th>
                                <th nowrap="nowrap" class="text-center">Report By</th>
                                <th nowrap="nowrap" class="text-center">Report Date</th>
                                <th nowrap="nowrap" class="text-center">Division</th>
                                <th nowrap="nowrap" class="text-center" style="width: 25%">Subject</th>
                                <th nowrap="nowrap" class="text-center">Approval</th>
                                <th nowrap="nowrap" class="text-center">#</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($_911 as $key => $value)
                                <tr>
                                    <td class="text-center">{{($key+1)}}</td>
                                    <td class="text-center">{{$value->create_by}}</td>
                                    <td class="text-center">{{date('d M Y', strtotime($value->rpt_time))}}</td>
                                    <td class="text-center">{{strtoupper($value->rpt_wh)}}</td>
                                    <td class="text-center"><a href="{{route('general.dr.view',['id' => $value->id])}}" class="btn btn-link">{{strtoupper($value->rpt_subject)}}</a></td>
                                    <td class="text-center">
                                        @if($value->approve_time == null)
                                            <a href="#" class="btn btn-link"><i class="fa fa-clock"></i>&nbsp;waiting</a>
                                        @else
                                            @if($value->approve_time)
                                                {{$value->approve_by}}
                                                <br />
                                                <em style='font-size:10px'>
                                                    {{date('d M Y',strtotime($value->approve_time))}}
                                                </em>
                                            @else
                                                waiting
                                            @endif
                                        @endif
                                    </td>
                                    <td class="text-center">
                                        @if(\Illuminate\Support\Facades\Auth::user()->id_rms_roles_divisions == 1)
                                            <a href="#" class="btn btn-danger btn-sm btn-icon" onclick="return confirm('Are you sure you want to delete?');"><i class="fa fa-trash"></i></a>
                                        @else
                                            -
                                        @endif
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
                <div class="tab-pane fade" id="mb" role="tabpanel" aria-labelledby="profile-tab">
                    <div id="kt_datatable_wrapper" class="dataTables_wrapper dt-bootstrap4 no-footer">
                        <table class="table table-bordered table-hover display font-size-sm " style="margin-top: 13px !important; width: 100%;">
                            <thead>
                            <tr>
                                <th class="text-center">#</th>
                                <th nowrap="nowrap" class="text-center">Report By</th>
                                <th nowrap="nowrap" class="text-center">Report Date</th>
                                <th nowrap="nowrap" class="text-center">Division</th>
                                <th nowrap="nowrap" class="text-center" style="width: 25%">Subject</th>
                                <th nowrap="nowrap" class="text-center">Approval</th>
                                <th nowrap="nowrap" class="text-center">#</th>
                            </tr>
                            </thead>
                            <tbody>
                            @foreach($mb as $key => $value)
                                <tr>
                                    <td class="text-center">{{($key+1)}}</td>
                                    <td class="text-center">{{$value->create_by}}</td>
                                    <td class="text-center">{{date('d M Y', strtotime($value->rpt_time))}}</td>
                                    <td class="text-center">{{strtoupper($value->rpt_wh)}}</td>
                                    <td class="text-center"><a href="{{route('general.dr.view',['id' => $value->id])}}" class="btn btn-link">{{strtoupper($value->rpt_subject)}}</a></td>
                                    <td class="text-center">
                                        @if($value->approve_time == null)
                                            <a href="#" class="btn btn-link"><i class="fa fa-clock"></i>&nbsp;waiting</a>
                                        @else
                                            @if($value->approve_time)
                                                {{$value->approve_by}}
                                                <br />
                                                <em style='font-size:10px'>
                                                    {{date('d M Y',strtotime($value->approve_time))}}
                                                </em>
                                            @else
                                                waiting
                                            @endif
                                        @endif
                                    </td>
                                    <td class="text-center">
                                        @if(\Illuminate\Support\Facades\Auth::user()->id_rms_roles_divisions == 1)
                                            <a href="#" class="btn btn-danger btn-sm btn-icon" onclick="return confirm('Are you sure you want to delete?');"><i class="fa fa-trash"></i></a>
                                        @else
                                            -
                                        @endif
                                    </td>
                                </tr>
                            @endforeach
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

        </div>
    </div>
@endsection
@section('custom_script')
@endsection
