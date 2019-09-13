@extends('layouts.app')
@section('content')
    <sectionkg :permissions="{{Auth::user()->permissions}}" :active_tab="hr_ygn"> </sectionkg>
@endsection