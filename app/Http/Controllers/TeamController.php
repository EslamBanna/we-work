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
                'name' => $request->name,
                'photo' => $photo,
                'job_title' => $request->job_title,
                'job_description' => $request->job_description
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
                'name' => $request->name ?? $member->name,
                'photo' => $photo,
                'job_title' => $request->job_title ?? $member->job_title,
                'job_description' => $request->job_description ?? $member->job_description
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
