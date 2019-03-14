<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Slider;
use App\Product;

class HomeController extends Controller
{
    public function index(Request $request)
    {
        $slides = Slider::get();
        $products = Product::where('is_present', '<>', 1)->get();

        return view('home', compact('slides', 'products'));
    }
}
