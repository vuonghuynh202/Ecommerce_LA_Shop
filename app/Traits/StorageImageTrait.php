<?php
namespace App\Traits;

use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Str;

trait StorageImageTrait {
    public function storageUploadImage($request, $fieldName, $folderName) {
        if($request->hasFile($fieldName)) {
            $file = $request->$fieldName;
            $fileName = Str::random(20) . '.' . $file->getClientOriginalExtension();
            $path = $request->file($fieldName)->storeAs('public/' . $folderName, $fileName);

            return Storage::url($path);
        }
        return null;
    }

    public function storageMultipleUploadImage($file, $folderName) {
        $fileName = Str::random(20) . '.' . $file->getClientOriginalExtension();
        $path = $file->storeAs('public/' . $folderName, $fileName);

        return Storage::url($path);
    }
}