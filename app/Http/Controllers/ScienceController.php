<?php

namespace App\Http\Controllers;

use App\Content;
use Illuminate\Http\Request;

class ScienceController extends Controller
{
    public function index()
    {
        $content = Content::where('name', 'Наука')->first();
        return view($this->getView('science.index'), compact('content'));
    }
}
