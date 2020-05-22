<?php

namespace App\Http\Controllers\Home;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    //

    /**
     * 后台首页
     */
    public function index()
    {
        return view('index');
    }

    public function welcome(Request $request)
    {
        $user = User::find($request->user()->id);

        $todaySum = DB::table('code_receiving_records')->where('created_at', '>', date('Y-m-d', time()))->sum('id');

        $monthSum = DB::table('code_receiving_records')->where('created_at', '>', date('Y-m-01', time()))->sum('id');

        $allSum = DB::table('code_receiving_records')->sum('id');
        return view('welcome', compact('user', 'todaySum', 'monthSum', 'allSum'));
    }
}
