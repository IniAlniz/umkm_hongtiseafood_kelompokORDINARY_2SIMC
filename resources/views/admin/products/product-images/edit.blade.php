<x-app-layout>
    <x-slot name="header">
        <h2 class="font-semibold text-xl text-gray-800 dark:text-gray-200 leading-tight">
            {{ __('Edit Product Image') }} : {{$product->name}}
        </h2>
    </x-slot>

    <div class="py-12">
        <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
            <div class="bg-white dark:bg-gray-800 overflow-hidden shadow-sm sm:rounded-lg">
                <div class="p-6 text-gray-900 dark:text-gray-100">
                <form method="POST" action="{{ route('admin.products.product-images.update', [$product, $productImage]) }}">
                        @csrf
                        @method('PUT')

                        <!-- Image Url -->
                        <div>
                            <x-input-label for="image_url" :value="__('Image URL')" />
                            <x-text-input id="image_url" class="block mt-1 w-full" type="text" name="image_url" :value="old('image_url', $productImage->image_url)" required autofocus autocomplete="image_url" />
                            <x-input-error :messages="$errors->get('image_url')" class="mt-2" />
                        </div>

                        <!-- Indexing -->
                        <div class="mt-4">
                            <x-input-label for="indexing" :value="__('Indexing')" />
                            <x-text-input id="indexing" class="block mt-1 w-full" type="number" name="indexing" :value="old('indexing', $productImage->indexing)" required autocomplete="indexing" />
                            <x-input-error :messages="$errors->get('indexing')" class="mt-2" />
                        </div>
                       
                        <div class="flex items-center justify-end mt-4">
                            <x-primary-button class="ms-4">
                                {{ __('Submit') }}
                            </x-primary-button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</x-app-layout>