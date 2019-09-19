@extends('layouts.app')

@section('content')
    <attendance-collect :today="{{json_encode($today)}}" :sections="{{json_encode($sections)}}"></attendance-collect>
@endsection