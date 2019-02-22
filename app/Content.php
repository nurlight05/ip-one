<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;
use TCG\Voyager\Traits\Resizable;

class Content extends Model
{
    use Translatable, Resizable;

    protected $translatable = [
        'name',
        'content',
    ];

    public function getRouteKeyName()
    {
        return 'slug';
    }
}
