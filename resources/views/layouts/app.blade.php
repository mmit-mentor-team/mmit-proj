<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">
  <title> MMIT Consulting </title>
  <!-- Custom fonts for this template -->
  <link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet">
  <!-- CSRF Token -->
  <meta name="csrf-token" content="{{ csrf_token() }}">
  <!-- Favicon -->
  <link rel="icon" type="image/png" sizes="16x16" href="{{ asset('img/favicon.jpg') }}">
  <!-- Styles -->
  <link href="{{ asset('css/app.css') }}" rel="stylesheet">
  <!-- <link href="{{ asset('css/sb-admin-2.min.css') }}" rel="stylesheet"> -->
  <!-- Scripts -->
  <script src="{{ asset('js/app.js') }}" defer></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/vue/2.4.2/vue.js" defer></script>

  <style type="text/css">
    .modal-xl .modal-content {
        min-width: 90%;
        max-width: 1140px;
    }
  </style>
  

</head>

  @if(Request::segment(1) == '' || Request::segment(1) == 'login' || Request::segment(1) == 'register' || Request::segment(1) == 'print' )

    <body class="bg-gradient-primary">
    @yield('content')
    <a href="#modal-1" data-toggle="modal">show modal</a>
    <div class="modal fade" id="modal-1">
      <div class="modal-dialog modal-xl" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
              <span class="sr-only">Close</span>
            </button>
            <h4 class="modal-title">Modal title</h4>
          </div>
          <div class="modal-body">
            <p>One fine body&hellip;</p>
          </div>
          <div class="modal-footer">
            <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
            <button type="button" class="btn btn-primary">Save changes</button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
  @else
    <body id="page-top">
    @include('part.nav')
  @endif

</body>

</html>
