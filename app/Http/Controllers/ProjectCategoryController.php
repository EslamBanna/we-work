<?php

namespace App\Http\Controllers;

use App\Models\ProjectCategory;
use App\Traits\GeneralTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ProjectCategoryController extends Controller
{
    use GeneralTrait;
    public function createMainCategory(Request $request)
    {
        try {
            $validata = Validator::make($request->all(), [
                'category_name_en' => 'required|string|max:255',
                'category_name_ar' => 'required|string|max:255'
            ]);
            if ($validata->fails()) {
                return $this->returnError(202, $validata->errors()->first());
            }
            ProjectCategory::create([
                'category_name_en' => $request->category_name_en,
                'category_name_ar' => $request->category_name_ar
            ]);
            return $this->returnSuccessMessage('success');
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function getMainCategories()
    {
        try {
            $categories = ProjectCategory::get();
            return $this->returnData('data', $categories);
        } catch (\Exception $e) {
            return $this->returnError('400', $e->getMessage());
        }
    }
}
