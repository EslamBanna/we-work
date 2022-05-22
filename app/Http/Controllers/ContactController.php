<?php

namespace App\Http\Controllers;

use App\Traits\GeneralTrait;
use Illuminate\Http\Request;

class ContactController extends Controller
{
    use GeneralTrait;
    public function contactUs(Request $request){
        try{

        }catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }
}
