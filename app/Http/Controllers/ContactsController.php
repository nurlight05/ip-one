<?php

namespace App\Http\Controllers;

use App\Content;
use Illuminate\Http\Request;

class ContactsController extends Controller
{
    public function index()
    {
        $content = Content::where('name', 'Контакты')->first();
        return view($this->getView('contacts.index'), compact('content'));
    }
}
