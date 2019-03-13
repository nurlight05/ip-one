<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ScienceController extends Controller
{
    public function index()
    {
        return view('science.index');
    }
}
