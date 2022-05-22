<?php

namespace App\Http\Controllers;

use App\Models\Contact;
use App\Models\ContactInfo;
use App\Traits\GeneralTrait;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    use GeneralTrait;

    public function contactInfo()
    {
        try {
            $contact_info = ContactInfo::get();
            return $this->returnData('data', $contact_info);
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function contactUs(Request $request)
    {
        try {
            $rules = [
                'name' => 'required|string',
                'email' => 'required|email',
                'phone' => 'required|string',
                'identity_number' => 'required|string',
                'type_of_contact' => 'required|string',
                'title' => 'required|string',
                'msg' => 'required|string'
            ];
            $validate = validator($request->all(), $rules);
            if($validate->fails()){
                $code = $this->returnCodeAccordingToInput($validate);
                return $this->returnValidationError($code, $validate);
            }
            Contact::create($request->all());
            return $this->returnSuccessMessage('success');
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }
}
