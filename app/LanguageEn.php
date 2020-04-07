<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class LanguageEn extends Model
{
    public $fillable = [
        'default',
        'text',
    ];
}
