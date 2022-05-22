<?php

namespace App\Http\Controllers;

use App\Models\JoinUs;
use App\Traits\GeneralTrait;
use Illuminate\Http\Request;

class JoinUsController extends Controller
{
    use GeneralTrait;
    public function joinUs(Request $request)
    {
        try {
            $resume = "";
            if ($request->hasFile('resume')) {
                $resume = $this->saveImage($request->resume, 'resumes');
            }
            JoinUs::create([
                'name' => $request->name,
                'email' => $request->email,
                'phone' => $request->phone,
                'job_title' => $request->job_title,
                'resume' => $resume,
                'job_description' => $request->job_description
            ]);
            return $this->returnSuccessMessage('success');
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function getAllJoinUs()
    {
        try {
            $join_us = JoinUs::get();
            return $this->returnData('data', $join_us);
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function deleteJoinUs($id)
    {
        try {
            $join_us = JoinUs::find($id);
            if (!$join_us) {
                return $this->returnError(202, 'invalid id');
            }
            $join_us->delete();
            $before_file_name_length = strlen((isset($_SERVER['HTTPS']) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . '/images/resumes/');
            $file_name = substr($join_us->resume, $before_file_name_length);
            unlink('images/resumes/' . $file_name);
            return $this->returnSuccessMessage('success');
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }
}
