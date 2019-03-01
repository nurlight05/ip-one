<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class BussinessController extends Controller
{
    public function index(Request $request)
    {
        return view('bussiness.index');
    }
}
