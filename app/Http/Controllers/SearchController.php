<?php

namespace App\Http\Controllers;

use App\News;
use App\Stock;
use App\Content;
use App\Product;
use Illuminate\Http\Request;

class SearchController extends Controller
{
    public function index(Request $request)
    {
        $products = Product::where('name', 'like', '%' . $request->search . '%')
            ->orWhere('mini_description', 'like', '%' . $request->search . '%')
            ->orWhere('description', 'like', '%' . $request->search . '%')
            ->get();

        $news = News::where('title', 'like', '%' . $request->search . '%')
            ->orWhere('mini_description', 'like', '%' . $request->search . '%')
            ->orWhere('text', 'like', '%' . $request->search . '%')
            ->get();

        $stocks = Stock::where('title', 'like', '%' . $request->search . '%')
            ->orWhere('mini_description', 'like', '%' . $request->search . '%')
            ->orWhere('text', 'like', '%' . $request->search . '%')
            ->get();


        $contents = Content::where('name', 'like', '%' . $request->search . '%')
            ->orWhere('content', 'like', '%' . $request->search . '%')
            ->get();

        return view($this->getView('search.index'), compact('products', 'news', 'stocks', 'contents'));
    }
}
