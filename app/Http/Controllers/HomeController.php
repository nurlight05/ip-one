<?php

namespace App\Http\Controllers;

use App\Slider;
use App\Product;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function lang(Request $request, $locale)
    {
        return back()->cookie(
            'locale', $locale, time() + (10 * 365 * 24 * 60 * 60)
        );
    }

    public function index(Request $request)
    {
        $slides = Slider::where('slider_id', 1)->orderBy('number', 'asc')->get();
        $products = Product::where('is_present', '<>', 1)->take(3)->get();
        $last_products = Product::where('is_present', '<>', 1)->take(3)->latest()->get();

        return view('home', compact('slides', 'products', 'last_products'));
    }
}
