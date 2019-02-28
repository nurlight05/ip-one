<?php

namespace App\Http\Controllers;

use App\Stock;
use Illuminate\Http\Request;

class StocksController extends Controller
{
    public function index(Request $request)
    {
        $stocks = Stock::orderBy('date', 'desc');
        if($request->has('month')) {
            $stocks = $stocks->whereRaw('MONTH(`date`) = '.$request->month);
        }
        $stocks = $stocks->paginate(5);       
        return view('stocks.index', compact('stocks'));
    }

    public function show(Request $request, Stock $stock)
    {
        return view('stocks.show', compact('stock'));
    }
}
