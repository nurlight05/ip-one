<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class HowToBuyController extends Controller
{
    public function index()
    {
        return view('how-to-buy.index');
    }
}
