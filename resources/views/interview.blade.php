@extends('layouts.app')

@section('content')
	{{-- {{ $jobcarrer_id }} --}}
	<interview :data="{{ $jobcarrer_id }}"></interview>
	
@endsection