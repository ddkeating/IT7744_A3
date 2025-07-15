<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>{{env('APP_NAME')}}</title>
    @vite(['resources/css/app.css', 'resources/js/app.js'])

     <script defer src="https://cdn.jsdelivr.net/npm/alpinejs@3.x.x/dist/cdn.min.js"></script>
</head>
<body class="bg-slate-100 text-slate-900">
    <header class="bg-slate-800 shadow-lg">
        <nav>
            <a href="{{ route('posts.index') }}" class="nav-link">Home</a>

            {{-- If the user is on a authenticated account, they will see the following HTML. --}}
            @auth
            <div class="relative grid place-items-center" x-data="{ open: false }">
            {{-- Dropdown Menu Button --}}
                <button @click="open = !open" type="button" class="round-btn">
                    <img src="{{ asset('img/whitecliffe-thumb.jpg') }}" alt="profile" >
                </button>
            
            {{-- Dropdown Menu --}}
                <div x-show="open" @click.outside="open=false" class="bg-white shadow-lg absolute top-10 right-0 rounded-lg overflow-hidden font-light">
                    <p class="username">{{ auth()->user()->username }}</p>
                    <a href="{{ route('dashboard') }}" class="">Dashboard</a>

                    <form action="{{ route('logout') }}" method="post">
                        @csrf
                        <button class="block w-full text-left hover:bg-slate-100 pl-4 pr-8 py-2">Logout</button>
                    </form>
                </div>
            </div>
            @endauth

            {{-- If the current user is a guest, they will see these elements. --}}
            @guest
            <div class="flex items-center gap-4">
                <a href="{{ route(name:'login') }}" class="nav-link">Login</a>
                <a href="{{ route('register') }}" class="nav-link">Register</a>
            </div>
            @endguest
        </nav>
    </header>

    <main class="py-8 px-4 mx-auto max-w-screen-lg">
    {{ $slot }}
    </main>
</body>
</html>