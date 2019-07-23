<?php

namespace App\Http\Controllers;

use App\Content;
use Illuminate\Http\Request;

class IdeaController extends Controller
{
    public function index()
    {
        $content = Content::where('name', 'Идея')->first();
        return view($this->getView('idea.index'), compact('content'));
    }
}
