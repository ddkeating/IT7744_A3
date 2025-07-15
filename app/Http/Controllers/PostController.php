<?php

namespace App\Http\Controllers;

use App\Models\Post;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Gate;
use Illuminate\Routing\Controllers\Middleware;
use Illuminate\Routing\Controllers\HasMiddleware;
use Storage;

class PostController extends Controller implements HasMiddleware
{
    // Middleware function 
    public static function middleware(): array {
        return [
            new Middleware('auth', except: ['index', 'show'])
        ];
    }

    // Display a paginated list of posts sorted by most recent
    public function index()
    {
        $posts = Post::latest()->paginate(6);
        return view('posts.index', ['posts'=> $posts]);
    }

    // Creates a new post taking a title, body and image input.
    public function store(Request $request)
    {
        $request->validate([
            'title' => ['required', 'max:255',],
            'body' => ['required', 'max:500'],
            'image' => ['nullable', 'file', 'max:3000', 'mimes:png,jpg,webp']
        ]);


        // Will store the image if the image is included in the request else will return null to use a default image for the post.
        if ($request->hasFile('image')) {
            $path = Storage::disk('public')->put('post_images', $request->image);
        } else
            $path = null;

        
        // Creates a new post associated with the authenticated user using the provided title, body, and image path from the request.
        Auth::user()->posts()->create([
            'title' => $request->title,
            'body' => $request->body,
            'image' => $path
        ]);

        return back()->with('success', "Your post was created.");
    }

    // Displays the specified post.
    public function show(Post $post)
    {
        return view('posts.show', ['post'=> $post]);
    }

    
    // Shows the edit form for the specified post after authorization
    public function edit(Post $post)
    {
        Gate::authorize('modify', $post);
        return view('posts.edit', ['post'=> $post]);
    }

    // Updates the specified post and validates the inputs given in the updated post.
    public function update(Request $request, Post $post)
    {
        // Ensures only the user whom created the post can edit it.
        Gate::authorize('modify', $post);

        // Checks the input and verify's it matches the given arguments.
        $request->validate([
            'title' => ['required', 'max:255'],
            'body' => ['required', 'max:500'],
            'image' => ['nullable', 'file', 'max:3000', 'mimes:png,jpg,webp']
        ]);

        if ($request->hasFile('image')){
            Storage::disk('public')->delete($post->image);
        }
        $path = Storage::disk('public')->put('post_images', $request->image);

        // Update the post
        $post->update([
            'title' => $request->title,
            'body'=> $request->body,
            'image' => $path
        ]);
        return redirect()->route('dashboard')->with('success', "Your post was updated.");
    }

    // Deletes the specified post.
    public function destroy(Post $post)
    {
        // Ensures only the user who created the post can delete it.
        Gate::authorize("modify", $post);

        // Delete post image if exist
        if ($post->image) {
            Storage::disk('public')->delete($post->image);
        }
        
        $post->delete();
        return back()->with('delete', "Your post was deleted");
    }
}
