<?php

namespace App\Http\Controllers;

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
            if($validate->fails()){
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
            if($request->hasFile('photo1')){
                $photo1 = $this->saveImage($request->file('photo1'), 'project_sub_category');
            }
            if($request->hasFile('photo2')){
                $photo2 = $this->saveImage($request->file('photo2'), 'project_sub_category');
            }
            if($request->hasFile('photo3')){
                $photo3 = $this->saveImage($request->file('photo3'), 'project_sub_category');
            }
            if($request->hasFile('photo4')){
                $photo4 = $this->saveImage($request->file('photo4'), 'project_sub_category');
            }
            if($request->hasFile('photo5')){
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
}
