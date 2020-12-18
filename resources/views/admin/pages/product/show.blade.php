@extends('admin.admin_layouts')
@section('admin_content')
    <div class="container-fluid">       
        <div class="row">    
            <div class="col-2 mt-3">
                <a href="{{ URL::to('portfoliopage') }}" class="btn btn-effect-ripple btn-primary waves-effect waves-light"><i class="fas fa-reply mr-2"></i>Back</a>
            </div>
            <div class="col-10 mb-2 mt-3">
                <h4 class="text-center radius bg-primary text-white p-2 text-uppercase">Show Portfolio Page</h4>
            </div>          
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body"> 
                        <div class="table-responsive">
                            <table class="table" id="">
                                <tbody>
                                    <tr>
                                        <th width="20%">Title</th>
                                        <td>{{$db->long_title}}</td>
                                    </tr>
                                    <tr>
                                        <th>Project Name</th>
                                        <td>{{$db->short_title}}</td>
                                    </tr>
                                    <tr>
                                        <th>Category Name</th>
                                        <td>
                                            @foreach ($dbCategory as $data)
                                                @if ($db->category_id == $data->id)
                                                    {{$data->name}}                                               
                                                @endif                                        
                                            @endforeach
                                        </td>
                                    </tr>
                                    <tr>
                                        <th>Website</th>
                                        <td>{{$db->website}}</td>
                                    </tr>
                                    <tr>
                                        <th>Client Name</th>
                                        <td>{{$db->client}}</td>
                                    </tr>
                                    <tr>
                                        <th>Short Description</th>
                                        <td>{{$db->short_description}}</td>
                                    </tr>
                                    <tr>
                                        <th>Description One</th>
                                        <td>{{$db->description1}}</td>
                                    </tr>
                                    <tr>
                                        <th>Description Two</th>
                                        <td>{{$db->description2}}</td>
                                    </tr>
                                    <tr>
                                        <th>Image</th>
                                        <td><img width="" src="../public/frontend/images/portfoliopage/{{ $db->img }}" alt=""></td>
                                    </tr>  
                                </tbody>
                            </table>                           
                        </div>
                    </div>
                </div>
            </div>
        </div><!-- end row -->
    </div><!-- container -->
@endsection