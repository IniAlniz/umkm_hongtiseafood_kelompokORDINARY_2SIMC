<?php

namespace App\Http\Controllers;

use App\Models\Product;
use App\Models\ProductImage;
use App\Http\Requests\StoreProductImageRequest;
use App\Http\Requests\UpdateProductImageRequest;
use DB;

class ProductImageController extends Controller
{
    /**
     * Display a listing of the resource.
     */
    public function index(Product $product)
    {
        $productImages = ProductImage::where('product_id', $product->id)->get();
        return view('admin.products.product-images.index', compact('product', 'productImages'));
    
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(Product $product)
    {
        return view('admin.products.product-images.create', compact('product'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(StoreProductImageRequest $request, Product $product)
    {
        try {
            DB::beginTransaction();
            $request['product_id'] = $product->id;
            // INSERT INTO products VALUE()
            $productImage = ProductImage::create($request->all());
            DB::commit();
            return redirect()->route('admin.products.product-images.index', compact('product'));
        } catch (\Exception $th) {
            DB::rollback();
            return redirect()->back()->withErrors($e->getMessage())->withInput();
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(Product $product, ProductImage $productImage)
    {
        return view('admin.products.product-images.show', compact('product', 'productImage'));
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Product $product, ProductImage $productImage)
    {
        return view('admin.products.product-images.edit', compact('product', 'productImage'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateProductImageRequest $request, Product $product, ProductImage $productImage)
    {
        try {
            DB::beginTransaction();
            // UPDATE products SET() WHERE id=... 
            $productImage->update($request->all());
            DB::commit();
            return redirect()->route('admin.products.product-images.index');
        } catch (\Exception $th) {
            DB::rollback();
            return redirect()->back()->withErrors($e->getMessage())->withInput();
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Product $product, ProductImage $productImage)
    {
        try {
            DB::beginTransaction();
            // DELETE FROM products WHERE id=...
            $productImage->delete();
            DB::commit();
            return redirect()->route('admin.products.product-images.index', compact('product'));
        } catch (\Exception $th) {
            DB::rollback();
            return redirect()->route('admin.products.product-images.index', compact('product'))->withErrors($e->getMessage())->withInput();
        }
    }
}