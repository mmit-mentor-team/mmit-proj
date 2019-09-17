@extends('layouts.app')

@section('content')
    <inquire :permissions="{{Auth::user()->permissions}}"> </inquire>
@endsection