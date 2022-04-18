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
            $teams = Team::select('name', 'photo', 'job_title', 'job_description')->get();
            return $this->returnData('data', $teams);
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }
}
