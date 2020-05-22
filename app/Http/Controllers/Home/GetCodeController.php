<?php

namespace App\Http\Controllers\Home;

use App\Http\Controllers\Controller;
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

}
