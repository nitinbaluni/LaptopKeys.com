<?php
namespace App\Http\Controllers\api;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Http\Controllers\Controller;
use Illuminate\Support\Facades\Auth;
use App\Product;

class ProductController extends Controller{   
    public function add_product( Request $request ){
        $validator = Validator::make( $request->all(), [
            'title'         => 'required|unique:products',
            'description'   => 'required',
            'price'         => 'required|integer',
            'thumb'         => 'required|image|mimes:jpeg,jpg,png|max:1000'
        ]);

        if( $validator->fails() ){
            return response()->json(['success' => false, 'error'=>$validator->messages()->first()]);
        }
        $thumb     = $request->file('thumb')->store('public/uploads');
    	$created   = Product::create([
            'author' 		=> Auth::user()->id,
            'title' 		=> $request['title'],
            'description' 	=> $request['description'],
            'price' 		=> $request['price'],
            'thumbnail'     => $thumb
        ]);
        return response()->json(['success' => true, 'created'=>$created]);
    }
}
