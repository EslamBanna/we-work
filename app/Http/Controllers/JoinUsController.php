<?php

namespace App\Http\Controllers;

use App\Models\JoinUs;
use App\Traits\GeneralTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\File;
use Illuminate\Support\Facades\Response;

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
                'job_description' => $request->job_description,
                'address' => $request->address
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

    public function getJoinUs($id)
    {
        try {
            $join_us = JoinUs::find($id);
            if (!$join_us) {
                return $this->returnError(202, 'invalid id');
            }
            return $this->returnData('data', $join_us);
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function downloadResume($id)
    {
        try {
            $join_us = JoinUs::find($id);
            if (!$join_us) {
                return $this->returnError(202, 'invalid id');
            }
            $link_len = strlen((isset($_SERVER['HTTPS']) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . '/images/resumes/');
            $slice_link = substr($join_us->resume, $link_len);
            return Response::download(public_path('images/resumes/' . $slice_link));
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
            // unlink('images/resumes/' . $file_name);
            return $this->returnSuccessMessage('success');
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }
}
