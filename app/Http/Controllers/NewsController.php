<?php

namespace App\Http\Controllers;

use App\News;
use Carbon\Carbon;
use Illuminate\Http\Request;

class NewsController extends Controller
{
    public function index(Request $request)
    {
        $months = [];
        for ($i=0; $i < 11; $i++) {
            $time = Carbon::now()->addMonth(-$i);
            $months[$time->formatLocalized('%B %Y')] = [$time->year, $time->month];
        }
        $news = News::orderBy('date', 'desc');
        if($request->has('year') && $request->has('month')) {
            $news = $news->whereRaw('YEAR(`date`) = '.$request->year.' AND MONTH(`date`) = '.$request->month);
        }
        $news = $news->paginate(5);

        return view('news.index', compact('news', 'months'));
    }

    public function show(Request $request, News $news)
    {
        $months = [];
        for ($i=0; $i < 11; $i++) {
            $time = Carbon::now()->addMonth(-$i);
            $months[$time->formatLocalized('%B %Y')] = [$time->year, $time->month];
        }
        return view('news.show', compact('news', 'months'));
    }
}
