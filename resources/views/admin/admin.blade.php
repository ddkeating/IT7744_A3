<x-layout>
    <h1 class="title">Admin Dashboard</h1>

    {{-- section message --}}
        @if (session('success'))
            <x-flashMsg msg="{{ session('success') }}"/>
        @elseif (session('delete'))
            <x-flashMsg msg="{{ session('delete') }}" bg="bg-red-500" />
        @endif

    <div class="grid grid-cols-2 gap-6">
        @foreach ($posts as $post)
        <x-postCard :post="$post">
            {{-- update --}}
            <a href="{{ route('posts.edit', $post) }}" class="bg-green-500 text-white px-2 py-1 text-xs rounded-md">Update</a>

            {{-- delete --}}
            <form action="{{ route('posts.destroy', $post) }}" method="post">
                @csrf
                @method('DELETE')
                <button class="bg-red-500 text-white px-2 py-1 text-xs rounded-md">Delete</button>
            </form>
        </x-postCard>

        @endforeach
    </div>
    <div>
        {{$posts->links()}}
    </div>
</x-layout>