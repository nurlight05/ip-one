<?php

namespace App\Http\Controllers;

use App\Content;
use Illuminate\Http\Request;

class BussinessController extends Controller
{
    public function index(Request $request)
    {
        $content = Content::where('name', 'Возможности')->first();
        return view($this->getView('bussiness.index'), compact('content'));
    }
}
