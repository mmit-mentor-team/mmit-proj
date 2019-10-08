@extends('layouts.app')

@section('content')
    <city > </city>

<a href="#modal-1" data-toggle="modal">show modal</a>

    		<div class="modal fade" id="modal-1">
    			<div class="modal-dialog modal-xl" role="document">
    				<div class="modal-content">
    					<div class="modal-header">
    						<button type="button" class="close" data-dismiss="modal" aria-label="Close">
    							<span aria-hidden="true">&times;</span>
    							<span class="sr-only">Close</span>
    						</button>
    						<h4 class="modal-title">Modal title</h4>
    					</div>
    					<div class="modal-body">
    						<p>One fine body&hellip;</p>
    					</div>
    					<div class="modal-footer">
    						<button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
    						<button type="button" class="btn btn-primary">Save changes</button>
    					</div>
    				</div><!-- /.modal-content -->
    			</div><!-- /.modal-dialog -->
    		</div><!-- /.modal -->
@endsection
