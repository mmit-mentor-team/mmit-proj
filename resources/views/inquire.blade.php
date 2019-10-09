@extends('layouts.app')

@section('content')

    <inquire :permissions="{{Auth::user()->staff->courses}}"> </inquire>
@endsection