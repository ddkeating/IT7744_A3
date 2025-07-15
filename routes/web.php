<?php

use App\Http\Controllers\AuthController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\PostController;
use App\Models\Post;
use Illuminate\Support\Facades\Route;

// List of routes used for performing http request.

Route::redirect('/', 'posts');

Route::resource('posts', PostController::class);

Route::get('/{user}/posts', [DashboardController::class, 'userPosts'])->name('posts.user');

// Admin Panel
Route::middleware('auth')->group(function () {
    Route::get('/admin', function () {
        if (!auth()->user()->is_admin) {
            return abort('403', 'Unauthorized');
        }
        $posts = Post::latest()->paginate(10);
        return view('admin.admin', ['posts' => $posts]);
    })->name('admin');
});

Route::middleware('auth')->group(function () {
    Route::get('/dashboard', [DashboardController::class,'index'])->name('dashboard');
    Route::get('/user/edit', [AuthController::class, 'edit'])->name('users.edit');
    Route::put('/user/update', [AuthController::class, 'update'])->name('users.update');
    Route::post('/logout', [AuthController::class, 'logout'])->name('logout');
});

Route::middleware('guest')->group(function () {
    Route::view('/register', 'auth.register')->name('register');
    Route::post('/register', [AuthController::class, 'register']);
    Route::view('/login', 'auth.login')->name('login');
    Route::post('/login', [AuthController::class, 'login']);
});

Route::get('/logout', function () {
    return redirect()->route('posts.index');
});
