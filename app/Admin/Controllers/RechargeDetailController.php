<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\RechargeDetail;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class RechargeDetailController extends AdminController
{

    protected $title='充值明细查询';
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new RechargeDetail(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->admin_user_id;
            $grid->user_id;
            $grid->amount;
            $grid->created_at;
            $grid->updated_at->sortable();

            $grid->disableCreateButton();

            $grid->filter(function (Grid\Filter $filter) {

            });
        });
    }

    /**
     * Make a show builder.
     *
     * @param mixed $id
     *
     * @return Show
     */
    protected function detail($id)
    {
        return Show::make($id, new RechargeDetail(), function (Show $show) {
            $show->id;
            $show->admin_user_id;
            $show->user_id;
            $show->amount;
            $show->created_at;
            $show->updated_at;
        });
    }

    /**
     * Make a form builder.
     *
     * @return Form
     */
    protected function form()
    {
        return Form::make(new RechargeDetail(), function (Form $form) {
            $form->display('id');
            $form->text('admin_user_id');
            $form->text('user_id');
            $form->text('amount');

            $form->display('created_at');
            $form->display('updated_at');
        });
    }
}
