<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\Category;
use App\Models\Product;
use App\Traits\StorageImageTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Str;
use App\Helpers\CategoryHelper;
use App\Http\Requests\Product\CreateFormRequest;
use App\Http\Requests\Product\UpdateFormRequest;
use App\Models\Color;
use App\Models\ProductImage;
use App\Models\Size;
use App\Traits\TrashTrait;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Log;

class ProductController extends Controller
{
    use StorageImageTrait;
    use TrashTrait;

    private $product;
    private $category;
    private $color;
    private $size;
    private $productImage;
    public function __construct(
        Product $product, 
        Category $category, 
        Color $color,
        Size $size,
        ProductImage $productImage)
    {
        $this->product = $product;
        $this->category = $category;
        $this->color = $color;
        $this->size = $size;
        $this->productImage = $productImage;
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $products = $this->product->get();
        return view('admin.product.index', compact('products'));
    }


    private function getCategory($id) {
        $data = $this->category->all();
        $recursive = new CategoryHelper($data);
        $htmlOption = $recursive->categoryRecursive($id);

        return $htmlOption;
    }
    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        $categories = $this->getCategory('');
        return view('admin.product.create', compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(CreateFormRequest $request)
    {
        try {
            DB::beginTransaction();

            $dataCreate = [
                'name' => $request->name,
                'slug' => Str::slug($request->name),
                'price' => $request->price,
                'discount' => $request->discount,
                'category_id' => $request->category_id,
                'is_feature' => $request->is_feature,
                'description' => $request->description,
                'status' => $request->status,
                'user_id' => Auth::id(),
            ];
            $featureImage = $this->storageUploadImage($request, 'feature_img_path', 'product');
            if(!empty($featureImage)) {
                $dataCreate['feature_img_path'] = $featureImage;
            }
    
            $product = $this->product->create($dataCreate);
    
            //insert detail images
            if($request->hasFile('image_paths')) {
                foreach($request->image_paths as $file) {
                    $imageCreate = $this->storageMultipleUploadImage($file, 'product');
                    $product->images()->create([
                        'image_path' => $imageCreate,
                    ]);
                }
            }
    
            //inser color
            $colorIds = [];
            if(!empty($request->colors)) {
                foreach($request->colors as $color) {
                    $colorInstance = $this->color->firstOrCreate(['name' => $color]);
                    $colorIds[] = $colorInstance->id;
                }
            }
            $product->colors()->attach($colorIds);
    
            //insert size
            $sizeIds = [];
            if(!empty($request->sizes)) {
                foreach($request->sizes as $size) {
                    $sizeInstance = $this->size->firstOrCreate(['name' => $size]);
                    $sizeIds[] = $sizeInstance->id;
                }
            }
            $product->sizes()->attach($sizeIds);

            Db::commit();

            return redirect()->route('product.index')->with('success', 'Created Successfully.');

        } catch(\Throwable $th) {
            DB::rollBack();
            Log::error('Message: ' . $th->getMessage());

            return redirect()->back()->with('error', 'Create Failed! Please Try Again.');
        }
    }

    /**
     * Display the specified resource.
     */
    public function show(string $id)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     */
    public function edit(Product $product)
    {
        $categories = $this->getCategory($product->category_id);

        return view('admin.product.edit', compact('product', 'categories'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateFormRequest $request, Product $product)
    {
        try {
            DB::beginTransaction();

            $dataUpdate = [
                'name' => $request->name,
                'slug' => Str::slug($request->name),
                'price' => $request->price,
                'discount' => $request->discount,
                'category_id' => $request->category_id,
                'is_feature' => $request->is_feature,
                'description' => $request->description,
                'status' => $request->status
            ];
            $featureImage = $this->storageUploadImage($request, 'feature_img_path', 'product');
            if(!empty($featureImage)) {
                $dataUpdate['feature_img_path'] = $featureImage;
            }
            $product->update($dataUpdate);
    
            //insert detail images
            if($request->hasFile('image_paths')) {

                $this->productImage->where('product_id', $product->id)->delete();

                foreach($request->image_paths as $file) {
                    $imageCreate = $this->storageMultipleUploadImage($file, 'product');
                    $product->images()->create([
                        'image_path' => $imageCreate,
                    ]);
                }
            }


            //inser color
            $colorIds = [];
            if(!empty($request->colors)) {
                foreach($request->colors as $color) {
                    $colorInstance = $this->color->firstOrCreate(['name' => $color]);
                    $colorIds[] = $colorInstance->id;
                }
            }
            $product->colors()->sync($colorIds);
    
            //insert size
            $sizeIds = [];
            if(!empty($request->sizes)) {
                foreach($request->sizes as $size) {
                    $sizeInstance = $this->size->firstOrCreate(['name' => $size]);
                    $sizeIds[] = $sizeInstance->id;
                }
            }
            $product->sizes()->sync($sizeIds);

            Db::commit();

            return redirect()->route('product.index')->with('success', 'Updated Successfully.');

        } catch(\Throwable $th) {
            DB::rollBack();
            Log::error('Message: ' . $th->getMessage());

            return redirect()->back()->with('error', 'Update Failed! Please Try Again.');
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Product $product)
    {
        return $this->moveToTrash($product->id, $this->product);
    }

    public function restore($id)
    {
        return $this->restoreModel($this->product, $id);
    }

    public function forceDelete($id) 
    {
       return $this->forceDeleteModel($this->product, $id);
    }
}
