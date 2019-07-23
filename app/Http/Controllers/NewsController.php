<?php

namespace App\Http\Controllers;

use App\News;
use Carbon\Carbon;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Cookie;

class NewsController extends Controller
{
    public function index(Request $request)
    {
        $this->setLocale();
        $months = [];
        for ($i = 0; $i < 11; $i++) {
            $time = Carbon::now()->addMonth(-$i);
            $months[$time->formatLocalized('%B %Y')] = [$time->year, $time->month];
        }
        $news = News::orderBy('date', 'desc');
        if ($request->has('year') && $request->has('month')) {
            $news = $news->whereRaw('YEAR(`date`) = ' . $request->year . ' AND MONTH(`date`) = ' . $request->month);
        }
        if ($request->has('event')) {
            $news = $news->where('is_event', 1);
        }
        $news = $news->paginate(5);

        return view($this->getView('news.index'), compact('news', 'months'));
    }

    public function show(Request $request, News $news)
    {
        $this->setLocale();
        $months = [];
        for ($i = 0; $i < 11; $i++) {
            $time = Carbon::now()->addMonth(-$i);
            $months[$time->formatLocalized('%B %Y')] = [$time->year, $time->month, $time->format('Y-m')];
        }
        return view($this->getView('news.show'), compact('news', 'months'));
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
