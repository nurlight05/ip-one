<?php

namespace App\Http\Controllers;

use App\Slider;
use App\Product;
use App\ProductCategory;
use Illuminate\Http\Request;

class ProductsController extends Controller
{
    public function index(Request $request)
    {
        $products = Product::latest()->where('is_present', '<>', 1)->get()->groupBy('category_id');
        $categories = ProductCategory::orderBy('order')->get();
        $presents = Product::latest()->where('is_present', '=', 1)->get();
        $slides = Slider::where('slider_id', 2)->orderBy('number', 'asc')->get();
        
        return view($this->getView('products.index'), compact('products', 'slides', 'presents', 'categories'));
    }

    public function show(Request $request, Product $product)
    {
        $products = Product::latest()->where('is_present', '<>', 1)->get()->groupBy('category_id');
        $categories = ProductCategory::orderBy('order')->get();
        return view($this->getView('products.show'), compact('product', 'products', 'categories'));
    }
}
