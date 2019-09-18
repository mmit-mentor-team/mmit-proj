@extends('layouts.app')
@section('content')
    <sectionkg :permissions="{{Auth::user()->permissions}}"> </sectionkg>
@endsection