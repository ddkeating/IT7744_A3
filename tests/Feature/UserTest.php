<?php

use App\Models\User;
use Illuminate\Foundation\Testing\RefreshDatabase;

uses(RefreshDatabase::class);

it('registers a new user', function () {
    $response = $this->post('/register', [
        'username' => 'newuser',
        'email' => 'newuser@example.com',
        'password' => 'password123',
        'password_confirmation' => 'password123',
    ]);

    $response->assertRedirect(route('dashboard'));

    $this->assertDatabaseHas('users', [
        'username' => 'newuser',
        'email' => 'newuser@example.com',
    ]);
});

it('updates user profile', function () {
    $user = User::factory()->create();

    $this->actingAs($user)
        ->put(route('users.update'), [
            'username' => 'updateduser',
            'email' => 'updated@example.com',
        ])
        ->assertRedirect(route('dashboard'));

    $this->assertDatabaseHas('users', [
        'id' => $user->id,
        'username' => 'updateduser',
        'email' => 'updated@example.com',
    ]);
});

it('does not update profile with duplicate email', function () {
    $user1 = User::factory()->create(['email' => 'user1@example.com']);
    $user2 = User::factory()->create(['email' => 'user2@example.com']);

    $this->actingAs($user2)
        ->put(route('users.update'), [
            'username' => 'user2',
            'email' => 'user1@example.com', // duplicate email
        ])
        ->assertSessionHasErrors('email');
});
