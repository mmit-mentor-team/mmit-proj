@extends('layouts.app')

@section('content')
    <student :permissions="{{Auth::user()->permissions}}" :active_tab="hr_ygn"> </student>
@endsection
