<?php

namespace App\Admin\Controllers;

use App\Admin\Repositories\Project;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class ProjectController extends AdminController
{
    protected $title='项目列表';
    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new Project(), function (Grid $grid) {

            $grid->filter(function($filter){
                // 展开过滤器
                $filter->expand();

                // 在这里添加字段过滤器
                $filter->equal('number', '编号');

            });


            $grid->id->sortable();
            $grid->icon;
            $grid->number;
            $grid->name;
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
        return Show::make($id, new Project(), function (Show $show) {
            $show->id;
            $show->icon;
            $show->number;
            $show->name;
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
        return Form::make(new Project(), function (Form $form) {
            $form->display('id');
            $form->image('icon','图标')->rules('required');
            $form->text('number','编号')->rules('required');
            $form->text('name','项目名称')->rules('required');
            $form->display('created_at');
            $form->display('updated_at');
        });
    }
}
