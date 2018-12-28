<?php
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Storage;
use Illuminate\Support\Facades\Auth;
use App\Product;

class DashboardController extends Controller
{	
	public function __construct()
    {
        $this->middleware('auth');
    }

    public function index(){
    	return view('dashboard', ['user_id' => Auth::user()->id] );
    }

    public function add_product( Request $request ){
    	$this->validateInput( $request );
        $thumb      = $request->file('thumb')->store('public/uploads');
        $created    = Product::create([
            'author' 		=> Auth::user()->id,
            'title' 		=> $request['title'],
            'description' 	=> $request['description'],
            'price' 		=> $request['price'],
            'thumbnail'     => $thumb
        ]);
    	//return Redirect::back()->withInput( Input::all() );
        return redirect()->intended('dashboard');
    }

    public function delete_product( $id, Request $request ){
    	if( $request->ajax() ){
            $Product = new Product;
		    $Product = Product::find($id);
            if( $Product ){
                $Product->delete($id);
                return response()->json([
                    'success'   => true,
                    'message'   => 'Record has been deleted successfully!'
                ]);
            }else{
                return response()->json([
                    'success'   => false,
                    'message'   => 'Record does not exist..'
                ]);
            }
		    
            
    	}	
    }

    public function product_update( Request $request,$id ){
        $product = Product::findOrFail($id);
        $vlRules            = array(
            'title'         => 'required|unique:products,title,'.$id,
            'description'   => 'required',
            'price'         => 'required|integer'
        );

        if( empty( $product['thumbnail'] ) && empty($request->file('thumb')) ){
            $vlRules['thumb'] = 'required|image|mimes:jpeg,jpg,png|max:1000';
        }else{
            $vlRules['thumb'] = 'image|mimes:jpeg,jpg,png|max:1000';
        }

        $request->validate( $vlRules );
        
        if ($request->file('thumb')) {
            $thumb  = $request->file('thumb')->store('public/uploads');
        }else{
            $thumb  = $product['thumbnail'];
        }

        
        Product::where( 'id', $id )->update(
            [
                'title'         => $request['title'],
                'description'   => $request['description'],
                'price'         => $request['price'],
                'thumbnail'     => $thumb
            ]
            );
        return redirect()->back()->with('message', 'Product updated successfully!!');
        //return redirect()->intended('dashboard/products');
    } 

    public function edit_product( $id ){
        $product = Product::where( [['id', '=', $id], ['author', '=', Auth::user()->id ]] )->first();
        if( $product ){
            return view( 'product.editproduct', ['product' => $product] );    
        }else{
            return "You are not authenticate to edit this product";
        }
        
    }

    public function single_product( $id ){
        $product = Product::where( 'id', $id )->first();
        return view( 'product.product', ['product' => $product] );
    }

    public function product_list(){        
    	$products  = Product::where( 'author', Auth::user()->id )->paginate(5);
    	return view( 'product.products', ['products' => $products] );
    }

    public function search( Request $request ){
        $pro       = isset( $request['pro'] ) ? $request['pro'] : '';
        //$products = Product::where( 'title', Auth::user()->id )->paginate(5);
        $products = Product::where([
                    ['title', 'like','%'.$pro.'%' ],
                    ['author', '=', Auth::user()->id ]
                ])->paginate(5);
        $products->appends(['pro' => $pro]);
        return view( 'product.products', ['products' => $products, 'pro' => $pro ] );
    }

    private function validateInput($request) {
        $this->validate($request, [
            'title' 		=> 'sometimes|required|unique:products',
            'description' 	=> 'required',
            'price' 		=> 'required|integer',
            'thumb'         => 'required|image|mimes:jpeg,jpg,png|max:1000'
        ]);
    }
}
/*

*/