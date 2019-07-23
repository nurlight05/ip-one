<?php

use App\Content;

foreach (Content::all() as $content) {

    Route::get($content->slug, function () use ($content) {
        return view($this->getView('content'), compact('content'));
    });
}
