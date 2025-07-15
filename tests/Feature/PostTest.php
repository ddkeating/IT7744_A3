<?php

use App\Models\Post;
use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;

uses(RefreshDatabase::class);

it('can list posts', function () {
    Post::factory()->count(5)->create();

    $response = $this->get(route('posts.index'));

    $response->assertOk();
    $response->assertSeeText('Posts'); // assuming your page has this
});

it('creates a post', function () {
    $user = User::factory()->create();

    $this->actingAs($user)
        ->post(route('posts.store'), [
            'title' => 'My New Post',
            'body' => 'This is the post body.',
        ])
        ->assertRedirect();

    $this->assertDatabaseHas('posts', [
        'title' => 'My New Post',
        'body' => 'This is the post body.',
        'user_id' => $user->id,
    ]);
});

it('updates a post', function () {
    $user = User::factory()->create();
    $post = Post::factory()->create(['user_id' => $user->id]);

    $this->actingAs($user)
        ->put(route('posts.update', $post), [
            'title' => 'Updated Title',
            'body' => 'Updated body.',
        ])
        ->assertRedirect();

    $this->assertDatabaseHas('posts', [
        'id' => $post->id,
        'title' => 'Updated Title',
        'body' => 'Updated body.',
    ]);
});

it('prevents unauthorized post update', function () {
    $user = User::factory()->create();
    $otherUser = User::factory()->create();
    $post = Post::factory()->create(['user_id' => $otherUser->id]);

    $this->actingAs($user)
        ->put(route('posts.update', $post), [
            'title' => 'Hacked Title',
            'body' => 'Hacked body.',
        ])
        ->assertForbidden();
});
