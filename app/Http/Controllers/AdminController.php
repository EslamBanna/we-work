<?php

namespace App\Http\Controllers;

use App\Models\Admin;
use App\Traits\GeneralTrait;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Hash;
use Illuminate\Support\Facades\Validator;

class AdminController extends Controller
{
    use GeneralTrait;


    public function login(Request $request)
    {
        try {
            $validate = Validator::make($request->all(), [
                'email' => 'required',
                'password' => 'required'
            ]);
            if ($validate->fails()) {
                $code = $this->returnCodeAccordingToInput($validate);
                return $this->returnValidationError($code, $validate);
            }
            $admin = Admin::where('email', $request->email)->first();
            if (!$admin || !Hash::check($request->password, $admin->password)) {
                return $this->returnError(202, 'this user is not authenticated');
            }
            $token = $admin->createToken('my-app-token')->plainTextToken;
            $data = [
                'admin' => $admin,
                'token' => $token
            ];
            return $this->returnData('data', $data);
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }


    public function createAdmin(Request $request)
    {
        try {
            $validate = Validator::make($request->all(), [
                'email' => 'required|unique:admins,email',
                'password' => 'required'
            ]);
            if ($validate->fails()) {
                $code = $this->returnCodeAccordingToInput($validate);
                return $this->returnValidationError($code, $validate);
            }
            Admin::create([
                'name' => $request->name,
                'email' => $request->email,
                'password' => Hash::make($request->password),
            ]);
            return $this->returnSuccessMessage('success');
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function updateAdmin($adminId, Request $request)
    {
        try {
            $admin = Admin::find($adminId);
            if (!$admin) {
                return $this->returnError(202, 'admin not founded');
            }
            $check_admins = Admin::where('email', $request->email)
                ->where('id', '!=', Auth()->user()->id)
                ->count();
            if ($check_admins > 0) {
                return $this->returnError(203, 'this email is taken before');
            }
            $admin->update([
                'name' => $request->name ?? $admin->name,
                'email' => $request->email ?? $admin->email,
            ]);
            return $this->returnSuccessMessage('updated successfully');
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function deleteAdmin($adminId)
    {
        try {
            $admin = Admin::find($adminId);
            if (!$admin) {
                return $this->returnError(202, 'admin not founded');
            }
            $admin->delete();
            return $this->returnSuccessMessage('deleted successfully');
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }
}
