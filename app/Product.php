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

    public function category()
    {
        return $this->hasOne('App\ProductCategory', 'id', 'category_id');
    }
}
