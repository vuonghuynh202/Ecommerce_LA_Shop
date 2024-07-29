<?php

namespace App\Http\Controllers\Customer;

use App\Http\Controllers\Controller;
use App\Models\Setting;
use Illuminate\Http\Request;

class UserSettingController extends Controller
{
    public function getAbout() {
        $setting = Setting::where('key', 'about')->first();
        return view('clients.pages.about', compact('setting'));
    }

    public function getHelps() {
        $setting = Setting::where('key', 'helps')->first();
        return view('clients.pages.helps', compact('setting'));
    }

    public function getContact() {
        $setting = Setting::where('key', 'contact')->first();
        return view('clients.pages.contact', compact('setting'));
    }
}
