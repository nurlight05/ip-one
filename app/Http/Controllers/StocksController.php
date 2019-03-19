<?php

namespace App\Http\Controllers;

use App\Stock;
use Illuminate\Http\Request;
use Illuminate\Support\Carbon;

class StocksController extends Controller
{
    public function index(Request $request)
    {
        $months = [];
        for ($i=0; $i < 11; $i++) {
            $time = Carbon::now()->addMonth(-$i);
            $months[$time->formatLocalized('%B %Y')] = [$time->year, $time->month];
        }
        $stocks = Stock::orderBy('date', 'desc');
        if($request->has('month')) {
            $stocks = $stocks->whereRaw('YEAR(`date`) = '.$request->year.' AND MONTH(`date`) = '.$request->month);
        }
        $stocks = $stocks->paginate(5);       
        return view('stocks.index', compact('stocks', 'months'));
    }

    public function show(Request $request, Stock $stock)
    {
        return view('stocks.show', compact('stock'));
    }
}
