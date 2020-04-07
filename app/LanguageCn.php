<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LanguageCn extends Model
{
    public $fillable = [
        'default',
        'text',
    ];
}
