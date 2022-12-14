<?php

namespace App\Http\Controllers;

use App\Stock;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\Cookie;

class StocksController extends Controller
{
    public function index(Request $request)
    {
        $this->setLocale();
        $months = [];
        for ($i = 0; $i < 11; $i++) {
            $time = Carbon::now()->addMonth(-$i);
            $months[$time->formatLocalized('%B %Y')] = [$time->year, $time->month];
        }
        $stocks = Stock::orderBy('date', 'desc');
        if ($request->has('month')) {
            $stocks = $stocks->whereRaw('YEAR(`date`) = ' . $request->year . ' AND MONTH(`date`) = ' . $request->month);
        }
        $stocks = $stocks->paginate(5);
        return view($this->getView('stocks.index'), compact('stocks', 'months'));
    }

    public function show(Request $request, Stock $stock)
    {
        $this->setLocale();
        $months = [];
        for ($i = 0; $i < 11; $i++) {
            $time = Carbon::now()->addMonth(-$i);
            $months[$time->formatLocalized('%B %Y')] = [$time->year, $time->month, $time->format('Y-m')];
        }
        return view($this->getView('stocks.show'), compact('stock', 'months'));
    }

    public function setLocale()
    {
        $locale = Cookie::get('locale', 'ru');

        if ($locale == 'en')
            $ietf = 'en_US';
        else
            $ietf = 'ru_RU';

        setlocale(LC_ALL, $ietf . '.UTF-8');
    }
}
