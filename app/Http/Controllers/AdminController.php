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
            $photo = "";
            if ($request->has('photo')) {
                $photo = $this->saveImage($request->photo, 'admins');
            }
            Admin::create([
                'name' => $request->name,
                'email' => $request->email,
                'password' => Hash::make($request->password),
                'photo' => $photo
            ]);
            return $this->returnSuccessMessage('success');
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }
}
