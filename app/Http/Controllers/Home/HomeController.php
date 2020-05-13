<?php

namespace App\Http\Controllers\Home;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

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
}
