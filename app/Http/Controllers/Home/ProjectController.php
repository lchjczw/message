<?php

namespace App\Http\Controllers\Home;

use App\Http\Controllers\Controller;
use App\Models\Project;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class ProjectController extends Controller
{
    //

    public function index()
    {
        return view('project/index');
    }


    /**
     * 后台首页
     */
    public function selectList()
    {
        return view('project/selectList');
    }


    public function getProjectList(Request $request)
    {
        $keyWord = $request->keyword;
        $limit = $request->limit;
        $page = $request->page - 1;
        $total = DB::table("projects")
            ->where('name', 'like', $keyWord . '%')
            ->groupBy()
            ->count();

        $items = DB::table("projects")
            ->where('name', 'like', $keyWord . '%')
            ->skip($page * $limit)
            ->take($limit)
            ->get();


        return response()->json([
            'code' => 0,
            'msg' => '获取成功',
            'data' => $items,
            'count' => $total
        ]);
    }
}
