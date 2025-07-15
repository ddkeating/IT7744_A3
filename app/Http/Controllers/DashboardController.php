<?php

namespace App\Http\Controllers;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class DashboardController extends Controller
{
    // Gets the users post and sorts them by recently posted.
    public function index(){
        $posts = Auth::user()->posts()->latest()->paginate(6);
        return view('users.dashboard', ['posts' => $posts]);
    }

    // Function for displaying other users posts.
    public function userPosts(User $user){
        $usersPosts = $user ->posts()->latest()->paginate(6);
        return view('users.posts', [
            'posts' => $usersPosts,
            'user' => $user
        ]);
    }
}
