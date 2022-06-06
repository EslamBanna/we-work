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

    public function getMainCategoryById($id)
    {
        try {
            $category = ProjectCategory::find($id);
            if (!$category) {
                return $this->returnError(202, 'Category not found');
            }
            return $this->returnData('data', $category);
        } catch (\Exception $e) {
            return $this->returnError('400', $e->getMessage());
        }
    }

    public function updateMainCategory($id, Request $request)
    {
        try {
            $validate = Validator::make($request->all(), [
                'category_name_en' => 'required|string|max:255',
                'category_name_ar' => 'required|string|max:255'
            ]);
            if($validate->fails()){
                return $this->returnError(202, $validate->errors()->first());
            }
            $category = ProjectCategory::find($id);
            if (!$category) {
                return $this->returnError(202, 'Category not found');
            }
            $category->update([
                'category_name_en' => $request->category_name_en ?? $category->category_name_en,
                'category_name_ar' => $request->category_name_ar ?? $category->category_name_ar
            ]);
            return $this->returnSuccessMessage('success');
        } catch (\Exception $e) {
            return $this->returnError('400', $e->getMessage());
        }
    }

    public function deleteMainCategory($id)
    {
        try {
            $category = ProjectCategory::find($id);
            if (!$category) {
                return $this->returnError(202, 'Category not found');
            }
            $category->delete();
            return $this->returnSuccessMessage('success');
        } catch (\Exception $e) {
            return $this->returnError('400', $e->getMessage());
        }
    }
}
