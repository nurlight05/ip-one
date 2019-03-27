<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class ReviewsController extends Controller
{
    public function index()
    {
        $content = Content::where('name', 'Отзывы')->first();
        return view('reviews.index', compact('content'));
    }
}
