<?php

namespace App\Http\Controllers;

use App\Models\Client;
use App\Traits\GeneralTrait;
use Illuminate\Http\Request;

class ClientController extends Controller
{
    use GeneralTrait;
    public function insertClient(Request $request)
    {
        try {
            if (!$request->hasFile('photo')) {
                return $this->returnError(202, 'photo filed is required');
            }
            $photo = $this->saveImage($request->photo, 'clients');
            Client::create([
                'photo' => $photo
            ]);
            return $this->returnSuccessMessage('success');
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function getClients()
    {
        try {
            $clients = Client::select('id', 'photo')->get();
            return $this->returnData('data', $clients);
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }
}
