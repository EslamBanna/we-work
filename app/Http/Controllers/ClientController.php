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

    public function updateClient($clientId, Request $request)
    {
        try {
            $client = Client::find($clientId);
            if (!$client) {
                return $this->returnError(202, 'client not founded');
            }
            $photo = $client['photo'];
            if ($request->hasFile('photo')) {
                $photo = $this->saveImage($request->photo, 'clients');
            }
            $client->update([
                'photo' => $photo
            ]);
            return  $this->returnSuccessMessage('success');
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function deleteClient($clientId)
    {
        try {
            $client = Client::find($clientId);
            if (!$client) {
                return $this->returnError(202, 'client not founded');
            }
            $client->delete();

            $link_len = strlen((isset($_SERVER['HTTPS']) ? 'https' : 'http') . '://' . $_SERVER['HTTP_HOST'] . '/images/clients/');
            $attach_name = substr($client->photo, $link_len);
            unlink('images/clients/' . $attach_name);
            return  $this->returnSuccessMessage('success');
        } catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }

    public function clients(){
        try{
            $clients = Client::select('id','photo')->take(6)->get();
            return $this->returnData('data',$clients);
        }catch (\Exception $e) {
            return $this->returnError(201, $e->getMessage());
        }
    }
}
