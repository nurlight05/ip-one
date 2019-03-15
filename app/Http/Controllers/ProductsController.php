<?php

namespace App\Http\Controllers;

use App\Slider;
use App\Product;
use Illuminate\Http\Request;

class ProductsController extends Controller
{
    public function index(Request $request)
    {
        $products = Product::latest()->where('is_present', '<>', 1)->get();
        $presents = Product::latest()->where('is_present', '=', 1)->get();
        $slides = Slider::where('slider_id', 2)->get();
        
        return view('products.index', compact('products', 'slides', 'presents'));
    }

    public function show(Request $request, Product $product)
    {
        $products = Product::latest()->where('is_present', '<>', 1)->get();
        return view('products.show', compact('product', 'products'));
    }
}
