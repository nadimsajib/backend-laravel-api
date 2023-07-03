<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\Models\User;

class AuthController extends Controller
{
    /**
     * User registration
     */
    public function register(Request $request)
    {
        // Validate the input data
        $request->validate([
            'name' => 'required|string',
            'email' => 'required|email|unique:users',
            'password' => 'required|min:6',
        ]);

        // Create a new user
        $user = User::create([
            'name' => $request->name,
            'email' => $request->email,
            'password' => bcrypt($request->password),
        ]);

        // Generate a new access token
        $token = $user->createToken('API Token')->accessToken;

        // Return the user and token data
        return response()->json([
            'user' => $user,
            'access_token' => $token,
            'message'=> "Successfully Register"
        ], 201);
    }

    /**
     * User login
     */
    public function login(Request $request)
    {
        // Validate the input data
        $request->validate([
            'email' => 'required|email',
            'password' => 'required',
        ]);

        // Check if the credentials are valid
        if (Auth::attempt(['email' => $request->email, 'password' => $request->password])) {
            // Retrieve the authenticated user
            $user = Auth::user();
            
            // Generate a new access token
            $token = $user->createToken('API Token')->accessToken;
            
            // Return the user and token data
            return response()->json([
                'user' => $user,
                'access_token' => $token,
            ], 200);
        } else {
            // Invalid credentials
            return response()->json([
                'error' => 'Unauthorized',
                'message'=> "Invalid email or password"
        ], 401);
        }
    }

    /**
     * User logout
     */
    public function logout(Request $request)
    {
        // Revoke the current user's access token
        $request->user()->token()->revoke();
        
        // Send a success response
        return response()->json(['message' => 'Logged out successfully'], 200);
    }
}
