<?php

namespace App\Http\Controllers;

use App\Models\ProjectCategory;
use App\Models\ProjectSubCategory;
use App\Traits\GeneralTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class ProjectSubCategoryController extends Controller
{
    use GeneralTrait;
    public function createSubCategory(Request $request)
    {
        try {
            $validate = Validator::make($request->all(), [
                'category_id' => 'required',
                'sub_category_name_en' => 'required|string',
                'sub_category_name_ar' => 'required|string',
                'title1_ar' => 'required|string',
                'title1_en' => 'required|string',
                'title2_ar' => 'required|string',
                'title2_en' => 'required|string',
                'description1_ar' => 'required|string',
                'description2_en' => 'required|string',
                'main_photo' => 'required',
                'photo1' => 'required',
                'photo2' => 'required',
                'photo3' => 'required',
                'photo4' => 'required',
            ]);
            if ($validate->fails()) {
                return $this->returnError('202', $validate->errors()->first());
            }
            $main_photo = "";
            $photo1 = "";
            $photo2 = "";
            $photo3 = "";
            $photo4 = "";
            $photo5 = "";
            if ($request->hasFile('main_photo')) {
                $main_photo = $this->saveImage($request->file('main_photo'), 'project_sub_category');
            }
            if ($request->hasFile('photo1')) {
                $photo1 = $this->saveImage($request->file('photo1'), 'project_sub_category');
            }
            if ($request->hasFile('photo2')) {
                $photo2 = $this->saveImage($request->file('photo2'), 'project_sub_category');
            }
            if ($request->hasFile('photo3')) {
                $photo3 = $this->saveImage($request->file('photo3'), 'project_sub_category');
            }
            if ($request->hasFile('photo4')) {
                $photo4 = $this->saveImage($request->file('photo4'), 'project_sub_category');
            }
            if ($request->hasFile('photo5')) {
                $photo5 = $this->saveImage($request->file('photo5'), 'project_sub_category');
            }
            ProjectSubCategory::create([
                'category_id' => $request->category_id,
                'sub_category_name_en' => $request->sub_category_name_en,
                'sub_category_name_ar' => $request->sub_category_name_ar,
                'main_photo' => $main_photo,
                'title1_ar' => $request->title1_ar,
                'title1_en' => $request->title1_en,
                'title2_ar' => $request->title2_ar,
                'title2_en' => $request->title2_en,
                'description1_ar' => $request->description1_ar,
                'description2_en' => $request->description2_en,
                'photo1' => $photo1,
                'photo2' => $photo2,
                'photo3' => $photo3,
                'photo4' => $photo4,
                'photo5' => $photo5
            ]);
            return $this->returnSuccessMessage('success');
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function getAllSubCategories()
    {
        try {
            $categories = ProjectSubCategory::get();
            return $this->returnData('data', $categories);
        } catch (\Exception $e) {
            return $this->returnError('201', $e->getMessage());
        }
    }

    public function getSubCategories($main_category_id)
    {
        try {
            $check_main_category = ProjectCategory::find($main_category_id);
            if (!$check_main_category) {
                return $this->returnError('202', 'Main category not found');
            }
            $categories = ProjectSubCategory::where('category_id', $main_category_id)->get();
            return $this->returnData('data', $categories);
        } catch (\Exception $e) {
            return $this->returnError('201', $e->getMessage());
        }
    }

    public function getSubCategoryById($id)
    {
        try {
            $sub_category = ProjectSubCategory::find($id);
            if (!$sub_category) {
                return $this->returnError(202, 'Sub category not found');
            }
            return $this->returnData('data', $sub_category);
        } catch (\Exception $e) {
            return $this->returnError('400', $e->getMessage());
        }
    }

    public function updateSubCategory($id, Request $request)
    {
        try {
            $sub_category = ProjectSubCategory::find($id);
            if (!$sub_category) {
                return $this->returnError('202', 'Sub category not found');
            }
            $validate = Validator::make($request->all(), [
                'sub_category_name_en' => 'required|string',
                'sub_category_name_ar' => 'required|string',
                'title1_ar' => 'required|string',
                'title1_en' => 'required|string',
                'title2_ar' => 'required|string',
                'title2_en' => 'required|string',
                'description1_ar' => 'required|string',
                'description2_en' => 'required|string',
                'main_photo' => 'required',
                'photo1' => 'required',
                'photo2' => 'required',
                'photo3' => 'required',
                'photo4' => 'required',
            ]);
            if ($validate->fails()) {
                return $this->returnError('202', $validate->errors()->first());
            }
            $link_len = strlen((isset($_SERVER['HTTPS']) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . '/images/project_sub_category/');
            $main_photo = substr($sub_category->main_photo, $link_len);
            $photo1 = substr($sub_category->photo1, $link_len);
            $photo2 = substr($sub_category->photo2, $link_len);
            $photo3 = substr($sub_category->photo3, $link_len);
            $photo4 = substr($sub_category->photo4, $link_len);
            $photo5 = substr($sub_category->photo5, $link_len);
            if ($request->hasFile('main_photo')) {
                if ($main_photo != "") {
                    unlink('images/project_sub_category/' . $main_photo);
                }
                $main_photo = $this->saveImage($request->file('main_photo'), 'project_sub_category');
            }
            if ($request->hasFile('photo1')) {
                if ($photo1 != "") {
                    unlink('images/project_sub_category/' . $photo1);
                }
                $photo1 = $this->saveImage($request->file('photo1'), 'project_sub_category');
            }
            if ($request->hasFile('photo2')) {
                if ($photo2 != "") {
                    unlink('images/project_sub_category/' . $photo2);
                }
                $photo2 = $this->saveImage($request->file('photo2'), 'project_sub_category');
            }
            if ($request->hasFile('photo3')) {
                if ($photo3 != "") {
                    unlink('images/project_sub_category/' . $photo3);
                }
                $photo3 = $this->saveImage($request->file('photo3'), 'project_sub_category');
            }
            if ($request->hasFile('photo4')) {
                if ($photo4 != "") {
                    unlink('images/project_sub_category/' . $photo4);
                }
                $photo4 = $this->saveImage($request->file('photo4'), 'project_sub_category');
            }
            if ($request->hasFile('photo5')) {
                if ($photo5 != "") {
                    unlink('images/project_sub_category/' . $photo5);
                }
                $photo5 = $this->saveImage($request->file('photo5'), 'project_sub_category');
            }
            $sub_category->update([
                'sub_category_name_en' => $request->sub_category_name_en ?? $request->sub_category_name_en,
                'sub_category_name_ar' => $request->sub_category_name_ar ?? $request->sub_category_name_ar,
                'main_photo' => $main_photo,
                'title1_ar' => $request->title1_ar ?? $request->title1_ar,
                'title1_en' => $request->title1_en ?? $request->title1_en,
                'title2_ar' => $request->title2_ar ?? $request->title2_ar,
                'title2_en' => $request->title2_en ?? $request->title2_en,
                'description1_ar' => $request->description1_ar ?? $request->description1_ar,
                'description2_en' => $request->description2_en ?? $request->description2_en,
                'photo1' => $photo1,
                'photo2' => $photo2,
                'photo3' => $photo3,
                'photo4' => $photo4,
                'photo5' => $photo5
            ]);
            return $this->returnSuccessMessage('success');
        } catch (\Exception $e) {
            return $this->returnError('400', $e->getMessage());
        }
    }

    public function deleteSubCategory($id)
    {
        try {
            $category = ProjectSubCategory::find($id);
            if (!$category) {
                return $this->returnError(202, 'Sub category not found');
            }
            $category->delete();
            return $this->returnSuccessMessage('success');
        } catch (\Exception $e) {
            return $this->returnError('400', $e->getMessage());
        }
    }
}
