<x-layout>
    <h1 class="title"> Edit User Details </h1>
    <div class="mx-auto max-w-screen-sm card">
        <form action="{{ route('users.update', $user) }}" method="post">
        @csrf
        @method('PUT')

        {{-- Username --}}
        <div class="mb-4">
            <label for="username">Username</label>
            <input type="text" name="username" value="{{ $user->username }}" class="input @error('username') ring-red-500 @enderror">
            
            @error('username')
                <p class="error">{{ $message }}</p>
            @enderror
        </div>
    

        {{-- Email --}}
        <div class="mb-4">
            <label for="email">Email</label>
            <input type="text" name="email" value="{{ $user->email }}" class="input @error('email') ring-red-500 @enderror">
            @error('email')
                <p class="error"> {{ $message }}</p>
            @enderror
        </div>

        {{-- Submit Button --}}
        <button class="btn">Update Details</button>
    </form>

</x-layout>