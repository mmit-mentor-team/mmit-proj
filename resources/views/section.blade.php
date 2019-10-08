@extends('layouts.app')
@section('content')
    <sectionkg :permissions="{{Auth::user()->staff->courses}}"> </sectionkg>
@endsection