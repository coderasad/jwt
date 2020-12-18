<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=0, minimal-ui">
        <title>Admin Dashboard</title>
        <meta content="Admin Dashboard" name="description" />
        <meta content="themesdesign" name="author" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />

        <link rel="shortcut icon" href="{{asset('public/backend/images/favicon.ico')}}">

        <!-- free style css=========== -->
        @php
            if(isset($myStyle)){
				foreach($myStyle as $value){
					echo "<link rel='stylesheet' href='{$value}'>";
				}
			}
        @endphp        
        <link href="{{asset('public/backend/css/bootstrap.min.css')}}" rel="stylesheet" type="text/css">
        <link href="{{asset('public/backend/plugins/animate/animate.css')}}" rel="stylesheet" type="text/css">
        <link href="{{asset('public/backend/css/icons.css')}}" rel="stylesheet" type="text/css">
        <link href="{{asset('public/backend/css/jquery.tagsinput-revisited.css')}}" rel="stylesheet" type="text/css">
        <link href="{{asset('public/backend/plugins/select2/select2.min.css')}}" rel="stylesheet" type="text/css">
        <link href="{{asset('public/backend/css/style.css')}}" rel="stylesheet" type="text/css">
        <link href="{{asset('public/backend/css/my-style.css')}}" rel="stylesheet" type="text/css">

    </head>


    <body class="fixed-left">       
        @guest    
        @else
            <!-- Begin page -->
            <div id="wrapper">

                <!-- ========== Left Sidebar Start ========== -->
                <div class="left side-menu">
                    <button type="button" class="button-menu-mobile button-menu-mobile-topbar open-left">
                        <i class="ion-close"></i>
                    </button>

                    <!-- LOGO -->
                    <div class="topbar-left">
                        <div class="text-center">
                            <!-- <a href="index.html" class="logo"><i class="fa fa-paw"></i> Aplomb</a> -->
                            <a href="{{url('/admin')}}" class="logo"><img src="{{asset('public/backend/images/logo.png')}}" width="125px" height="25" alt="logo"></a>
                        </div>
                    </div>
                

                    <div class="sidebar-inner slimscrollleft" id="sidebar-main">

                        <div id="sidebar-menu">
                            <ul>
                                <li class="menu-title">Overview</li>

                                <li class="">
                                    <a href="" class="waves-effect waves-light"><i class="mdi mdi-view-dashboard"></i><span> Product all </span> 
                                    <span class="badge badge-pill badge-primary float-right">5</span></a>
                                </li>

                                <li class="">
                                    <a href="{{URL::to('product')}}" class="waves-effect"><i class="mdi mdi-home"></i><span> View </span></a>
                                </li> 

                                <li class="">
                                    <a href="{{URL::to('product/create')}}" class="waves-effect"><i class="mdi mdi-home"></i><span> Create </span></a>
                                </li>                         
                            </ul>
                        </div>
                        <div class="clearfix"></div>
                    </div> <!-- end sidebarinner -->
                </div>
                <!-- Left Sidebar End -->

                <!-- Start right Content here -->

                <div class="content-page">
                    <!-- Start content -->
                    <div class="content">

                        <!-- Top Bar Start -->
                        <div class="topbar">
                            <nav class="navbar-custom">
                                <ul class="list-inline float-right mb-0">
                                    <li class="list-inline-item dropdown notification-list">
                                        <a class="nav-link dropdown-toggle arrow-none waves-effect waves-light" data-toggle="dropdown" href="#" role="button"
                                        aria-haspopup="false" aria-expanded="false">
                                            <i class="ti-email noti-icon"></i>
                                            <span class="badge badge-danger noti-icon-badge">5</span>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right dropdown-arrow dropdown-menu-lg">
                                            <!-- item-->
                                            <div class="dropdown-item noti-title">
                                                <h5><span class="badge badge-danger float-right">5</span>Messages</h5>
                                            </div>

                                            <!-- item-->
                                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                                <div class="notify-icon"><img src="{{asset('public/backend/images/users/avatar-2.jpg')}}" alt="user-img" class="img-fluid rounded-circle" /> </div>
                                                <p class="notify-details"><b>Charles M. Jones</b><small class="">Dummy text of the printing and typesetting industry.</small></p>
                                            </a>

                                            <!-- item-->
                                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                                <div class="notify-icon"><img src="{{asset('public/backend/images/users/avatar-3.jpg')}}" alt="user-img" class="img-fluid rounded-circle" /> </div>
                                                <p class="notify-details"><b>Thomas J. Mimms</b><small class="">You have 87 unread messages</small></p>
                                            </a>

                                            <!-- item-->
                                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                                <div class="notify-icon"><img src="{{asset('public/backend/images/users/avatar-4.jpg')}}" alt="user-img" class="img-fluid rounded-circle" /> </div>
                                                <p class="notify-details"><b>Luis M. Konrad</b><small class="">It is a long established fact that a reader will</small></p>
                                            </a>
                                            <div class="dropdown-divider"></div>
                                            <!-- All-->
                                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                                View All
                                            </a>
                                        </div>
                                    </li>

                                    <li class="list-inline-item dropdown notification-list">
                                        <a class="nav-link dropdown-toggle arrow-none waves-effect waves-light" data-toggle="dropdown" href="#" role="button"
                                        aria-haspopup="false" aria-expanded="false">
                                            <i class="ti-bell noti-icon"></i>
                                            <span class="badge badge-success noti-icon-badge">9</span>
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right dropdown-arrow dropdown-menu-lg">
                                            <!-- item-->
                                            <div class="dropdown-item noti-title">
                                                <h5><span class="badge badge-success float-right">9</span>Notification</h5>
                                            </div>

                                            <!-- item-->
                                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                                <div class="notify-icon bg-primary"><i class="mdi mdi-cart-outline"></i></div>
                                                <p class="notify-details"><b>Your order is placed</b><small class="">Dummy text of the printing and typesetting industry.</small></p>
                                            </a>

                                            <!-- item-->
                                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                                <div class="notify-icon bg-success"><i class="mdi mdi-message"></i></div>
                                                <p class="notify-details"><b>New Message received</b><small class="">You have 87 unread messages</small></p>
                                            </a>

                                            <!-- item-->
                                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                                <div class="notify-icon bg-warning"><i class="mdi mdi-martini"></i></div>
                                                <p class="notify-details"><b>Your item is shipped</b><small class="">It is a long established fact that a reader will</small></p>
                                            </a>
                                            <div class="dropdown-divider"></div>
                                            <!-- All-->
                                            <a href="javascript:void(0);" class="dropdown-item notify-item">
                                                View All
                                            </a>
                                        </div>
                                    </li>

                                    <li class="list-inline-item dropdown notification-list">
                                        <a class="nav-link dropdown-toggle arrow-none waves-effect waves-light nav-user" data-toggle="dropdown" href="#" role="button"
                                            aria-haspopup="false" aria-expanded="false">
                                            <img src="{{asset('public/backend/images/users/avatar-1.jpg')}}" alt="user" class="rounded-circle">
                                        </a>
                                        <div class="dropdown-menu dropdown-menu-right profile-dropdown ">
                                            <!-- item-->
                                            <div class="dropdown-item noti-title">
                                                <h5>Welcome</h5>
                                            </div>
                                            <a class="dropdown-item" href="#"><i class="mdi mdi-account-circle "></i> Profile</a>
                                            <a class="dropdown-item" href="{{route('changePassword')}}"><i class="mdi mdi-key-change"></i>Change Password</a>
                                            <!-- <a class="dropdown-item" href="#"><span class="badge badge-primary float-right">3</span><i class="mdi mdi-settings "></i> Settings</a> -->
                                            <!-- <a class="dropdown-item" href="#"><i class="mdi mdi-lock-open-outline"></i> Lock screen</a> -->
                                            <div class="dropdown-divider"></div>
                                            
                                            <a class="dropdown-item text-danger" href="{{ route('logout') }}"
                                                onclick="event.preventDefault();
                                                document.getElementById('logout-form').submit();"><i class="mdi mdi-power text-danger"></i>
                                                {{ __('Logout') }}
                                            </a>

                                            <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                                                @csrf
                                            </form>
                                        </div>
                                    </li>
                                </ul>

                                <ul class="list-inline menu-left mb-0">
                                    <li class="float-left">
                                        <button class="button-menu-mobile open-left waves-light waves-effect">
                                            <i class="mdi mdi-menu"></i>
                                        </button>
                                    </li>
                                    <li class="hide-phone app-search">
                                        <form role="search" class="">
                                            <input type="text" placeholder="Search..." class="form-control">
                                            <a href=""><i class="fa fa-search"></i></a>
                                        </form>
                                    </li>
                                </ul>
                                <div class="clearfix"></div>
                            </nav>
                        </div>
                        <!-- Top Bar End -->
                        <section class="page-content-wrapper">
                            @yield('admin_content')
                        </section><!-- Page content Wrapper -->

                    </div> <!-- content -->

                    <footer class="footer">
                        © 2020 coderas@d by Themesdesign.
                    </footer>                    
                </div>
                <!-- End Right content here -->

            </div>
            <!-- END wrapper --> 
            @endguest         
            <section>
                @yield ('login_contant')
            </section>

            <!-- delete model======== -->            
            <div class="col-md-6">                        
                <div class="card m-b-30">
                    <div class="modal fade" id="deleteModal" tabindex="-1" role="dialog" aria-hidden="true">
                        <div class="modal-dialog modal-dialog-centered" role="document">
                            <div class="modal-content">
                                <div class="text-center pt-4">
                                    <div class="text-warning mb-4">
                                        <i class="ti-info-alt font-80"></i>
                                    </div>
                                    <h2 class="text-center text-secondary">Are you sure?</h2>
                                    <p class="text-center text-danger m-0 font-18">Do you want to delete!</p>
                                </div>
                                <div class="d-flex justify-content-end p-4">
                                    <a class="btn btn-danger" id="delModal" href="">Yes, delete it!</a>
                                <button type="button" class="btn btn-secondary ml-2" data-dismiss="modal">Close</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        <!-- jQuery  -->
                    
        <script src="{{asset('public/backend/js/jquery.min.js')}}"></script>
        <script src="{{asset('public/backend/js/popper.min.js')}}"></script>
        <script src="{{asset('public/backend/js/bootstrap.min.js')}}"></script>
        <script src="{{asset('public/backend/js/modernizr.min.js')}}"></script>
        <script src="{{asset('public/backend/js/detect.js')}}"></script>
        <script src="{{asset('public/backend/js/fastclick.js')}}"></script>
        <script src="{{asset('public/backend/js/jquery.slimscroll.js')}}"></script>
        <script src="{{asset('public/backend/js/jquery.blockUI.js')}}"></script>
        <script src="{{asset('public/backend/js/waves.js')}}"></script>
        <script src="{{asset('public/backend/js/jquery.nicescroll.js')}}"></script>
        <script src="{{asset('public/backend/js/jquery.scrollTo.min.js')}}"></script>
        <!-- App js -->
        <script src="{{asset('public/backend/js/app.js')}}"></script>
        <script src="{{asset('public/backend/plugins/bootstrap-datepicker/js/bootstrap-datepicker.min.js')}}"></script>
        <script src="{{asset('public/backend/plugins/bootstrap-maxlength/bootstrap-maxlength.min.js')}}"></script>
        <script src="{{asset('public/backend/pages/form-advanced.js')}}"></script>
        <script src="{{asset('public/backend/plugins/bootstrap-colorpicker/js/bootstrap-colorpicker.min.js')}}"></script>
        <script src="{{asset('public/backend/js/jquery.tagsinput-revisited.js')}}"></script>
        <script src="{{asset('public/backend/plugins/select2/select2.min.js')}}"></script>
        <script>
            $(function(){
              'use strict';
        
              $('#datatable1').DataTable({
                responsive: true,
                language: {
                  searchPlaceholder: 'Search...',
                  sSearch: '',
                  lengthMenu: '_MENU_ items/page',
                }
              });
        
              // Select2
              $('.dataTables_length select').select2({ minimumResultsForSearch: Infinity });
        
            });
        </script>
        <script>            
            $(document).ready(function(){ 
                //delete model============
                $('.deleteModal').click(function (e) {
                    e.preventDefault();
                    var link = $(this).attr("href");
                    $('#delModal').attr("href",link);
                });
                        
                // Image show instant start============
                function readURLa(input) {
                    if (input.files && input.files[0]) {
                        var reader = new FileReader();

                        reader.onload = function (e) {
                            $('#img_show').attr('src', e.target.result);
                        }
                        reader.readAsDataURL(input.files[0]);
                    }
                }
                $("#imgInp").change(function () {
                    readURLa(this);
                });
            })
        </script> 
        @include('sweetalert::alert'); 
    </body>
</html>

