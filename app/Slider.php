<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;
use TCG\Voyager\Traits\Resizable;

class Slider extends Model
{
    use Translatable, Resizable;
    protected $translatable = ['title', 'description'];

    public function getUrlAttribute()
    {
        return $this->link ? url($this->link) : '#';
    }
}
