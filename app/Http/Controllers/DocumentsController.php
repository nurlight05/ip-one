<?php

namespace App\Http\Controllers;

use App\Content;
use Illuminate\Http\Request;

class DocumentsController extends Controller
{
    public function index()
    {
        $content = Content::where('name', 'Документы')->first();
        return view('documents.index', compact('content'));
    }
}
