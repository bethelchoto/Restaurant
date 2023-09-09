<?php

namespace App\Http\Controllers\Api\V1;

use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Hash;


class AuthController extends Controller
{
    public function register(Request $request){
        $fields = $request->validate([
            'name'=>'required|string',
            'email'=>'required|string|unique:users,email',
            'password'=>'required|string|confirmed'
        ]);
        $user=User::create([
            'name' =>$fields['name'],
            'email'=>$fields['email'],
            'password'=>bcrypt($fields['password']),
            // 'token'=>$fields['remember_token']
        ]);
        
        $token = $user->createToken('myapptoken')->plainTextToken;

        $response=[
            'user'=>$user,
            'token'=>$token
        ];
        return response($response, 201);
    }

    public function logout(Request $request){
        auth()->user()->tokens()->delete();

        return[
            'message'=>'Session Closed'
        ];
    }

    public function login(Request $request){
        $fields = $request->validate([
            'email'=>'required|string',
            'password'=>'required|string'
        ]);

        // check email
        $user = User::where('email', $fields['email'])->first();

        // check password
        if(!$user||!Hash::check($fields['password'],$user->password)){
            return response([
                'message'=>'Bad credentials'
            ], 401);
        }

        $token = $user->createToken('myapptoken')->plainTextToken;

        $response=[
            'user'=>$user,
            'token'=>$token
        ];
        return response($response, 201);
    }  

    public function get_current_user(Request $request)
        {
            if (!$request->user()) {
                return response()->json([
                    'message' => 'Unauthenticated',
                ], 401);
            }

            $user = $request->user();
            
            // add isProfileUpdated....
            $isProfileUpdated = false;
            if ($user->isPicUpdated == 1 && $user->isEmailUpdated) {
                $isProfileUpdated = true;
            }
            $user->isProfileUpdated = $isProfileUpdated;

            return $user;
        }

        public function update(Request $request)
        {
            // Validate the incoming request data
            $user = $request->user();

            $validatedData = $request->validate([
                'name' => 'string',
                'email' => 'string|unique:users,email,' . $user->id, // Allow the email to remain the same if it's the user's own email
                'password' => 'string|confirmed', // You can update the password if needed
            ]);

            // Update the user's information
            if (isset($validatedData['name'])) {
                $user->name = $validatedData['name'];
            }

            if (isset($validatedData['email'])) {
                $user->email = $validatedData['email'];
            }

            if (isset($validatedData['password'])) {
                $user->password = Hash::make($validatedData['password']);
            }

            $user->save();

            return response()->json([
                'message' => 'User updated successfully',
                'user' => $user
            ], 200);
        }
}
