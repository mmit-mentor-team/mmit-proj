@extends('layouts.app')

@section('content')
    <attendance-report :sections="{{$sections}}"></attendance-report>
@endsection