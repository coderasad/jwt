@extends('admin.admin_layouts')
@section('admin_content')
    <div class="container-fluid">       
        <div class="row">
            <div class="col-12 mb-2 mt-3">
                <h4 class="text-center radius bg-primary text-white p-2 text-uppercase">Add Product</h4>
            </div>  
            @if ($errors->any())
                <div class="alert alert-danger">
                    <ul>
                        @foreach ($errors->all() as $error)
                            <li>{{ $error }}</li>
                        @endforeach
                    </ul>
                </div>
            @endif
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <form action="{{URL::to('product')}}" method="post" enctype="multipart/form-data">
                            @csrf
                            <div class="row">
                                <div class="form-group col-6">
                                    <label for="title">Title</label>
                                    <input class="form-control  placement"  maxlength="90" id="title" name="title" type="text" placeholder="Product Title" >
                                </div>
                                <div class="form-group col-6">
                                    <label for="description">Description</label>
                                    <textarea  class="form-control  placement"  maxlength="90" id="description" name="description" placeholder="Product Description" ></textarea>
                                </div>
                                <div class="form-group col-6">
                                    <label for="title">Price</label>
                                    <input class="form-control  placement" id="price" name="price" type="number" min="0" placeholder="Product Price" >
                                </div>
                                <div class="form-group col-6">
                                    <label for="sub_title">Image</label>
                                    <div class="custom-file ">                                
                                        <label class="custom-file-label" for="customFile">Choose Image</label>
                                        <input type="file" class="custom-file-input" name="image"  id="imgInp">
                                        <div class="text-danger ">Image must be width: <b>750px</b> and height: <b>500px</b></div>
                                    </div>
                                    <div class=" offset-2 mt-4">
                                        <img class="mb-3" src="" id="img_show" width="80"/>
                                    </div>
                                </div>                            
                                <div class="form-group col-6">
                                    <label for="sub_title"></label>
                                    <button type="submit" class="btn btn-danger waves-effect waves-light">Submit </button>
                                </div>
                            </div>
                        </form>                           
                    </div>
                </div>
            </div> 
        </div><!-- end row -->
    </div><!-- container -->
@endsection