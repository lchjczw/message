<?php

namespace App\Http\Controllers\Home;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class UserController extends Controller
{
    //

    // 用户首页
    public function index()
    {
        return view('user');
    }

    public function edit(Request $request)
    {
        $user = $request->user();
        return view('user/edit', compact('user'));
    }

    public function update(Request $request)
    {
        $user = $request->user();

        $id = $user->id;

        $model = User::find($id);
        $model->update([
            'password' => bcrypt($request->password)
        ]);
        return response()->json(['code' => 0]);
    }


    public function recharge(Request $request)
    {
        return view('user/recharge');
    }

    public function rechargeDetail(Request $request)
    {
        $sum = DB::table('recharge_details')->where('user_id',$request->user()->id)->sum('amount');
        return view('user/rechargeDetail',compact('sum'));
    }

    public function rechargeDetailList(Request $request)
    {
        $limit = $request->limit;
        $page = $request->page - 1;
        $total = DB::table("recharge_details")
            ->where('user_id', $request->user()->id)
            ->groupBy()
            ->count();

        $items = DB::table("recharge_details")
            ->where('user_id', $request->user()->id)
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
