<?php

namespace App\Http\Controllers\Voyager;

use Illuminate\Http\Request;
use App\LanguageCn;
use TCG\Voyager\Facades\Voyager;
use App\Http\Controllers\Controller;
use Intervention\Image\Facades\Image;
use TCG\Voyager\Events\BreadDataAdded;
use TCG\Voyager\Events\BreadDataUpdated;

class VoyagerLanguageCnController extends \TCG\Voyager\Http\Controllers\VoyagerBaseController
{
    public function store(Request $request) {
        $res = parent::store($request);

        $this->toFile();

        return $res;
    }

    public function update(Request $request, $id)
    {
        $res = parent::update($request, $id);

        $this->toFile();

        return $res;
    }
    
    public function destroy(Request $request, $id)
    {
        $res = parent::destroy($request, $id);

        $this->toFile();

        return $res;
    }

    public function toFile()
    {
        $models = LanguageCn::all()->mapWithKeys(function ($item) {
            return [$item['default'] => $item['text']];
        })->toJson(JSON_PRETTY_PRINT);
                
        file_put_contents(base_path().'/resources/lang/cn.json', $models);
    }
}