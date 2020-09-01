<?php

namespace App\Http\Controllers;

use GuzzleHttp\Client;
use Illuminate\Http\Request;

function mb_ucfirst($string, $encoding = 'utf8')
{
    $strlen = mb_strlen($string, $encoding);
    $firstChar = mb_substr($string, 0, 1, $encoding);
    $then = mb_substr($string, 1, $strlen - 1, $encoding);

    return mb_strtoupper($firstChar, $encoding) . $then;
}

class ShowroomsController extends Controller
{
    public function index(Request $request)
    {
        $client = new Client();
        $res = $client->request('GET', 'http://88.99.171.85/showrooms/');
        $showrooms = json_decode((string) $res->getBody(), true);
        $places = [];
        $_is_vip = $request->input('vip', false);
        $_country = $request->input('country', 'Россия');
        $_city = mb_convert_case(mb_strtolower($request->input('city', 'Москва')), MB_CASE_TITLE, 'UTF-8');
        $_vip_places = [];

        foreach ($showrooms as $item) {
            if (!isset($places[$item['COUNTRY']]) || !is_array($places[$item['COUNTRY']])) {
                $places[$item['COUNTRY']] = [];
            }

            if (!in_array($item['CITY'], $places[$item['COUNTRY']])) {
                $places[$item['COUNTRY']][] = trim($item['CITY']);
            }

            if ($item['DISCOUNT'] >= 25) {
                if (!in_array($item['CITY'], $_vip_places)) {
                    $_vip_places['VIP '.$item['COUNTRY']][] = $item['CITY'];
                }
            }

            $places[$item['COUNTRY']] = array_unique($places[$item['COUNTRY']]);
        }

        if($_is_vip) {
            $showrooms = array_filter($showrooms, function ($item) use ($_city) {
                if(request()->has('city')) {
                    if (mb_convert_case(mb_strtolower(trim($item['CITY'])), MB_CASE_TITLE, 'UTF-8') != $_city || $item['DISCOUNT'] < 25) {
                        return false;
                    }
        
                    return true;
                } else {
                    if ($item['DISCOUNT'] >= 25) {
                        return true;
                    }
                
                    return false;
                }
            });
        } else {
            $showrooms = array_filter($showrooms, function ($item) use ($_city) {
                if (mb_convert_case(mb_strtolower(trim($item['CITY'])), MB_CASE_TITLE, 'UTF-8') != $_city) {
                    return false;
                }
    
                return true;
            });
        }

        return view($this->getView('showrooms.index'), compact('showrooms', 'places', '_country', '_city', '_is_vip', '_vip_places'));
    }

    public function show(Request $request, $showroom)
    {
        $client = new Client();
        $res = $client->request('GET', 'http://88.99.171.85/showrooms/');
        $showrooms = json_decode((string) $res->getBody(), true);
        $places = [];

        foreach ($showrooms as $item) {
            if (!isset($places[$item['COUNTRY']]) || !is_array($places[$item['COUNTRY']])) {
                $places[$item['COUNTRY']] = [];
            }

            if (!in_array($item['CITY'], $places[$item['COUNTRY']])) {
                $places[$item['COUNTRY']][] = $item['CITY'];
            }
        }

        $showrooms = array_filter($showrooms, function ($item) use ($showroom) {
            if ($item['ID'] != $showroom) {
                return false;
            }

            return true;
        });

        $_country = reset($showrooms)['COUNTRY'];
        $_city = reset($showrooms)['CITY'];
        $_is_vip = $request->input('vip', false);

        return view($this->getView('showrooms.show'), compact('showrooms', 'places', '_country', '_city', '_is_vip'));
    }
}
