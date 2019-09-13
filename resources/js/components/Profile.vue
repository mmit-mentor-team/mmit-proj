<template>
	<div class="container">
		<div class="row">
			<div class="col-md-8 mx-auto">
				<div class="card shadow py-4">
					
						<div class="alert alert-success alert-dismissible fade show alertbox" role="alert" v-if="noti">
            
							        <strong>SUCCESS!</strong> {{ message }}
							            
							            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
							              <span aria-hidden="true">&times;</span>
							            </button>
							    </div>
					
					<div class="card-body" v-for="(profile,index) in profile">


						<div class="row">
							<div class="col-md-8 mx-auto text-center">
								<img :src="getimage(profile.staff_photo)" class="img-responsive img-fluid rounded-circle shadow" style="width:200px; height:200px" >
									
							</div>
						</div>

						<div class="row mt-3">
							<div class="col-md-4 offset-md-1">
								Name
							</div>
							<div class="col-md-6">
								{{profile.name}}
							</div>
						</div>

						<div class="row mt-3">
							<div class="col-md-4 offset-md-1">
								Email
							</div>
							<div class="col-md-6">
								{{profile.email}}
							</div>
						</div>

						

						<div class="row mt-3">
							<div class="col-md-4 offset-md-1">
								DOB
							</div>
							<div class="col-md-6">
									{{profile.staff_dob}}
							</div>
						</div>
						<div class="row mt-3">
							<div class="col-md-4 offset-md-1">
								Father Name
							</div>
							<div class="col-md-6">
									{{profile.staff_fathername}}
							</div>
						</div>

						<div class="row mt-3">
							<div class="col-md-4 offset-md-1">
								NRC
							</div>
							<div class="col-md-6">
									{{profile.staff_nrc}}
							</div>
						</div>

						

						
						<div class="row mt-3">
							<div class="col-md-4 offset-md-1">
								Department
							</div>
							<div class="col-md-6">
								{{profile.location_name}}
									
							</div>
						</div>

						<div class="row mt-3">
							<div class="col-md-4 offset-md-1">
								City
							</div>
							<div class="col-md-6">
								{{profile.city_name}}
									
							</div>
						</div>

						<div class="row mt-4">
							<div class="col-md-6 offset-md-5">
								<button class="btn btn-primary" @click="editprofilemodal(index)">Edit Profile</button>
								<button class="btn btn-primary" @click="editpasswordmodal(index)">Change Password</button>
							</div>
						</div>

					</div>

				</div>

				<!-- edit password modal -->

				<div class="modal fade" tabindex="1" role="dialog" id="editpassword">
					<div class="modal-dialog modal-md" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h2 class="modal-title">Change Password</h2>
								<button class="close" type="button" data-dismiss="modal" arial-label="Close"><span arial-hidden="true">&times;</span></button>
							</div>

							<div class="modal-body">
								<div class="alert alert-danger" v-if="errors.length>0">
				                    <ul>
				                        <li v-for="error in errors">{{error}}</li>
				                    </ul>
				                 </div>

				                 <div class="form-group" id="pass_show">
									<label for="names">Password</label>

									<input type="hidden" name="user_id" id="user_id" v-model="update_profile.user_id">

									<input type="hidden" name="pass" v-model="update_profile.password">

									<input type="password" name="password" v-model="update_profile.newpassword" id="password" class="form-control mb-1" placeholder="Password">

									<label for="names" class="mt-2">Confirm Password</label>
									<input type="password" name="confirm_password" v-model="update_profile.confirm_password" id="confirm_password" class="form-control" placeholder="Confirm Password">
								</div>
							</div>

							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-time"></i>Close</button>

								<button type="button" class="btn btn-success" @click="Update_password()"><i class="fa fa-save"></i>Update</button>
							</div>
						</div>
					</div>
				</div>

				<!-- edit profile modal -->
				<div class="modal fade" tabindex="1" role="dialog" id="editprofile">
					<div class="modal-dialog modal-lg" role="document">
						<div class="modal-content">
							<div class="modal-header">
								<h2 class="modal-title">Update Profile</h2>
								<button class="close" type="button" data-dismiss="modal" arial-label="Close"><span arial-hidden="true">&times;</span></button>
								
							</div>

							<div class="modal-body">
								<div class="alert alert-danger" v-if="errors.length>0">
				                        <ul>
				                            <li v-for="error in errors">{{error}}</li>
				                        </ul>
				                    </div>
								<input type="hidden" name="user_id" id="user_id" v-model="update_profile.user_id">
								<div class="form-group">
									<label>Photo</label>

									<div class="form-group">
										<nav>
											<div class="nav nav-tabs nav-justified">
												<a href="#oldimage" class="nav-item nav-link active" data-toggle="tab">Old Photo</a>

												<a href="#newimage" class="nav-item nav-link" data-toggle="tab">New Photo</a>
											</div>
										</nav>

										<div class="tab-content container my-3">
											<div class="tab-pane fade show active rounded" id="oldimage">
												<img :src="getimage(update_profile.staff_photo)" class="img-responsive" height="100" width="100">
												<input type="hidden" name="oldimage" value="update_profile.staff_photo" id="oldimage">
												{{profile.staff_photo}}
											</div>

											<div class="tab-pane fade" id="newimage">
			                              			
			                              		<div v-if="image" class="col-md-3">
													<img :src="image" class="img-responsive" height="80" width="80" id="image">
												</div>

					                            <div class="col-md-6">
					                                <input type="file"  class="form-control-file inputfile" multiple v-on:change="onImageChange" name="image" id="image">
					                            </div>
					                        </div>
										</div>
									</div>

									<div class="form-group">
										<label for="names">Name</label>
										<input type="text" name="name" id="name" v-model="update_profile.name" class="form-control" placeholder="Name">
									</div>

									<div class="form-group">
										<label for="names">Email</label>
										<input type="email" name="email" id="email" v-model="update_profile.email" class="form-control" placeholder="Email">
									</div>


									<div class="form-group">
										<label for="names">DOB</label>
										<input type="date" name="dob" id="dob" class="form-control" placeholder="Date Of Birth" v-model="update_profile.staff_dob">
									</div>

									<div class="form-group">
										<label for="names">NRC</label>
										<input type="text" name="nrc" id="nrc" v-model="update_profile.staff_nrc" class="form-control" placeholder="NRC">
									</div>

									<div class="form-group">
										<label for="names">Father Name</label>
										<input type="text" name="fathername" id="fathername" v-model="update_profile.staff_fathername" class="form-control" placeholder="NRC">
									</div>
								</div>

							</div>

							<div class="modal-footer">
								<button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-time"></i>Close</button>

								<button type="button" class="btn btn-success" @click="Update_Profile_detail()"><i class="fa fa-save"></i>Update</button>
							</div>
						</div>
					</div>
				</div>


			</div>
		</div>
	</div>
</template>

<style type="text/css">
	.inputfile{
		width: 97px;
		height: 40px;
	}
</style>

<script>
	export default{
		data(){
				
				return{
					profile:{name:'',
							newpassword:'',
							confirm_password:'',

				},
					image:'',
					profile:[],
					location_id:'',
					city_id:'',
					update_profile:{},
					staffs:[],
					locations:[],
					roles:[],
					cities:[],
					errors:[],
					message:'',
					noti:false,
					passworderror:'',
					
			}
		},

		mounted(){
			this.readProfile();
			this.readStaff();
			this.readLocation();
			this.readRole();
			this.readCity();
		},

		methods:{

			reset(){
				this.errors='';
			},

			alertmessage()
			{	
				setTimeout(function(){
					$(".alertbox").hide()},2000);
				
			},

			readProfile(){
				axios.get('/api/setup/profile')
				.then(response=>{
					this.profile=response.data.profile;
					this.alertmessage();
					// console.log(response.data.profile[0])
				});
			},

			getimage(image){
				return "mmit_image/staff/"+ image;
			},


			onImageChange(e) {
                    let files = e.target.files || e.dataTransfer.files;
                    let image=[];
                    if (!files.length)
                         return;
                    this.createImage(files[0]);
                    console.log(files);
            },
            createImage(file) {
                let reader = new FileReader();
                let vm = this;
                reader.onload = (e) => {
                    vm.image = e.target.result;
                };
                reader.readAsDataURL(file);
                console.log(reader);
            },


			readRole(){
				axios.get('/api/setup/role')
				.then(response=>{
					this.roles=response.data.roles;
				});
			},

			readStaff(){
				axios.get('/api/setup/staff')
				.then(response=>{
					this.staffs=response.data.staffs;
				});
			},

			readLocation(){
				axios.get('/api/setup/location')
				.then(response=>{
					this.locations=response.data.locations;
				});
			},

			readCity(){
				axios.get('/api/setup/city')
				.then(response=>{
					this.cities=response.data.cities;
				});
			},

			editprofilemodal(index){
				$('#editprofile').modal('show');
				this.update_profile=this.profile[index];
				this.update_profile=JSON.parse(JSON.stringify(this.profile[index]));
			},

			editpasswordmodal(index){
				$('#editpassword').modal('show');
				this.update_profile=this.profile[index];
				this.update_profile=JSON.parse(JSON.stringify(this.profile[index]));
			},

			Update_password(){
				this.noti=false;
				axios.patch('/api/setup/password_edit/'+this.update_profile.id,{
					user_id:this.update_profile.user_id,
					pass:this.update_profile.password,
					password:this.update_profile.newpassword,
					password_confirmation:this.update_profile.confirm_password,
					// 
				})
				.then(response=>{
					// console.log(response.data.password)
					this.message="Succefully Update Your Password";
					this.noti=true;
					$('#editpassword').modal('hide');
					this.reset();
					this.readProfile();
					this.readStaff();
					this.readLocation();
					this.readRole();
					this.readCity();
				})

				.catch(error=>{
					this.errors=[];
					if (error.response.data.errors && error.response.data.errors.password) {
						this.errors.push(error.response.data.errors.password[0]);
					}

				})
			},

			Update_Profile_detail(){
				
				this.noti=false;
				axios.patch('/api/setup/profile/'+this.update_profile.id,{
					user_id:this.update_profile.user_id,
					image:this.image,
					oldimage:this.update_profile.staff_photo,
					name:this.update_profile.name,
					email:this.update_profile.email,
					dob:this.update_profile.staff_dob,
					fathername:this.update_profile.staff_fathername,
					nrc:this.update_profile.staff_nrc,
					location:this.update_profile.location_id,
					city:this.update_profile.city_id,
				})
				.then(response=>{
					// console.log(response.data.password)
					this.message="Succefully Update Your Profile";
					this.noti=true;
					$('#editprofile').modal('hide');
					this.reset();
					this.readProfile();
					this.readStaff();
					this.readLocation();
					this.readRole();
					this.readCity();
				})
				.catch(error=>{
					this.errors=[];
					if (error.response.data.errors && error.response.data.errors.email) {
						this.errors.push(error.response.data.errors.email[0]);
					}
					})

			}
		},
	}
</script>