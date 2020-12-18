@extends('admin.admin_layouts')
@section('admin_content')
    <div class="container-fluid">       
        <div class="row">   
            <div class="col-md-12 mb-2 mt-3">
                <h4 class="text-center radius bg-primary text-white p-2 text-uppercase">Product Page</h4>
            </div>         
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body"> 
                        <div class="table-responsive text-center">
                            <table class="table" id="generalData">
                                <thead>
                                    <tr>
                                        <th>SN</th>
                                        <th>Title</th>
                                        <th>Description</th>
                                        <th>Price</th>
                                        <th>Image</th>
                                        <th>Action</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @if ($count < 1 )
                                        <tr>
                                            <th colspan="6" class="text-danger">No data records found</th>
                                        </tr>
                                    @else
                                    <?php $sl = 0;?>
                                    @foreach ($product as $data)
                                        <?php $sl++;?>
                                        <tr>
                                            <td>{{ $sl }}</td>  
                                            <td>{{$data->title}}</td>                               
                                            <td>{{$data->description}}</td>     
                                            <td>{{$data->price}}</td>         
                                            <td><img width="80px" src="public/backend/images/product/{{ $data->image }}" alt=""></td>
                                            <td style="white-space: nowrap; width: 15%;">
                                                <div class="tabledit-toolbar btn-toolbar" style="text-align: left;">
                                                    <div class="d-flex btn-group-sm" style="float: none;">
                                                        <a data-toggle="tooltip" data-original-title="View" href="{{url('product/'.$data->id)}}" class="btn btn-sm btn-success" style="float: none; margin: 5px;"><span class="ti-eye  text-light"></span></a>

                                                        <a data-toggle="tooltip" data-original-title="Edit" href="{{url('product/'.$data->id.'/edit')}}" class="btn btn-sm btn-warning" style="float: none; margin: 5px;"><span class="ti-pencil text-light"></span></a>

                                                        <a data-toggle="modal" data-target="#deleteModal" href="{{url('product/'.$data->id.'/destroy')}}" class="btn btn-sm btn-danger deleteModal" style="float: none; margin: 5px;"><span class="ti-trash text-light"></span></a>
                                                    </div>                       
                                                </div>
                                            </td>
                                        </tr>  
                                    @endforeach    
                                    @endif  

                                </tbody>
                            </table>                           
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- end row -->
    </div><!-- container -->
@endsection
