@extends('layouts.app')

@section('content')
    <inquire :permissions="{{Auth::user()->permissions}}" :active_tab="hr_ygn"> </inquire>
@endsection