<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\ProductCategory;
use App\Http\Requests\StoreProductRequest;
use App\Http\Requests\UpdateProductRequest;
use Illuminate\Support\Str;
use DB;

class ProductController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $products = Product::all();
        return view('admin.products.index', compact('products'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $productCategories = ProductCategory::all();
        return view('admin.products.create', compact('productCategories'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreProductRequest $request)
    {
        try {
            DB::beginTransaction();
            $request['slug'] = Str::slug($request['name']);
            // INSERT INTO products VALUE()
            $product = Product::create($request->all());
            DB::commit();
            return redirect()->route('admin.products.index');
        } catch (\Exception $th) {
            DB::rollback();
            return redirect()->back()->withErrors($e->getMessage())->withInput();
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Product $product)
    {
        return view('admin.product.show', compact('product'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Product $product)
    {
        $productCategories = ProductCategory::all();
        return view('admin.products.edit', compact('product', 'productCategories'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateProductRequest $request, Product $product)
    {
        try {
            DB::beginTransaction();
            $request['slug'] = Str::slug($request['name']);
            // UPDATE products SET() WHERE id=... 
            $product->update($request->all());
            DB::commit();
            return redirect()->route('admin.products.index');
        } catch (\Exception $th) {
            DB::rollback();
            return redirect()->back()->withErrors($e->getMessage())->withInput();
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Product $product)
    {
        try {
            DB::beginTransaction();
            // DELETE FROM products WHERE id=...
            $product->delete();
            DB::commit();
            return redirect()->route('admin.products.index');
        } catch (\Exception $th) {
            DB::rollback();
            return redirect()->route('admin.products.index')->withErrors($e->getMessage())->withInput();
        }
    }
}
