<?php

namespace App\Http\Controllers;

use App\Models\Team;
use App\Traits\GeneralTrait;
use Illuminate\Http\Request;

class TeamController extends Controller
{
    use GeneralTrait;
    public function insertTeamMember(Request $request)
    {
        try {
            if (!$request->has('name')) {
                return $this->returnError(202, 'name filed is required');
            }
            $photo = "";
            if ($request->hasFile('photo')) {
                $photo = $this->saveImage($request->photo, 'teams');
            }
            Team::create([
                'name_ar' => $request->name_ar,
                'name_en' => $request->name_en,
                'photo' => $photo,
                'job_title_ar' => $request->job_title_ar,
                'job_title_en' => $request->job_title_en,
                'job_description_ar' => $request->job_description_ar,
                'job_description_en' => $request->job_description_en
            ]);
            return $this->returnSuccessMessage('success');
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function getTeams()
    {
        try {
            $teams = Team::select('id', 'name', 'photo', 'job_title', 'job_description')->get();
            return $this->returnData('data', $teams);
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function updateTeamMember($memberId, Request $request)
    {
        try {
            $member = Team::find($memberId);
            if (!$member) {
                return $this->returnError(202, 'member not found');
            }
            $photo = "";
            if ($request->hasFile('photo')) {
                $photo = $this->saveImage($request->photo, 'teams');
            } else {
                $photo_len = strlen((isset($_SERVER['HTTPS']) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . '/images/teams/');
                $photo = substr($member->photo, $photo_len);
            }
            $member->update([
                'name_ar' => $request->name_ar ?? $member->name_ar,
                'name_en' => $request->name_en ?? $member->name_en,
                'photo' => $photo,
                'job_title_ar' => $request->job_title_ar ?? $member->job_title_ar,
                'job_title_en' => $request->job_title_en ?? $member->job_title_en,
                'job_description_ar' => $request->job_description_ar ?? $member->job_description_ar,
                'job_description_en' => $request->job_description_en ?? $member->job_description_en
            ]);
            return $this->returnSuccessMessage('success');
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function deleteTeamMember($memberId)
    {
        try {
            $member = Team::find($memberId);
            if (!$member) {
                return $this->returnError(202, 'member not found');
            }
            $member->delete();
            return $this->returnSuccessMessage('success');
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }
}
