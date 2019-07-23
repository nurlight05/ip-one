<?php

namespace App\Http\Controllers;

use App\Content;
use Illuminate\Http\Request;

class HowToBuyController extends Controller
{
    public function index()
    {
        $content = Content::where('name', 'Как купить')->first();
        return view($this->getView('how-to-buy.index'), compact('content'));
    }
}
