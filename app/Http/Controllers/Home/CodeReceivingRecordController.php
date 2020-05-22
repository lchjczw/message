<?php

namespace App\Http\Controllers\Home;

use App\Http\Controllers\Controller;
use App\Models\Country;
use App\Models\Project;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class CodeReceivingRecordController extends Controller
{
    //

    /**
     * 已接短信
     */
    public function index()
    {
        return view('codeReceive/index');
    }

    public function alreadyList(Request $request)
    {
        $limit = $request->limit;
        $page = $request->page - 1;
        $total = DB::table("code_receiving_records")
            ->where('user_id', $request->user()->id)
            ->groupBy()
            ->count();

        $items = DB::table("code_receiving_records")
            ->where('user_id', $request->user()->id)
            ->skip($page * $limit)
            ->take($limit)
            ->get();

        foreach ($items as $data) {
            $data->project = Project::find($data->project_id);
            $data->country = Country::find($data->country_id);
        }

        return response()->json([
            'code' => 0,
            'msg' => '获取成功',
            'data' => $items,
            'count' => $total
        ]);
    }
}
