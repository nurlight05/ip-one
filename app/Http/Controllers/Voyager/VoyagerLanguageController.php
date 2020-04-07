<?php

namespace App\Http\Controllers\Voyager;

use Illuminate\Http\Request;
use TCG\Voyager\Facades\Voyager;
use App\Http\Controllers\Controller;
use Intervention\Image\Facades\Image;
use TCG\Voyager\Events\BreadDataAdded;
use TCG\Voyager\Events\BreadDataUpdated;

class VoyagerLanguageController extends \TCG\Voyager\Http\Controllers\VoyagerBaseController
{
    public function store(Request $request) {
        return parent::store($request);
    }

    public function update(Request $request, $id)
    {
        return parent::update($request, $id);
    }
}