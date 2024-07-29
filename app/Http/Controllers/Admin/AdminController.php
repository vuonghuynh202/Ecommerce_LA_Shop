<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\AdminLogin\AdminLoginRequest;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminController extends Controller
{
    public function adminLogin() {
        return view('admin.login.adminLogin');
    }

    public function postAdminLogin(AdminLoginRequest $request) {
        if (Auth::attempt([
            'email' => $request->email, 
            'password' => $request->password
        ])) {
            if (Auth::user()->role == 1) {
                return redirect()->route('admin.index');
            } else {
                Auth::logout();
                return abort(403);
            }
        }
        return redirect()->back()->withErrors(['email' => 'The provided credentials do not match our records.']);
    }
}
