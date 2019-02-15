<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Collection;

class Translator {
    static public function t($item) {
        if($item instanceof Collection) {
            return $item->translate('ru', 'ru');
        }

        if($item instanceof Model) {
            return $item->translate('ru', 'ru');
        }
    }
}