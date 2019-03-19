<?php

namespace App\Http\Controllers;

use GuzzleHttp\Client;
use Illuminate\Http\Request;

class ShowroomsController extends Controller
{
    public function index(Request $request)
    {
        $client = new Client();
        $res = $client->request('GET', 'http://88.99.171.85/showrooms/');
        $showrooms = json_decode((string)$res->getBody(), true);
        $places = [];
        $_country = $request->input('country', 'Россия');
        $_city = $request->input('city', 'Москва');

        foreach ($showrooms as $item) {
            if(!isset($places[$item['COUNTRY']]) || !is_array($places[$item['COUNTRY']]))
                $places[$item['COUNTRY']] = [];

            if(!in_array($item['CITY'], $places[$item['COUNTRY']]))
                $places[$item['COUNTRY']][] = $item['CITY'];
        }
        
        $showrooms = array_filter($showrooms, function($item) use ($_city) {
            if($item['CITY'] != $_city)
                return false;
            return true;
        });

        return view('showrooms.index', compact('showrooms', 'places', '_country', '_city'));
    }

    public function show($showroom)
    {
        $client = new Client();
        $res = $client->request('GET', 'http://88.99.171.85/showrooms/');
        $showrooms = json_decode((string)$res->getBody(), true);
        $places = [];

        foreach ($showrooms as $item) {
            if(!isset($places[$item['COUNTRY']]) || !is_array($places[$item['COUNTRY']]))
                $places[$item['COUNTRY']] = [];

            if(!in_array($item['CITY'], $places[$item['COUNTRY']]))
                $places[$item['COUNTRY']][] = $item['CITY'];
        }
        
        $showrooms = array_filter($showrooms, function($item) use ($showroom) {
            if($item['ID'] != $showroom)
                return false;
            return true;
        });

        return view('showrooms.show', compact('showrooms', 'places'));
    }
}
