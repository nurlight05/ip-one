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

class RepresentationController extends Controller
{
    public function index(Request $request)
    {
        $client = new Client();
        $res = $client->request('GET', 'http://88.99.171.85/showrooms/');
        $representations = json_decode((string) $res->getBody(), true);
        $places = [];
        $_country = $request->input('country', 'Россия');
        $_city = mb_convert_case(mb_strtolower($request->input('city', 'Москва')), MB_CASE_TITLE, 'UTF-8');

        foreach ($representations as $item) {
            if (!isset($places[$item['COUNTRY']]) || !is_array($places[$item['COUNTRY']])) {
                $places[$item['COUNTRY']] = [];
            }

            if (!in_array($item['CITY'], $places[$item['COUNTRY']])) {
                $places[$item['COUNTRY']][] = trim($item['CITY']);
            }
            $places[$item['COUNTRY']] = array_unique($places[$item['COUNTRY']]);
        }

        $places = [
            'Россия' => ['Москва'],
            'Киргизия' => ['Бишкек'],
        ];

        $representations = [
            [
                "ID" => 1,
                "PARTNER_ID" => 31522,
                "CITY" => "Бишкек",
                "DOLG" => 216,
                "DISCOUNT" => 20,
                "ADDRESS" => "Шопокова 121/1,ТЦ Red Centre,5 этаж 513 офис",
                "PHONE" => "30-61-45",
                "WORK_TIME" => "Ежедневно с 10:00 до 22:00",
                "SCHOOL_WORK_TIME" => "",
                "EMAIL" => "gidroplazma@list.ru",
                "DIR_NAME" => "Тен Жанна Александровна",
                "SHOW_ON_SITE" => 1,
                "BALANCE" => 504,
                "COUNTRY" => "Киргизия",
            ],
            [
                "ID" => 2,
                "PARTNER_ID" => 31522,
                "CITY" => "Москва",
                "DOLG" => 216,
                "DISCOUNT" => 20,
                "ADDRESS" => "мкр-он Северное Чертаново, дом 5, 1 этаж, бокс 107, офис 11",
                "PHONE" => "",
                "WORK_TIME" => "Ежедневно с 10:00 до 22:00",
                "SCHOOL_WORK_TIME" => "",
                "EMAIL" => "gidroplazma@list.ru",
                "DIR_NAME" => "Ким Сергей Иларионович",
                "SHOW_ON_SITE" => 1,
                "BALANCE" => 504,
                "COUNTRY" => "Россия",
                "NOTIFY" => "Только оптовые продажи!"
            ],
        ];

        $representations = array_filter($representations, function ($item) use ($_city) {
            if (mb_convert_case(mb_strtolower(trim($item['CITY'])), MB_CASE_TITLE, 'UTF-8') != $_city) {
                return false;
            }

            return true;
        });

        // dd($representations);

        return view($this->getView('representation.index'), compact('representations', 'places', '_country', '_city'));
    }

    public function show($representation)
    {
        $client = new Client();
        $res = $client->request('GET', 'http://88.99.171.85/showrooms/');
        $representations = json_decode((string) $res->getBody(), true);
        $places = [];

        foreach ($representations as $item) {
            if (!isset($places[$item['COUNTRY']]) || !is_array($places[$item['COUNTRY']])) {
                $places[$item['COUNTRY']] = [];
            }

            if (!in_array($item['CITY'], $places[$item['COUNTRY']])) {
                $places[$item['COUNTRY']][] = $item['CITY'];
            }
        }

        $places = [
            'Россия' => ['Москва'],
            'Киргизия' => ['Бишкек'],
        ];

        $representations = [
            [
                "ID" => 1,
                "PARTNER_ID" => 31522,
                "CITY" => "Бишкек",
                "DOLG" => 216,
                "DISCOUNT" => 20,
                "ADDRESS" => "Шопокова 121/1,ТЦ Red Centre,5 этаж 513 офис",
                "PHONE" => "30-61-45",
                "WORK_TIME" => "Ежедневно с 10:00 до 22:00",
                "SCHOOL_WORK_TIME" => "",
                "EMAIL" => "gidroplazma@list.ru",
                "DIR_NAME" => "Тен Жанна Александровна",
                "SHOW_ON_SITE" => 1,
                "BALANCE" => 504,
                "COUNTRY" => "Киргизия",
            ],
            [
                "ID" => 2,
                "PARTNER_ID" => 31522,
                "CITY" => "Москва",
                "DOLG" => 216,
                "DISCOUNT" => 20,
                "ADDRESS" => "мкр-он Северное Чертаново, дом 5, 1 этаж, бокс 107, офис 11",
                "PHONE" => "",
                "WORK_TIME" => "Ежедневно с 10:00 до 22:00",
                "SCHOOL_WORK_TIME" => "",
                "EMAIL" => "gidroplazma@list.ru",
                "DIR_NAME" => "Ким Сергей Иларионович",
                "SHOW_ON_SITE" => 1,
                "BALANCE" => 504,
                "COUNTRY" => "Россия",
                "NOTIFY" => "Только оптовые продажи!"
            ],
        ];

        $representations = array_filter($representations, function ($item) use ($representation) {
            if ($item['ID'] != $representation) {
                return false;
            }

            return true;
        });

        $_country = reset($representations)['COUNTRY'];
        $_city = reset($representations)['CITY'];

        return view($this->getView('representation.show'), compact('representations', 'places', '_country', '_city'));
    }
}
