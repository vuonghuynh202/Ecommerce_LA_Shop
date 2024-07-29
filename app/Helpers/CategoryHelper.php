<?php
namespace App\Helpers;

class CategoryHelper {
    private $htmlOption;
    private $data;

    public function __construct($data)
    {
        $this->data = $data;
    }

    public function categoryRecursive($id, $parentId = 0, $char = '') {

        foreach($this->data as $value) {

            if($value['parent_id'] == $parentId) {

                if(!empty($id) && $value['id'] == $id) {
                    $this->htmlOption .= '<option value="' . $value['id'] . '" selected>' 
                                      . $char . $value['name'] . 
                                        '</option>';
                } else {
                    $this->htmlOption .= '<option value="'. $value['id'] . '">' 
                                      . $char . $value['name'] . 
                                        '</option>';
                }

                $this->categoryRecursive($id, $value['id'], $char . '--');
            }
        }

        return $this->htmlOption;
    }
}
