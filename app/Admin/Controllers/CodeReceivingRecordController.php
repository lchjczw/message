<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\CodeReceivingRecord;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class CodeReceivingRecordController extends AdminController
{
    protected  $title='接码记录';
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new CodeReceivingRecord(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->project_id;
            $grid->phone;
            $grid->country_id;
            $grid->amount;
            $grid->content;
            $grid->status;
            $grid->created_at;
            $grid->updated_at->sortable();

            $grid->filter(function (Grid\Filter $filter) {
                $filter->equal('id');

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
        return Show::make($id, new CodeReceivingRecord(), function (Show $show) {
            $show->id;
            $show->project_id;
            $show->phone;
            $show->country_id;
            $show->amount;
            $show->content;
            $show->status;
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
        return Form::make(new CodeReceivingRecord(), function (Form $form) {
            $form->display('id');
            $form->text('project_id');
            $form->text('phone');
            $form->text('country_id');
            $form->text('amount');
            $form->text('content');
            $form->text('status');

            $form->display('created_at');
            $form->display('updated_at');
        });
    }
}
