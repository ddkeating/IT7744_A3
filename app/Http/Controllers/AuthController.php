<?php

namespace App\Http\Controllers;

use App\Models\User;
use Auth;
use Illuminate\Http\Request;

class AuthController extends Controller
{
    // Validates the users input and creates a new user with the given data.
    public function register(Request $request){
        
        // Validate
        $fields = $request->validate([
            'username' => ['required', 'max:255'],
            'email' => ['required', 'max:255', 'email', 'unique:users'],
            'password' => ['required', 'min:3', 'confirmed']
        ]);

        // Register
        $user = User::create($fields);

        // Logs the user in using the given data.
        Auth::login($user);

        // Redirects to dashboard
        return redirect()->route('dashboard');
    }

    // Logs the user with the provided credentials.
    public function login(Request $request)
    {
        // Validates user input.
        $fields = $request->validate([
            'email' => ['required', 'max:255', 'email'],
            'password' => ['required']
        ]);
        
        // If the users credentials match the credentials stored in the database, the user will be logged in and redirected to the dashboard
        if(Auth::attempt($fields, $request->remember)) {
            return redirect()->intended('dashboard');
        } else {
            return back()->withErrors([ // Returns user back to the login page with errors.
                'failed' => 'Wrong password or email'
            ]);
        }
    }

    // Logs user out and resets the session token.
    public function logout(Request $request){
        Auth::logout();
        $request->session()->invalidate();
        $request->session()->regenerateToken();
        return redirect('/');
    }
}
