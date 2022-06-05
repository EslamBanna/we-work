<?php

namespace App\Http\Controllers;

use App\Models\Slider;
use App\Traits\GeneralTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;

class SliderController extends Controller
{
    use GeneralTrait;

    public function dummySliders()
    {
        try {
            $data = [
                [
                    'title_en' => 'title1',
                    'title_ar' => 'عنوان1',
                    'description_en' => 'description1',
                    'description_ar' => 'وصف1',
                    'image_en' => 'https://www.image-en.com1',
                    'image_ar' => 'https://www.image-ar.com1'
                ],
                [
                    'title_en' => 'title2',
                    'title_ar' => 'عنوان2',
                    'description_en' => 'description2',
                    'description_ar' => 'وصف2',
                    'image_en' => 'https://www.image-en.com2',
                    'image_ar' => 'https://www.image-ar.com2'
                ],
                [
                    'title_en' => 'title3',
                    'title_ar' => 'عنوان3',
                    'description_en' => 'description3',
                    'description_ar' => 'وصف3',
                    'image_en' => 'https://www.image-en.com3',
                    'image_ar' => 'https://www.image-ar.com3'
                ]
            ];
            Slider::insert($data);
            return $this->returnSuccessMessage('success');
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }
    public function getSliders()
    {
        try {
            $sliders = Slider::get();
            return $this->returnData('data', $sliders);
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function updateSlider($slider_id, Request $request)
    {
        try {
            $validate = Validator::make($request->all(), [
                'title_en' => 'required|string',
                'title_ar' => 'required',
                'description_en' => 'required',
                'description_ar' => 'required'
            ]);
            if ($validate->fails()) {
                return $this->returnError(201, $validate->errors()->first());
            }
            $slider = Slider::find($slider_id);
            if (!$slider) {
                return $this->returnError(201, 'slider not found');
            }
            $image_en = "";
            $image_ar = "";
            if ($request->hasFile('image_en')) {
                $image_en = $this->saveImage($request->image_en, 'sliders');
            } else {
                $link_len = strlen((isset($_SERVER['HTTPS']) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . '/images/sliders/');
                $image_en = substr($slider->image_en, $link_len);
            }
            if ($request->hasFile('image_ar')) {
                $image_ar = $this->saveImage($request->image_ar, 'sliders');
            } else {
                $link_len = strlen((isset($_SERVER['HTTPS']) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . '/images/sliders/');
                $image_ar = substr($slider->image_ar, $link_len);
            }
            $slider->update([
                'title_en' => $request->title_en ?? $slider->title_en,
                'title_ar' => $request->title_ar ?? $slider->title_ar,
                'description_en' => $request->description_en ?? $slider->description_en,
                'description_ar' => $request->description_ar ?? $slider->description_ar,
                'image_en' => $image_en,
                'image_ar' => $image_ar
            ]);
            return $this->returnSuccessMessage('success');
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }
}
