<?php

namespace App\Http\Controllers;

use App\Helpers\FileManagement;
use Illuminate\Http\Request;
use App\Models\General_report;
use App\Models\General_report_activity;
use App\Models\General_report_attach;
use Illuminate\Support\Facades\Hash;
use Session;
use DB;
use Illuminate\Support\Facades\Auth;


class GeneralDailyReport extends Controller
{
//    protected $rep_from;
//    protected $rep_to;
//    protected $rep_desc;
//    protected $rpt_wh;
//    protected $rpt_time;
//    protected $rpt_location;
//
    public function index(){
        $all = General_report::where('company_id', Session::get('company_id'))->get();
        $asset = General_report::where('company_id', Session::get('company_id'))
            ->where('rpt_wh','asset')
            ->get();
        $finance = General_report::where('company_id', Session::get('company_id'))
            ->where('rpt_wh','finance')
            ->get();
        $hrd = General_report::where('company_id', Session::get('company_id'))
            ->where('rpt_wh','hrd')
            ->get();
        $it = General_report::where('company_id', Session::get('company_id'))
            ->where('rpt_wh','it')
            ->get();
        $te = General_report::where('company_id', Session::get('company_id'))
            ->where('rpt_wh','te')
            ->get();
        $tech = General_report::where('company_id', Session::get('company_id'))
            ->where('rpt_wh','technology')
            ->get();
        $marketing = General_report::where('company_id', Session::get('company_id'))
            ->where('rpt_wh','marketing')
            ->get();
        $procurement = General_report::where('company_id', Session::get('company_id'))
            ->where('rpt_wh','procurement')
            ->get();
        $operation = General_report::where('company_id', Session::get('company_id'))
            ->where('rpt_wh','operation')
            ->get();
        $laboratory = General_report::where('company_id', Session::get('company_id'))
            ->where('rpt_wh','laboratory')
            ->get();
        $hse = General_report::where('company_id', Session::get('company_id'))
            ->where('rpt_wh','hse')
            ->get();
        $_911 = General_report::where('company_id', Session::get('company_id'))
            ->where('rpt_wh','911')
            ->get();
        $mb = General_report::where('company_id', Session::get('company_id'))
            ->where('rpt_wh','mb')
            ->get();

        return view('daily_report.index',[
           'all' => $all,
           'asset' => $asset,
           'finance' => $finance,
           'hrd' => $hrd,
           'hse' => $hse,
           'it' =>$it,
           'te' =>$te,
           'technology' => $tech,
           'marketing' => $marketing,
           'operation'=>$operation,
           'laboratory'=>$laboratory,
           'procurement' =>$procurement,
           '_911' => $_911,
           'mb' => $mb
        ]);

    }

    public function viewPage($id=null){
        $divisions = [
            'admin',
            'asset',
            'finance',
            'hrd',
            'hse',
            'it',
            'laboratory',
            'marketing',
            'operation',
            'procurement',
            'te',
            'technology',
            'mb',
            '911',
        ];
        $count = 0;
        if ($id != null){
            $detail_report = General_report::where('id', $id)->first();
            $detail_activity = General_report_activity::where('id_report', $id)->get();
            $count = $detail_activity->count();

            $detail_attach = General_report_attach::where('id_report', $id)->get();
//            dd($detail_activity);
            return view('daily_report.input',[
                'type' => 'edit',
                'count_activity' => $count,
                'report' => $detail_report,
                'activity' => $detail_activity,
                'attach' => $detail_attach,
                'divisions' => $divisions,
            ]);
        } else {
            if ($count == 0){
                $count = 1;
            }
            return view('daily_report.input',[
                'type' => 'input',
                'count_activity' => $count,
                'divisions' => $divisions,
            ]);
        }
    }

    public function store(Request $request){
//        dd($request);
        $divisions = [
            'admin',
            'asset',
            'finance',
            'hrd',
            'hse',
            'it',
            'laboratory',
            'marketing',
            'operation',
            'procurement',
            'te',
            'technology',
            'mb',
            '911',
        ];
        if (isset($request['add_activity'])){
//            dd($request['id']);
//            dd($request);
            $type = $request['type'];




            if ($request['id'] != 0){
                $report_by = $request['report_by'];
                $division_ = $request['divisions'];
                $report_date = $request['report_date'];
                $location = $request['location'];

                $detail_report = General_report::where('id', $request['id'])->first();
                $detail_activity = General_report_activity::where('id_report', $request['id'])->get();
                $detail_attach = General_report_attach::where('id_report', $request['id'])->get();

                $rpt_from = [];
                $rpt_to = [];
                $rpt_desc = [];
                foreach ($detail_activity as $key => $value){
                    $rpt_from[] = $value->rep_from;
                    array_push($rpt_from,$value->rep_from);
                }
                foreach ($detail_activity as $key => $value){
                    $rpt_to[] = $value->rep_to;
                    array_push($rpt_to,"");
                }
                foreach ($detail_activity as $key => $value){
                    $rpt_desc[] = $value->rep_desc;
                    array_push($rpt_desc,"");
                }
//                dd($rpt_to);
//              dd($rpt_to);
                $count_activity = count($rpt_from);

                return view('daily_report.input',[
                    'type' => $type,
                    'count_activity' => $count_activity,
                    'report' => $detail_report,
                    'activity' => $detail_activity,
                    'attach' => $detail_attach,
                    'divisions' => $divisions,
                    'addmore' => 1,
                    'report_by' => $report_by,
                    'division' => $division_,
                    'report_date' => $report_date,
                    'location' => $location,
                    'rpt_from' => $rpt_from,
                    'rpt_to' => $rpt_to,
                    'rpt_desc' => $rpt_desc,
                ]);
            } else {
                $rpt_frompost = $request['rep_from'];
                $rpt_topost = $request['rep_to'];
                $rpt_descpost = $request['rep_desc'];

                $report_by = $request['report_by'];
                $division_ = $request['divisions'];
                $report_date = $request['report_date'];
                $location = $request['location'];

                $rpt_from = [];
                $rpt_to = [];
                $rpt_desc = [];
                foreach ($rpt_frompost as $key => $value){
                    $rpt_from[] = $value;
                    array_push($rpt_from,$rpt_topost[$key]);
                }
                foreach ($rpt_topost as $key => $value){
                    $rpt_to[] = $value;
                    array_push($rpt_to,"");
                }
                foreach ($rpt_descpost as $key => $value){
                    $rpt_desc[] = $value;
                    array_push($rpt_desc,"");
                }
//            dd($rpt_to);
                $count_activity = count($rpt_from);

                return view('daily_report.input',[
                    'type' => $type,
                    'count_activity' => $count_activity,
                    'divisions' => $divisions,
                    'addmore' => 1,
                    'report_by' => $report_by,
                    'division' => $division_,
                    'report_date' => $report_date,
                    'location' => $location,
                    'rpt_from' => $rpt_from,
                    'rpt_to' => $rpt_to,
                    'rpt_desc' => $rpt_desc,
                ]);
            }
        } else {
//            dd($_FILES);

            date_default_timezone_set('Asia/Jakarta');
            $rpt = new General_report();
            $rpt->rpt_wh = $request['divisions'];
            $rpt->rpt_subject = "REPORT/".strtoupper(Session::get('company_tag')).'/'.strtoupper($request['divisions']).'/'.date("m")."/".date("d");
            $rpt->rpt_text = $request['location'];
            $rpt->rpt_time = date('Y-m-d H:i:s',strtotime($request['report_date']));
            $rpt->create_time = date('Y-m-d H:i:s');
            $rpt->created_at = date('Y-m-d H:i:s');
            $rpt->create_by = Auth::user()->username;
            $rpt->created_by = Auth::user()->username;
            $rpt->company_id = Session::get('company_id');
            $rpt->save();
            $id_report = $rpt->id;

            foreach ($request->rep_from as $key => $val){
                $activity = new General_report_activity();
                $activity->id_report = $id_report;
                $activity->rep_from = $val;
                $activity->rep_to = $request['rep_to'][$key];
                $activity->rep_desc = $request['rep_desc'][$key];
                $activity->save();
            }

            $file_count = count($_FILES['attachment']['name']);
            for ($f = 0; $f <$file_count; $f++){
                $attachment = new General_report_attach();
                $attachment->id_report = $id_report;
                $attachment->created_by = Auth::user()->username;
                $attachment->created_at = date('Y-m-d H:i:s');
//                dd($request->file('attachment')[]);
                $file = $request->file('attachment')[$f];

                $newFile = $file->getClientOriginalName();
//                dd($newFile);
                $hashFile = Hash::make($newFile);
                $hashFile = str_replace("/", "", $hashFile);

                $upload = FileManagement::save_file_management($hashFile, $file, $newFile, "media/daily_report_attachment");
                if ($upload == 1){
                    $attachment->filename = $hashFile;
                }
                $attachment->save();

            }



            return redirect()->route('general.dr');
        }

//        dd($request);
    }
}
