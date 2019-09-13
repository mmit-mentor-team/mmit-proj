<template>
	<div class="container">
		<div class="row">
			<div class="col-md-12">
				<div class="card shadow mb-4">
					<div class="card-header py-4">

						<div class="alert alert-success alert-dismissible fade show alertbox" role="alert" v-if="noti">
            
							        <strong>SUCCESS!</strong> {{ message }}
							            
							            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
							              <span aria-hidden="true">&times;</span>
							            </button>
							    </div>

						<h3 class="text-primary font-weight-bold">Position
						<button class="btn btn-primary float-right" @click="Addmodal()">
							<i class="fa fa-plus"></i>
							Add Position
				 		</button>
						</h3>
					</div>

					<div class="card-body table-responsive">
						<table class="table table-bordered table-hover" >
							<thead class="bg-primary text-white">
								<tr class="text-center">
									<th>No.</th>
									<th>Name</th>
									<th>Action</th>
								</tr>
							</thead>

							<tbody>
								<tr v-for="(position , index) in positions">
									<td>{{index+1}}</td>
									<td>{{position.name}}</td>
									<td>
										<button @click="initUpdate(index)" class="btn btn-warning btn-xs">
					                        <i class="fas fa-edit"></i> Edit
					                    </button>
					                      
					                    <button @click="deletePosition(index)" class="btn btn-danger btn-xs">
					                        <i class="fas fa-trash-alt"></i>  Delete
					                    </button>
									</td>
								</tr>
							</tbody>
						</table>
					</div>

				</div>
				

				<!-- add modal -->
				<div class="modal fade" tabindex="-1" role="dialog" id="addmodalposition">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">Add New Position</h4>
								<button type="button" class="close" data-dismiss='modal' aria-label="close"><span aria-hidden="true">&times;</span></button>
							</div>

							<div class="modal-body">
								<div class="alert alert-danger" v-if="errors.length > 0">
				                        <ul>
				                            <li v-for="error in errors">{{ error }}</li>
				                        </ul>
				                    </div>
								<div class="form-group">
									<label for="name">Name:</label>
									<input type="text" name="name" placeholder="Position Name" id="name" v-model="position.name" class="form-control">
								</div>
							</div>

							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal">
            						<i class="fa fa-times"></i> Close
            					</button>

            					 <button type="button" @click="createPosition" class="btn btn-primary">
              						<i class="fa fa-save pr-2">  </i> Save
            					</button>

							</div>


						</div>
					</div>
				</div>


				<!-- update modal -->
				<div class="modal fade" tabindex="-1" role="dialog" id="update_position_model">
					<div class="modal-dialog" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h4 class="modal-title">Update Position</h4>
									<button type="button" data-dismiss="modal" class="close" aria-label="Close"><span aria-hidden="true">&times;</span>
									</button>	
							</div>
							<div class="modal-body">
								 <div class="alert alert-danger" v-if="errors.length > 0">
						              <ul>
						                <li v-for="error in errors">{{ error }}</li>
						              </ul>
						            </div>
								<div class="form-group">
									<label for="name">Name</label>
									<input type="text" name="name" class="form-control" id="name" v-model='update_position.name' placeholder="Position Name">
								</div>
							</div>

							<div class="modal-footer">
					            <button type="button" class="btn btn-default" data-dismiss="modal">
					              <i class="fa fa-times"></i> Close
					            </button>
					                
					            <button type="button" @click="updatePosition" class="btn btn-primary">
					              <i class="fa fa-upload"></i> Update
					            </button>
					        </div>
							
						</div>
					</div>
				</div>
			</div>

	<!-- /.modal-dialog -->
    </div><!-- /.modal -->
		</div>
	</div>
</template>


<script>
	
	export default{
		data(){
			return{
				position:{
					name:''
				},
				errors:[],
				message:'',
				positions:[],
				noti:false,
				update_position:{},

			}
		},

		mounted(){
			this.readPosition();
		},

		methods:{

			readPosition(){
				axios.get('/api/setup/position')
					 .then(response=>{
					 	this.positions=response.data.positions;
					 	this.alertmessage();
					 });
			},

			deletePosition(index){
				this.noti=false;
				let conf = confirm('Are you sure to delete??');
				if(conf===true)
				{
					axios.delete('/api/setup/position/'+this.positions[index].id)
					.then(response=>{
						this.noti=true;
						this.positions.splice(index,1);
						this.message="Successfully deleted";
						this.readPosition();
					})
					  .catch(error => {
                       });
				}
			},

			alertmessage()
			{	
				setTimeout(function(){
					$(".alertbox").hide()},2000);
				
			},


			Addmodal(){
				$('#addmodalposition').modal('show');
			},
			reset(){
				this.position.name = '';
			},

			createPosition(){
				this.noti=false;
				axios.post('/api/setup/position',{
					name:this.position.name,
				})
				.then(response=>{
					this.reset();
					this.positions.push(response.data.positions);
					this.noti=true;
					this.message="New position has been successfully added";
					$('#addmodalposition').modal('hide');
					this.readPosition();
				})
				.catch(error=>{
					this.errors = [];
                       if (error.response.data.errors && error.response.data.errors.name) {
                           this.errors.push(error.response.data.errors.name[0]);
                       }
				});
			},


			initUpdate(index){
				$('#update_position_model').modal('show');
				this.update_position=this.positions[index];
					this.update_position=JSON.parse(JSON.stringify(this.positions[index]));
			},

			updatePosition(){
				this.noti=false;
				axios.patch('/api/setup/position/'+this.update_position.id,{
					name:this.update_position.name,
				})
				.then(response=>{
					this.noti=true;
					this.message="Position has been successfully updated!";
					$('#update_position_model').modal('hide');
					this.readPosition();
				})
				 .catch(error => {
                       this.errors = [];
                       if (error.response.data.errors.name) {
                           this.errors.push(error.response.data.errors.name[0]);
                       }
			});
		},
	}
}

</script>
