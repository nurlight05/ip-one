<?php

namespace App;

use TCG\Voyager\Traits\Resizable;
use TCG\Voyager\Traits\Translatable;
use Illuminate\Database\Eloquent\Model;

class ProductCategory extends Model
{
    use Translatable, Resizable;
    
    protected $translatable = [
        'name',
    ];
}
