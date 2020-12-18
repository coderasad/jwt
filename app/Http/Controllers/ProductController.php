<?php

namespace App\Http\Controllers;

use App\Product;
use Illuminate\Http\Request;

class ProductController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $data['product'] = Product::orderBy('id', 'DESC')->get();
        $data['count'] = 1;
        return view('admin.pages.product.index')->with($data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('admin.pages.product.create'); 
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $validatedData = $request->validate([
            'title' => 'required|min:3',
            'price' => 'required',
            'description' => 'required|min:3',
        ]);
        $image = $request->file('image');
        $image_name = 'product_'.rand(100,999).'.'.strtolower($image->getClientOriginalExtension());
        $upload_path = "public/backend/images/product/";
        $image->move($upload_path,$image_name);

        $product = new Product();
        $product->title = $request->title;
        $product->description = $request->description;
        $product->price = $request->price;
        $product->image = $image_name;
        $product->save();
        toast('Product Inserted Done','toast_success')->position('top-end')->width('auto')->padding('5px')->persistent(false)->autoClose(3000)->background('#28a745')->animation('tada faster','fadeInUp faster')->timerProgressBar();
        return redirect()->to('product'); 
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function show(Product $product)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $db = Product::findorfail($id);
        return view('admin.pages.product.edit',compact('db'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $image = $request->file('image');
        if($image){
            $image_name = 'product_'.rand(100,999).'.'.strtolower($image->getClientOriginalExtension());
            $upload_path = "public/backend/images/product/";
            $image->move($upload_path,$image_name);
            unlink($request->old_img);            
            $product = Product::findorfail($id);
            $product->title = $request->title;
            $product->description = $request->description;
            $product->price = $request->price;
            $product->image = $image_name;
            $product->save();
            toast('Product Updated Done','toast_success')->position('top-end')->width('auto')->padding('5px')->persistent(false)->autoClose(3000)->background('#28a745')->animation('tada faster','fadeInUp faster')->timerProgressBar();
            return redirect()->to('product'); 
        }
        else{
            $product = Product::findorfail($id);
            $product->title = $request->title;
            $product->description = $request->description;
            $product->price = $request->price;
            $product->save();
            toast('Product Updated Done','toast_success')->position('top-end')->width('auto')->padding('5px')->persistent(false)->autoClose(3000)->background('#28a745')->animation('tada faster','fadeInUp faster')->timerProgressBar();
            return redirect()->to('product'); 
        }
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Product  $product
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $db = Product::findorfail($id);        
        $image = $db->image;
        $db->delete();
        unlink("public/backend/images/product/$image");
        return redirect()->back()->with('toast_success', 'Deleted Successfully');
    }
}
