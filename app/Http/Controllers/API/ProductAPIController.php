<?php

namespace App\Http\Controllers\API;

use App\Product;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;

class ProductAPIController extends Controller
{    
    // get api product 
    public function getData(){
        $data = Product::all();    
        return response()->json($data);
    }
}
