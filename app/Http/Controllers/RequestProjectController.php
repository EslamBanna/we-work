<?php

namespace App\Http\Controllers;

use App\Models\RequestProject;
use App\Traits\GeneralTrait;
use Illuminate\Http\Request;

class RequestProjectController extends Controller
{
    use GeneralTrait;
    public function insertRequestProject(Request $request)
    {
        try {
            RequestProject::create([
                'name' => $request->name,
                'email' => $request->email,
                'phone' => $request->phone,
                'company_name' => $request->company_name,
                'company_email' => $request->company_email,
                'project_description' => $request->project_description
            ]);
            return $this->returnSuccessMessage('success');
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function getAllRequestProjects()
    {
        try {
            $request_projects = RequestProject::select(
                'id',
                'name',
                'email',
                'phone',
                'company_name',
                'company_email'
            )->get();
            return $this->returnData('data', $request_projects);
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function getRequestProject($requestProjectId)
    {
        try {
            $request_project = RequestProject::find($requestProjectId);
            if (!$request_project) {
                return $this->returnError(202, 'request project not founded');
            }
            return $this->returnData('data', $request_project);
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function deleteRequestProject($requestProjectId)
    {
        try {
            $request_project = RequestProject::find($requestProjectId);
            if (!$request_project) {
                return $this->returnError(202, 'request project not founded');
            }
            $request_project->delete();
            return $this->returnSuccessMessage('success');
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }
}
