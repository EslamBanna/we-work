<?php

namespace App\Http\Controllers;

use App\Models\Slider;
use App\Traits\GeneralTrait;
use Illuminate\Http\Request;

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
}
