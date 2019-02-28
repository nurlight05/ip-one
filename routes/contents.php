<?php
use App\Content;

foreach(Content::all() as $content) {
    
    Route::get($content->slug, function() use ($content) {
        return view('content', compact('content'));
    });
}