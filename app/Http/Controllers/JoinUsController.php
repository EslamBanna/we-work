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
                'job_title' => $request->job_title,
                'resume' => $resume,
                'job_description' => $request->job_description
            ]);
            return $this->returnSuccessMessage('success');
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }
}
