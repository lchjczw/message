<?php

namespace App\Http\Controllers\Home;

use App\Http\Controllers\Controller;
use App\Models\User;
use App\Utils\SMSActivate;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class HomeController extends Controller
{
    //

    /**
     * 后台首页
     */
    public function index(Request $request)
    {

        return view('index', compact('user'));
    }

    public function welcome(Request $request)
    {
        $user = User::find($request->user()->id);

        $todaySum = DB::table('code_receiving_records')->where('created_at', '>', date('Y-m-d', time()))->sum('amount');

        $monthSum = DB::table('code_receiving_records')->where('created_at', '>', date('Y-m-01', time()))->sum('amount');

        $allSum = DB::table('code_receiving_records')->sum('amount');
        return view('welcome', compact('user', 'todaySum', 'monthSum', 'allSum'));
    }


    public function test()
    {
        //
//        $data = SMSActivate::getInstance()->getNumber('ub', 0);
////       array(2) { ["id"]=> string(9) "264490529" ["number"]=> string(11) "79090615186" }
//        var_dump($data);
//        exit;

        // 设置开始获取验证码
//        $result = SMSActivate::getInstance()->setStatus('264495287', 1);
//        var_dump($result);
//        exit;

        // 设置取消手机号
//        $result = SMSActivate::getInstance()->setStatus('264495287', -1);

        // 获取状态
//        $data = SMSActivate::getInstance()->getStatus('264492240');
//        // 为获取到
//        // array(2) { ["status"]=> int(0) ["code"]=> string(16) "STATUS_WAIT_CODE" }
//
////        array(2) { ["status"]=> int(1) ["code"]=> string(4) "7302" }
//        var_dump($data);
//        exit;
    }
}
