<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Controllers\Traits\ImageUploadingTrait;
use App\Http\Requests\Admin\ProductRequest;
use App\Models\Category;
use App\Models\Product;
use App\Models\Tag;
use Illuminate\Support\Facades\Auth;

class ProductController extends Controller
{
    use ImageUploadingTrait;
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $products = Product::where('user_id', Auth::id())->get();  // Only show products created by the authenticated user

        return view('admin.products.index', compact('products'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $categories = Category::pluck('name', 'id');
        $tags = Tag::pluck('name', 'id');
        
        return view('admin.products.create', compact('categories','tags'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ProductRequest $request)
{
    // Get the authenticated user's ID
    $user_id = Auth::id();

    // Add the 'user_id' to the validated data
    $validatedData = $request->validated();
    $validatedData['user_id'] = $user_id;

    // Create the product with the user_id
    $product = Product::create($validatedData);

    // Attach tags if any
    $product->tags()->attach($request->input('tags', []));

    // Process the gallery images
    foreach ($request->input('gallery', []) as $file) {
        $product->addMedia(storage_path('tmp/uploads/' . $file))->toMediaCollection('gallery');
    }

    // Redirect back with a success message
    return redirect()->route('admin.products.index')->with([
        'message' => 'Product created successfully!',
        'type' => 'success'
    ]);
}


    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        if ($product->user_id !== Auth::id()) {
            abort(403, 'Unauthorized action.');  // Prevent unauthorized users from viewing the product
        }
        return view('admin.products.show', compact('product'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Product $product)
    {
        if ($product->user_id !== Auth::id()) {
            abort(403, 'Unauthorized action.');  // Prevent unauthorized users from editing the product
        }
        $categories = Category::pluck('name', 'id');
        $tags = Tag::pluck('name', 'id');

        return view('admin.products.edit', compact('product','categories','tags'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(ProductRequest $request,Product $product)
    {
        // Ensure the product belongs to the authenticated user
        if ($product->user_id !== Auth::id()) {
            abort(403, 'Unauthorized action.');  // Prevent unauthorized users from updating the product
        }
        $product->update($request->validated());
        $product->tags()->sync($request->input('tags', []));

        if (count($product->gallery) > 0) {
            foreach ($product->gallery as $media) {
                if (!in_array($media->file_name, $request->input('gallery', []))) {
                    $media->delete();
                }
            }
        }

        $media = $product->gallery->pluck('file_name')->toArray();

        foreach ($request->input('gallery', []) as $file) {
            if (count($media) === 0 || !in_array($file, $media)) {
                $product->addMedia(storage_path('tmp/uploads/' . $file))->toMediaCollection('gallery');
            }
        }

        return redirect()->route('admin.products.index')->with([
            'message' => 'Success Updated !',
            'type' => 'info'
        ]);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Product $product)
    {
        if ($product->user_id !== Auth::id()) {
            abort(403, 'Unauthorized action.');  // Prevent unauthorized users from deleting the product
        }
        $product->delete();

        return redirect()->back()->with([
            'message' => 'Success Deleted !',
            'type' => 'danger'
]);
}
}