<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;
use TCG\Voyager\Traits\Resizable;

class News extends Model
{
    use Translatable, Resizable;
    protected $translatable = [
        'title',
        'mini_description',
        'text',
    ];
}
