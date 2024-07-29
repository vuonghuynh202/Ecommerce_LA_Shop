<?php
namespace App\Traits;

use Illuminate\Support\Facades\Log;

trait DeleteModelTrait {
    public function deleteModelTrait($id, $model) {
        try {
            $model->find($id)->delete();
    
            return response()->json([
                'code' => 200,
                'message' => 'Deleted successfully.'
            ]);
        } catch(\Throwable $th) {
            Log::error('message: '. $th->getMessage());

            return response()->json([
                'code' => 500,
                'message' => 'Delete failed'
            ]);            
        }
    }
}