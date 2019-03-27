<?php

namespace App\Providers;

use Illuminate\Support\Carbon;
use Illuminate\Support\Facades\App;
use Illuminate\Support\Facades\Cookie;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        setlocale(LC_ALL, 'ru_RU.UTF-8');
        view()->composer('*', function($view) {
            $locale = Cookie::get('locale', 'ru');
            
            if($locale == 'en')
                $ietf = 'en_US';
            else
                $ietf = 'ru_RU';
            setlocale(LC_ALL, $ietf.'.UTF-8');

            Carbon::setLocale($locale);
            App::setLocale($locale);
        });
    }

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        //
    }
}
