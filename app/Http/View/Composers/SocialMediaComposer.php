<?php
namespace App\Http\View\Composers;

use App\Models\Setting;
use Illuminate\View\View;

class SocialMediaComposer {
    public function compose(View $view) {
        $socials = Setting::where('key', '!=', 'helps')
                          ->where('key', '!=', 'about')
                          ->where('key', '!=', 'contact')
                          ->get();

        $view->with('socials', $socials);   
    }
}