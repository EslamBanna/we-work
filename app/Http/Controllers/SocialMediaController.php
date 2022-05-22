<?php

namespace App\Http\Controllers;

use App\Models\SocialMedia;
use App\Traits\GeneralTrait;
use Illuminate\Http\Request;

class SocialMediaController extends Controller
{
    use GeneralTrait;
    public function dummySocial()
    {
        try {
            SocialMedia::create([
                'instgram' => 'instgram.com',
                'twitter' => 'twitter.com',
                'youtube' => 'youtube.com',
                'facebook' => 'facebook.com',
                'snapchat' => 'snapchat.com',
                'linkedin' => 'linkedin.com'
            ]);
            return $this->returnSuccessMessage('success');
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function getSocialInfo()
    {
        try {
            $socail = SocialMedia::find(1);
            return $this->returnData('data', $socail);
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }
}
