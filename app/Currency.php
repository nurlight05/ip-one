<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;
use TCG\Voyager\Traits\Resizable;

class Currency
{
    static $country = false;

    public static function parse($price)
    {
        if(!self::$country) {
            $res = file_get_contents('https://www.iplocate.io/api/lookup/'.request()->ip());
            $res = json_decode($res);
            self::$country = $res->country;
        }

        if(self::$country == 'Kazakhstan') {
            return ($price*350).' '.__('тг.');
        } else if(self::$country == 'Russia') {
            return ($price*65).' '.__('руб.');
        } else if(self::$country == 'Kyrgyzstan') {
            return ($price*65).' '.__('сом.');
        }

        return $price.' '.__('у.е.');
    }
}
