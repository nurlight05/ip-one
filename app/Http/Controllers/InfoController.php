<?php

namespace App\Http\Controllers;

use App\Content;
use Illuminate\Http\Request;

class InfoController extends Controller
{
    public function index()
    {
        $content = Content::where('name', 'Инфо')->first();
        return view($this->getView('info.index'), compact('content'));
    }
}
