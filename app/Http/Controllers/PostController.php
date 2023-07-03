<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class PostController extends Controller
{
    public function all()
    {
        $user = Auth::user();
        return response()->json([
            'user' => $user,
            'access_token' => $token,
        ], 200);
    }
}
