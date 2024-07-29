<?php

namespace App\Providers;

use App\Http\View\Composers\NotificationComposer;
use App\Http\View\Composers\SocialMediaComposer;
use Illuminate\Pagination\Paginator;
use Illuminate\Support\Facades\Blade;
use Illuminate\Support\ServiceProvider;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Register any application services.
     */
    public function register(): void
    {
        //
    }

    /**
     * Bootstrap any application services.
     */
    public function boot(): void
    {
        Paginator::useBootstrapFour();

        Blade::directive('starRating', function ($avgRating) {
            return "<?php
                \$avgRating = floatval($avgRating);
                \$fullStars = floor(\$avgRating);
                \$hasHalfStar = (\$avgRating - \$fullStars) > 0;

                for (\$i = 1; \$i <= 5; \$i++) {
                    if (\$i <= \$fullStars) {
                        echo '<small class=\"fas fa-star\"></small>';
                    } elseif (\$hasHalfStar && \$i == \$fullStars + 1) {
                        echo '<small class=\"fas fa-star-half-alt\"></small>';
                        \$hasHalfStar = false;
                    } else {
                        echo '<small class=\"far fa-star\"></small>';
                    }
                }
            ?>";
        });

        view()->composer(
            'admin.*',
            NotificationComposer::class
        );
        view()->composer(
            'clients.*',
            SocialMediaComposer::class
        );
    }
}
