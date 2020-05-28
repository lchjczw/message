<?php

namespace App\Admin\Controllers;

use App\Admin\Actions\Grid\AddUserMoneyAction;
use App\Admin\Repositories\CodeReceivingRecord;
use App\Admin\Repositories\User;
use App\Models\RechargeDetails;
use Dcat\Admin\Admin;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Layout\Content;
use Dcat\Admin\Models\Administrator;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;
use http\Env\Request;

class AddUserMoneyController extends AdminController
{
    protected $title = '用户充值';


    public function index(Content $content)
    {
        return $content
            ->title($this->title())
            ->description('充值')
            ->body($this->form());
    }


    protected function form()
    {
        return Form::make(new User(), function (Form $form) {
            $form->title('充值');
            $form->disableListButton();
            $form->disableViewButton();
            $form->disableDeleteButton();

            $form->action('addUserMoneyAction');

            $form->footer(function ($footer) {

                // 去掉`重置`按钮
                $footer->disableReset();
                // 去掉`查看`checkbox
                $footer->disableViewCheck();
                // 去掉`继续编辑`checkbox
                $footer->disableEditingCheck();
                // 去掉`继续创建`checkbox
                $footer->disableCreatingCheck();
            });
            $user = \App\Models\User::all();
            $data = [];
            foreach ($user as $item) {
                $data[$item->id] = $item->name;
            }
            $form->select('user_id', '用户')->options($data)->required();
            $form->text('money')->required();

        });
    }

    public function addUserMoneyAction(\Illuminate\Http\Request $request)
    {
        $user = \App\Models\User::find($request->user_id);
        $res = $user->update([
            'money' => (int)$user->money + (int)$request->money
        ]);


        RechargeDetails::create([
            'admin_user_id' => Admin::user()->id,
            'user_id' => $request->user_id,
            'amount' => $request->money
        ]);

        return response()->json([
            'message' => "充值成功 !",
            'redirect' => "/" . env('ADMIN_ROUTE_PREFIX', 'admin') . "/addUserMoney",
            'status' => 'true',
        ]);
    }

}
