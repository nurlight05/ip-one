<?php

namespace App\Http\Controllers;

use App\Content;
use Illuminate\Http\Request;

class FaqController extends Controller
{
    public function index()
    {
        $content = Content::where('name', 'Faq')->first();
        return view('faq.index', compact('content'));
    }
}
