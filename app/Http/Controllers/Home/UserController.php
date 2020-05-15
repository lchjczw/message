<?php

namespace App\Http\Controllers\Home;

use App\Http\Controllers\Controller;
use App\Models\User;
use Illuminate\Http\Request;

class UserController extends Controller
{
    //

    // 用户首页
    public function index()
    {
        return view('user');
    }

    public function edit(User $user)
    {
        return view('user', compact('user'));
    }
}
