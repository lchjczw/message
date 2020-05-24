<?php

namespace App\Http\Controllers\Home;

use App\Http\Controllers\Controller;
use App\Models\CodeReceivingRecord;
use App\Models\Country;
use App\Models\Project;
use App\Models\User;
use App\Utils\SMSActivate;
use Illuminate\Http\Request;

class GetCodeController extends Controller
{
    //

    /**
     * 取码首页
     */
    public function index()
    {
        return view('getCode/index');
    }


    public function getNumber(Request $request)
    {
        $project = Project::find($request->projectId);
        $country = Country::find($request->countryId);


        $user = User::find($request->user()->id);

        if ($user->money < $project->price) {

            return response()->json([
                'code' => 1,
                'msg' => '请先充值后再进行获取手机号',
                'data' => [

                ]
            ]);
        }

        $data = SMSActivate::getInstance()->getNumber($project->number, $country->number);

        $result = SMSActivate::getInstance()->setStatus($data['id'], 1);

        $receive = CodeReceivingRecord::create([
            'project_id' => $project->id,
            'thirty_id' => $data['id'],
            'user_id' => $request->user()->id,
            'phone' => $data['number'],
            'country_id' => $country->id,
            'amount' => $project->price,
            'content' => '',
            'status' => 0,
        ]);

        return response()->json([
            'code' => 1,
            'msg' => '获取成功',
            'data' => [
                'number' => $data['number'],
                'id' => $receive->id
            ]
        ]);
    }

    public function getSmsContent(Request $request)
    {

        $orderid = $request->orderid;

        $codeReceive = CodeReceivingRecord::find($orderid);

        $data = SMSActivate::getInstance()->getStatus($codeReceive->thirty_id);

        if ($data['code'] == 0) {
            return response()->json([
                'code' => 0,
                'msg' => '正在获取验证码',
                'data' => [
                ]
            ]);
        } else {
            $codeReceive->update([
                'content' => $data['code'],
                'status' => 1
            ]);

            $user = User::find($request->user()->id);
            $project = Project::find($codeReceive->project_id);
            $user->update([
                'money' => $user->money - $project->price
            ]);
            return response()->json([
                'code' => 1,
                'msg' => '获取成功',
                'data' => [
                    'times' => date('Y-m-d H:i:s', time()),
                    'messages' => $data['code']
                ]
            ]);
        }

    }

    // 取消手机号
    public function releaseNumber(Request $request)
    {
        $orderid = $request->orderid;

        $codeReceive = CodeReceivingRecord::find($orderid);

        $result = SMSActivate::getInstance()->setStatus($codeReceive->thirty_id, 6);
        return response()->json([
            'code' => 1,
            'msg' => '释放成功，请重新获取手机号',
            'data' => [
            ]
        ]);

    }

    // 拉黑
    public function shieldNumber(Request $request)
    {
        $orderid = $request->orderid;

        $codeReceive = CodeReceivingRecord::find($orderid);

        $result = SMSActivate::getInstance()->setStatus($codeReceive->thirty_id, 8);
        return response()->json([
            'code' => 1,
            'msg' => '拉黑成功，请重新获取手机号',
            'data' => [
            ]
        ]);

    }
}
