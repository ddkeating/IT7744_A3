<?php

namespace App\Policies;

use App\Models\User;
use App\Models\Post;
use Illuminate\Auth\Access\Response;

class PostPolicy 
{
    // Checks if the user who created the post is the same given in the attribute or a admin and returns a bool if the user is the same.
    public function modify(User $user, Post $post): bool {
        return $user->id === $post->user_id || $user->is_admin;
    }
}

