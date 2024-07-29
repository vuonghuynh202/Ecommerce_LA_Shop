<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Slider\CreateFormRequest;
use App\Http\Requests\Slider\UpdateFormRequest;
use App\Models\Slider;
use App\Traits\StorageImageTrait;
use App\Traits\TrashTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class SliderController extends Controller
{
    use StorageImageTrait;
    use TrashTrait;

    private $slider;
    public function __construct(Slider $slider)
    {
        $this->slider = $slider;
    }

    /**
     * Display a listing of the resource.
     */
    public function index()
    {
        $sliders = $this->slider->all();
        return view('admin.slider.index', compact('sliders'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create()
    {
        return view('admin.slider.create');
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(CreateFormRequest $request)
    {
        try {
            $dataCreate = [
                'title' => $request->title,
                'content' => $request->content,
            ];
    
            $image = $this->storageUploadImage($request, 'image', 'slider');
            if(!empty($image)) {
                $dataCreate['image'] = $image;
            }
            
            $this->slider->create($dataCreate);
    
            return redirect()->route('slider.index')->with('success', 'Created successfully.');

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
    public function edit(Slider $slider)
    {
        return view('admin.slider.edit', compact('slider'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateFormRequest $request, Slider $slider)
    {
        try {
            $dataUpdate = [
                'title' => $request->title,
                'content' => $request->content,
            ];
    
            $image = $this->storageUploadImage($request, 'image', 'slider');
            if(!empty($image)) {
                $dataUpdate['image'] = $image;
            }
            
            $slider->update($dataUpdate);
    
            return redirect()->route('slider.index')->with('success', 'Updated successfully.');

        } catch(\Throwable $th) {
            Log::error('Message: ' . $th->getMessage());

            return redirect()->back()->with('error', 'Update Failed! Please Try Again.');
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(Slider $slider)
    {
        return $this->moveToTrash($slider->id, $this->slider);
    }

    public function restore($id)
    {
        return $this->restoreModel($this->slider, $id);
    }

    public function forceDelete($id) 
    {
       return $this->forceDeleteModel($this->slider, $id);
    }
}
