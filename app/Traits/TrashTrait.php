<?php

namespace App\Traits;

use Illuminate\Support\Facades\Log;

trait TrashTrait
{
    public function moveToTrash($id, $model) {
        try {
            $model->find($id)->delete();
    
            return response()->json([
                'code' => 200,
                'message' => 'It was moved to the trash bin'
            ]);
        } catch(\Throwable $th) {
            Log::error('message: '. $th->getMessage());

            return response()->json([
                'code' => 500,
                'message' => 'Delete failed'
            ]);            
        }
    }

    public function trashPage($model)
    {
        return $model->onlyTrashed()->get();
    }

    protected function restoreModel($model, $id)
    {
        $item = $model->withTrashed()->find($id);

        if ($item) {
            $item->restore();
            return response()->json([
                'code' => 200,
                'message' => 'Restored successfully',
            ]);
        } else {
            return response()->json([
                'code' => 404,
                'message' => 'Item not found',
            ]);
        }
    }

    public function forceDeleteModel($model, $id)
    {
        $model->withTrashed()
            ->where('id', $id)
            ->forceDelete();

        return response()->json([
            'code' => 200,
            'message' => 'Data permanently deleted successfully.',
        ]);
    }
}
