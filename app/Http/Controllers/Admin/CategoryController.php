<?php

namespace App\Http\Controllers\Admin;

use App\Helpers\CategoryHelper;
use App\Http\Controllers\Controller;
use App\Http\Requests\Category\CreateFormRequest;
use App\Http\Requests\Category\UpdateFormRequest;
use App\Models\Category;
use App\Traits\TrashTrait;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Log;

class CategoryController extends Controller
{
    use TrashTrait;

    private $category;

    public function __construct(Category $category)
    {
        $this->category = $category;
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $categories = $this->category->latest()->get();
        return view('admin.category.index', compact('categories'));
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
        $id = '';
        $categories = $this->getCategory($id);
        return view('admin.category.create', compact('categories'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(CreateFormRequest $request)
    {
        try {
            $dataCreate = [
                'name' => $request->name,
                'slug' => Str::slug($request->name),
                'parent_id' => $request->parent_id,
                'status' => $request->status,
            ];
            $this->category->create($dataCreate);

            return redirect()->route('category.index')->with('success', 'Created Successfully.');

        } catch(\Throwable $th) {
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
    public function edit(Category $category)
    {
        $categories = $this->getCategory($category->parent_id);
        return view('admin.category.edit', compact('category', 'categories'));
    }   

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateFormRequest $request, Category $category)
    {
        try {
            $dataUpdate = [
                'name' => $request->name,
                'slug' => Str::slug($request->name),
                'parent_id' => $request->parent_id,
                'status' => $request->status,
            ];
            $category->update($dataUpdate);

            return redirect()->route('category.index')->with('success', 'Updated Successfully.');

        } catch(\Throwable $th) {
            Log::error('Message: ' . $th->getMessage());

            return redirect()->back()->with('error', 'Update Failed! Please Try Again.');
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Category $category)
    {
        return $this->moveToTrash($category->id, $this->category);
    }

    public function restore($id)
    {
        return $this->restoreModel($this->category, $id);
    }

    public function forceDelete($id) 
    {
       return $this->forceDeleteModel($this->category, $id);
    }
}
