<?php

namespace App\Http\Controllers;

use App\Village;
use Illuminate\Http\Request;

class ApiController extends Controller
{
    public function getVillage(Request $request)
    {
        if ($request->has('q')) {
            $query = $request->q;
            $data = Village::select('id', 'title')->where('title', 'LIKE', "%{$query}%")
                ->get();
            return response()->json($data);
        }
    }
}
