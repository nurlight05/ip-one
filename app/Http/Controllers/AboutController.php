<?php

namespace App\Http\Controllers;

use App\Content;
use Illuminate\Http\Request;

class AboutController extends Controller
{
    public function index()
    {
        $content = Content::where('name', 'О нас')->first();
        return view('about.index', compact('content'));
    }
}
