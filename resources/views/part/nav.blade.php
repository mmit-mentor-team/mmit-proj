<div id="app">
  <!-- Page Wrapper -->
  <div id="wrapper">

    <!-- Sidebar -->
    <ul class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion" id="accordionSidebar">

      <!-- Sidebar - Brand -->
      <a class="sidebar-brand d-flex align-items-center justify-content-center mt-2 mb-3" href="{{ route('home') }}">
        <img src="{{ asset('img/logo.jpg') }}" class="img-fluid">
      </a>

      <!-- Nav Item - Dashboard -->
      <li class="nav-item">
          <a class="nav-link" href="{{route('home')}}">
            <i class="fas fa-fw fa-tachometer-alt"></i>
            <span>Dashboard</span></a>
        </li>

      <!-- Divider -->
      <hr class="sidebar-divider">

      <!-- Nav Item - Pages Collapse Menu -->
      @hasanyrole('Teacher|Boss|Mentor')

        <!-- Heading -->
        <div class="sidebar-heading">
          Attendance
        </div>
        
        <!-- Nav Item - Tables -->
        <li class="nav-item">
          <a class="nav-link" href="">
            <i class="fas fa-fw fa-table"></i>
            <span> Attendances </span></a>
        </li>
      <hr class="sidebar-divider">

      @endhasallroles

      @hasanyrole('Senior Consultant|Junior Consultant|Boss|Admin Assistant')
        <!-- Heading -->
        <div class="sidebar-heading">
          Interface
        </div>

        <li class="nav-item">
          <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="true" aria-controls="collapseTwo">
            <i class="fas fa-fw fa-cog"></i>
            <span>Components</span>
          </a>
          <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
              <h6 class="collapse-header">
                Custom Components:
              </h6>
              <a class="collapse-item" href="{{ route("city") }}"> 
                City 
              </a>
              
              <a class="collapse-item" href="{{ route("township") }}">
                Township
              </a>

              <a class="collapse-item" href="{{ route("position") }}">
                Position (For Student)
              </a>

              <a class="collapse-item" href="{{ route('location') }}">
                Department
              </a>

              @hasrole('Boss')

              <a class="collapse-item" href="{{ route("role") }}">
                Roles
              </a>

              <a class="collapse-item" href="{{ route("permission") }}">
                Permissions
              </a>

              @endrole;

            </div>
          </div>
        </li>
        

        <!-- Divider -->
        <hr class="sidebar-divider">
        
        <!-- Heading -->
        <div class="sidebar-heading">
          Student
        </div>
        
        @canany(['Accept Student Enquiry ( PHP Bootcamp - YGN )', 'Accept Student Enquiry ( HR - YGN )', 'Accept Student Enquiry ( HR - MDY )', 'Accept Student Enquiry ( iOS - YGN )', 'Enroll Student ( PHP Bootcamp - YGN )', 'Enroll Student ( HR - YGN )', 'Enroll Student ( HR - MDY )', 'Enroll Student ( iOS - YGN )'])

        <!-- Nav Item - Student -->
        <li class="nav-item">
          <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseStudent" aria-expanded="true" aria-controls="collapseStudent">
            <i class="fas fa-address-card"></i>
            <span> Student </span>
          </a>
          <div id="collapseStudent" class="collapse" aria-labelledby="headingPages" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
              <h6 class="collapse-header">
                Student List:
              </h6>
              
              @canany(['Accept Student Enquiry ( PHP Bootcamp - YGN )', 'Accept Student Enquiry ( HR - YGN )', 'Accept Student Enquiry ( HR - MDY )', 'Accept Student Enquiry ( iOS - YGN )'])
                <a class="collapse-item" href="{{ route('student') }}">
                  Student
                </a>
              @endcanany

              @canany(['Enroll Student ( PHP Bootcamp - YGN )', 'Enroll Student ( HR - YGN )', 'Enroll Student ( HR - MDY )', 'Enroll Student ( iOS - YGN )'])
                <a class="collapse-item" href="{{ route('inquire') }}">
                  Inquire
                </a>
              @endcanany
              
            </div>
          </div>
        </li>

        @endcan
        
        @canany(['Schedule Timetable'])
        <!-- Nav Item - Course -->
        <li class="nav-item">
          <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseCourse" aria-expanded="true" aria-controls="collapseCourse">
            <i class="fas fa-certificate"></i>
            <span> Course </span>
          </a>
          <div id="collapseCourse" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
              <h6 class="collapse-header">
                Course Components:
              </h6>

              <a class="collapse-item" href="{{ route('section') }}">
                Section
              </a>

              <a class="collapse-item" href="{{ route('duration') }}">
                Duration
              </a>

              <a class="collapse-item" href="{{ route('course') }}">
                Course
              </a>

            </div>
          </div>
        </li>
        @endcan
        
        @canany(['Find HR Jobs ( YGN )', 'Find HR Jobs ( MDY )', 'Find PHP Jobs'])
        <!-- Nav Item - Company -->
        <li class="nav-item">
          <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseCompany" aria-expanded="true" aria-controls="collapseCompany">
            <i class="fas fa-building"></i>
            <span> Company </span>
          </a>
          <div id="collapseCompany" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
              <h6 class="collapse-header">
                Course Components:
              </h6>
              
              <a class="collapse-item" href="{{ route('company') }}">
                Company
              </a>

              <a class="collapse-item" href="{{ route('jobcareer') }}">
                Job Career
              </a>

            </div>
          </div>
        </li>

        <!-- Nav Item - Interview -->
        <li class="nav-item">
          <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseInterview" aria-expanded="true" aria-controls="collapseInterview">
            <i class="fas fa-business-time"></i>
            <span> Interview </span>
          </a>
          <div id="collapseInterview" class="collapse" aria-labelledby="headingUtilities" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
              <h6 class="collapse-header">
                Job Appointment :
              </h6>
              
              <a class="collapse-item" href="">
                Interview List
              </a>

              <a class="collapse-item" href="">
                Hire List
              </a>

              <a class="collapse-item" href="">
                Dimiss List
              </a>

            </div>
          </div>
        </li>

        @endcan

        @canany(['Record Expense'])
        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
          Staff 
        </div>

        <!-- Nav Item - Staff -->
        <li class="nav-item">
          <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseStaff" aria-expanded="true" aria-controls="collapseStaff">
            <i class="fas fa-user-tie"></i>
            <span> Staff </span>
          </a>
          <div id="collapseStaff" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
              <h6 class="collapse-header">
                Staff Components:
              </h6>
              <a class="collapse-item" href="{{route('teacher')}}"> 
                Teacher 
              </a>
              <a class="collapse-item" href="{{route('staff')}}"> 
                Staff 
              </a>

            </div>
          </div>
        </li>

        <!-- Divider -->
        <hr class="sidebar-divider">

        <!-- Heading -->
        <div class="sidebar-heading">
          Price-tag 
        </div>

        <!-- Nav Item - Expense -->
        <li class="nav-item">
          <a class="nav-link collapsed" href="#" data-toggle="collapse" data-target="#collapseExpense" aria-expanded="true" aria-controls="collapseExpense">
            <i class="fas fa-cash-register"></i>
            <span> Price-tag </span>
          </a>
          <div id="collapseExpense" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionSidebar">
            <div class="bg-white py-2 collapse-inner rounded">
              <h6 class="collapse-header">
                Expense Components:
              </h6>
              <a class="collapse-item" href="{{ route('expense') }}"> 
                Expense 
              </a>
              
              <a class="collapse-item" href="{{ route('income') }}">
                Income
              </a>

            </div>
          </div>
        </li>

        @endcan

        
      @endrole

      <!-- Divider -->
      {{-- <hr class="sidebar-divider d-none d-md-block"> --}}

      <!-- Sidebar Toggler (Sidebar) -->
      {{-- <div class="text-center d-none d-md-inline">
        <button class="rounded-circle border-0" id="sidebarToggle"></button>
      </div> --}}


    </ul>
    <!-- End of Sidebar -->

    <!-- Content Wrapper -->
    <div id="content-wrapper" class="d-flex flex-column">

      <!-- Main Content -->
      <div id="content">

        <!-- Topbar -->
        <nav class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

          <!-- Sidebar Toggle (Topbar) -->
          <button id="sidebarToggleTop" class="btn btn-link d-md-none rounded-circle mr-3">
            <i class="fa fa-bars"></i>
          </button>

          <!-- Topbar Navbar -->
          <ul class="navbar-nav ml-auto">

            {{-- <div class="topbar-divider d-none d-sm-block"></div> --}}

            <li class="nav-item dropdown no-arrow">
              <a class="nav-link dropdown-toggle" href="#" id="userDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                @php $user = Auth::user();
                @endphp
                <span class="mr-2 d-none d-lg-inline text-gray-600 small"> {{ $user->name }} </span>
                @if($user->staff['photo'])
                <img class="img-profile rounded-circle" src="{{ URL::to('mmit_image/staff/'.$user->staff['photo']) }}" style="width: 3rem; height: 3rem">
                @else
                <img class="img-profile rounded-circle" src="{{ URL::to('mmit_image/staff/code.png') }}" style="width: 3rem; height: 3rem">
                @endif
              </a>
              <!-- Dropdown - User Information -->
              <div class="dropdown-menu dropdown-menu-right shadow animated--grow-in" aria-labelledby="userDropdown">
                <a class="dropdown-item" href="{{route('profile')}}">
                  <i class="fas fa-user fa-sm fa-fw mr-2 text-gray-400"></i>
                  Profile
                </a>
                <a class="dropdown-item" href="#">
                  <i class="fas fa-list fa-sm fa-fw mr-2 text-gray-400"></i>
                  Activity Log
                </a>
                <div class="dropdown-divider"></div>
                <a class="dropdown-item" href="#" data-toggle="modal" data-target="#logoutModal">
                  <i class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
                  Logout
                </a>
              </div>
            </li>

          </ul>

        </nav>
        <!-- End of Topbar -->

        <!-- Begin Page Content -->
        <div class="container-fluid">

        @yield('content')
          

        </div>
        <!-- /.container-fluid -->

      </div>
      <!-- End of Main Content -->

      <!-- Footer -->
      <footer class="sticky-footer bg-white">
        <div class="container my-auto">
          <div class="copyright text-center my-auto">
            <span>Copyright &copy; MMIT 2019</span>
          </div>
        </div>
      </footer>
      <!-- End of Footer -->

    </div>
    <!-- End of Content Wrapper -->

  </div>
  <!-- End of Page Wrapper -->

  <!-- Scroll to Top Button-->
  <a class="scroll-to-top rounded" href="#page-top">
    <i class="fas fa-angle-up"></i>
  </a>

  <!-- Logout Modal-->
  <div class="modal fade" id="logoutModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
      <div class="modal-content">
        <div class="modal-header">
          <h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
          <button class="close" type="button" data-dismiss="modal" aria-label="Close">
            <span aria-hidden="true">×</span>
          </button>
        </div>
        <div class="modal-body">Select "Logout" below if you are ready to end your current session.</div>
        <div class="modal-footer">
          <form method="post" action="{{route('logout')}}">
            @csrf
            <button class="btn btn-secondary" type="button" data-dismiss="modal">Cancel</button>
            <input type="submit" name="btnsubmit" class="btn btn-primary" value="Logout">
          </form>
        </div>
      </div>
    </div>
  </div>
</div>

<script src="//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
<script src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script type="text/javascript">
  $(document).ready(function() {
    $(".dropdown-toggle").dropdown();
});
</script>