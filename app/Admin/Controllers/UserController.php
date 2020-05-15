<?php

namespace App\Admin\Controllers;

use App\Admin\Actions\Grid\AddUserMoneyAction;
use App\Admin\Repositories\User;
use Dcat\Admin\Form;
use Dcat\Admin\Grid;
use Dcat\Admin\Layout\Content;
use Dcat\Admin\Show;
use Dcat\Admin\Controllers\AdminController;

class UserController extends AdminController
{
    protected $title = '用户列表';


    /**
     * Make a grid builder.
     *
     * @return Grid
     */
    protected function grid()
    {
        return Grid::make(new User(), function (Grid $grid) {
            $grid->id->sortable();
            $grid->name;
            $grid->email;
            $grid->phone;
            $grid->money;
            $grid->created_at->sortable();
            $grid->updated_at->sortable();

            $grid->actions(new AddUserMoneyAction());

            $grid->disableViewButton();

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
        return Show::make($id, new User(), function (Show $show) {
            $show->id;
            $show->name;
            $show->email;
            $show->email_verified_at;
            $show->password;
            $show->phone;
            $show->remember_token;
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
        return Form::make(new User(), function (Form $form) {
            $form->display('id');
            $form->text('name');
            $form->text('email');
            $form->text('email_verified_at');
            $form->text('password');
            $form->text('phone');
            $form->text('remember_token');

            $form->display('created_at');
            $form->display('updated_at');
        });
    }
}
