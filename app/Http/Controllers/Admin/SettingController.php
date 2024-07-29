<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Setting\CreateFormRequest;
use App\Http\Requests\Setting\UpdateFormRequest;
use App\Models\Setting;
use App\Traits\DeleteModelTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Log;

class SettingController extends Controller
{
    use DeleteModelTrait;

    /**
     * Display a listing of the resource.
     */
    public function index() {
        $settings = Setting::all();

        $settingExist = [
            'about' => false,
            'helps' => false,
            'contact' => false,
        ];
    
        foreach ($settings as $item) {
            if (array_key_exists($item->key, $settingExist)) {
                $settingExist[$item->key] = true;
            }
        }

        return view('admin.setting.index', compact('settings', 'settingExist'));
    }

    /**
     * Show the form for creating a new resource.
     */
    public function create(Request $request) {
        $key = $request->query('key', 'social');
        return view('admin.setting.create', compact('key'));
    }

    /**
     * Store a newly created resource in storage.
     */
    public function store(CreateFormRequest $request) {
        try {
            $data = [
                'key' => strtolower($request->key),
                'value' => $request->value,
            ];
    
            Setting::create($data);
    
            return redirect()->route('setting.index')->with('success', 'Created Successfully.');

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
    public function edit($key) {
        $setting = Setting::where('key', $key)->first();
        return view('admin.setting.edit', compact('setting', 'key'));
    }

    /**
     * Update the specified resource in storage.
     */
    public function update(UpdateFormRequest $request, $key)
    {
        try {
            $data = [
                'key' => $request->key,
                'value' => $request->value,
            ];
    
            Setting::where('key', $key)->update($data);
    
            return redirect()->route('setting.index')->with('success', 'Updated Successfully.');
            
        } catch(\Throwable $th) {
            Log::error('Message: ' . $th->getMessage());

            return redirect()->back()->with('error', 'Update Failed! Please Try Again.');
        }
    }

    /**
     * Remove the specified resource from storage.
     */
    public function destroy(string $id)
    {
        return $this->deleteModelTrait($id, (new Setting()));
    }
}
