<?php

namespace App\Http\Controllers;

use App\Slider;
use App\Translator;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $slides = Slider::where('slider_id', 1)->with('translations')->get();
        $slides = Translator::t($slides);

        return view('home.index', compact('slides'));

    }
}
