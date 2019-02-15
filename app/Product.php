<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;
use TCG\Voyager\Traits\Resizable;


class Product extends Model
{
    use Translatable, Resizable;
    protected $translatable = [
        'name',
        'mini_description',
        'description'
    ];
}
