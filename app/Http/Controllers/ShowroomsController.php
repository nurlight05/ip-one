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

        return view('showrooms.index', compact('showrooms'));
    }
}
