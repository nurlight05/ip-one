<?php

namespace App\Http\Controllers;

use App\Content;
use Illuminate\Http\Request;

class FaqController extends Controller
{
    public function index()
    {
        $content = Content::where('name', 'Faq')->first();
        return view($this->getView('faq.index'), compact('content'));
    }
}
