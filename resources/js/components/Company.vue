<template>
	<div class="container">
		<div class="row">
			<div class="col-md-12">

				<div class="card shadow mb-4">

					<div class="card-header py-3">

						<div class="alert alert-success alert-dismissible fade show alertbox" role="alert" v-if="noti">
            
							        <strong>SUCCESS!</strong> {{ message }}
							            
							            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
							              <span aria-hidden="true">&times;</span>
							            </button>
							    </div>
						<h3 class="m-0 font-weight-bold text-primary">Company List
							<button class="btn btn-primary float-right" @click="initAddcompany()"><i class="fa fa-plus"></i>Add Company</button>
						</h3>
	
					</div>

					<!-- index card -->
					<div class="card-body">

						<div class="table-responsive">
							<table class="table table-hover table-bordered" v-if="company.length>0">
								<thead class="bg-primary text-white">
									<tr class="text-center">
										<th>No.</th>
										<th>Photo</th>
										<th>Company Name</th>
										<th>HrName</th>
										<th>Email</th>
										<th>Phone Number</th>
										<th>Action</th>

									</tr>
								</thead>

								<tbody>
									<tr v-for="(company,index) in company">
										<td>{{index + 1}}</td>
										<td><img :src="getImage(company.logo)" class="img-responsive" width="50" height="50"></td>
										<td>{{company.name}}</td>
										<td>{{company.hrname}}</td>
										<td>{{company.email}}</td>
										<td>{{company.phno}}</td>

										<td>
											<button type="button" class="btn btn-info text-white" @click="detailCompany(index)">
												<i class="fa fa-eye"></i>
												Detail
											</button>

											<button type="button" class="btn btn-success text-white" @click="updataCompany(index)">
												<i class="fa fa-edit"></i>
												Edit
											</button>

											<button type="button" class="btn btn-danger text-white" @click="deleteCompany(index)">
												<i class="fa fa-trash"></i>
												Delete
											</button>
										</td>

									</tr>
								</tbody>

							</table>
						</div>
					</div>
					<!-- card end -->

					<!-- add company start -->
					<div class="modal fade" tabindex="1" role="dialog" id="add-company">
						<div class="modal-dialog modal-lg" role="document">
							<div class="modal-content">

								<div class="modal-header">
									<h3 class="modal-title">Add New Company</h3>
									<button class="close" type="button" data-dismiss="modal" arial-label="Close"><span arial-hidden="true">&times;</span></button>
								</div>

								<div class="modal-body">
									<div class="alert alert-danger" v-if="errors.length > 0">
				                        <ul>
				                            <li v-for="error in errors">{{ error }}</li>
				                        </ul>
				                    </div>
									<div class="form-group">
										<label for="names">Photo</label>
										<div v-if="logo" class="col-md-3">
											<img :src="logo" class="img-responsive" height="80" width="80" id="logo">
										</div>
										<div class="col-md-6">
											<input type="file"  multiple v-on:change="onImageChange"  name="logo" id="logo" class="form-control-file inputfile" >
										</div>
										
									</div>

									<div class="form-group">
										<label for="names">Company Name</label>
										<input type="text" name="name" id="name" class="form-control" placeholder="Name" v-model="company.name">
									</div>

									<div class="form-group">
										<label for="hrname">HrName</label>
										<input type="text" name="hrname" id="hrname" class="form-control" placeholder="HrName" v-model="company.hrname">
									</div>

									<div class="form-group">
										<label for="phno">Phone NO.</label>
										<input type="number" name="phno" id="phno" class="form-control" placeholder="Phone Number" v-model="company.phno">
									</div>

									<div class="form-group">
										<label for="email">Email</label>
										<input type="email" name="email" id="email" placeholder="Email" class="form-control" v-model="company.email">
									</div>

									<div class="form-group">
										<label for="address">Address</label>

										<textarea type="text" placeholder="Address" class="form-control"
                                  			v-model="company.address"></textarea>

										<!-- <input type="text" name="address" id="address" placeholder="Address" class="form-control" v-model="company.address"> -->
									</div>

									<div class="form-group">
										<label for="remark">Remark</label>

										<textarea type="text" placeholder="Remark" class="form-control"
                                  			v-model="company.remark"></textarea>

										<!-- <input type="text" name="remark" id="remark" class="form-control" v-model="company.remark" placeholder="Remark"> -->
									</div>

									<div class="form-group">
										<label for="email">Township</label>

										<select v-model="township_id" class="form-control" id="township_id" name="township_id">

											<option disabled value="">Please select One</option>

											<option v-for="(township, index) in townships" :value="township.id" > {{ township.name }} </option>

										</select>
									</div>

									<div class="form-group">
										<label for="fblink">FBLink</label>
										<input type="text" name="fblink" id="fblink" placeholder="FaceBookLink" class="form-control" v-model="company.fblink">
									</div>

								</div>

								<div class="modal-footer">

									<button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-time"></i>Close</button>

									<button type="button" class="btn btn-success" @click="createcompany()"><i class="fa fa-save"></i>Save</button>
								</div>

							</div>
						</div>
					</div>
					<!-- add company end -->

					<!-- detial company start -->
					<div class="modal fade" tabindex="1" role="dialog" id="detail_company">
						<div class="modal-dialog modal-lg" role="document">
							<div class="modal-content">
								<div class="modal-header">
									<h4 class="modal-title"> {{detail_company.name}} </h4>
									<button type="button" data-dismiss="modal" class="close" arial-label="Close"><i arial-hidden='true'></i>&times;</button>
								</div>

								<div class="modal-body offset-1">

									<div class="row mb-2">
										<div class="col-md-4 ">
											<img :src="getImage(detail_company.logo)" class="img-responsive shadow" width="100" height="100" >
										</div>
										<div class="col-md-8">
											<div class="row">
					                            <div class="col-md-6">
					                              <b> HR Name </b>
					                            </div>
					                            <div class="col-md-6">
					                              <p> {{detail_company.hrname}} </p>
					                            </div>
					                        </div>

					                        <div class="row">
					                            <div class="col-md-6">
					                              <b> Phone Number </b>
					                            </div>
					                            <div class="col-md-6">
					                              <p> {{detail_company.phno}} </p>
					                            </div>
					                        </div>

					                        <div class="row">
					                            <div class="col-md-6">
					                              <b> Email </b>
					                            </div>
					                            <div class="col-md-6">
					                              <p> {{detail_company.email}} </p>
					                            </div>
					                        </div>

										</div>
									</div>

									<div class="row mb-2">
										<div class="col-md-4">
											Address
										</div>
										<div class="col-md-8">
											{{detail_company.address}}
										</div>
									</div>

									<div class="row mb-2">
										<div class="col-md-4">
											Township
										</div>
										<div class="col-md-8">
											{{detail_company.township_name}}
										</div>
									</div>

									<div class="row mb-2">
										<div class="col-md-4">
											Facebook Link
										</div>
										<div class="col-md-8">
											<a :href="detail_company.fblink" target="_blank"> {{detail_company.name}} </a>
										</div>
									</div>

									<div class="row mb-2">
										<div class="col-md-4">
											Remark
										</div>
										<div class="col-md-8">
											{{detail_company.remark}}
										</div>
									</div>

								</div>

								<div class="modal-footer">
									<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>
					<!-- detail company end -->

					<!-- update company start -->
					<div class="modal fade" tabindex="1" role="dialog" id="update_Company">
						<div class="modal-dialog modal-lg" role="document">
							<div class="modal-content">

								<div class="modal-header">
									<h3 class="modal-title">Update Company</h3>
									<button class="close" type="button" data-dismiss="modal" arial-label="Close"><span arial-hidden="true">&times;</span></button>
								</div>

								<div class="modal-body">

									<input type="hidden" class="form-control" v-model="update_company.user_id" name="user_id" id="user_id">
									
									<div class="form-group">
										<label for="names">Photo</label>
										<nav>
				                            <div class=" nav nav-tabs nav-justified">
				                              <a href="#old" class="nav-item nav-link active" data-toggle="tab">Old Photo</a>
				                              <a href="#newimage" class="nav-item nav-link" data-toggle="tab" >Upload New Photo</a>
				                              
				                            </div>
				                         </nav>

								     <div class="tab-content container my-3">
			                            <div class="tab-pane fade show active rounded" id="old">
			                              <img :src="getImage(update_company.logo)" class="img-responsive" height="90" width="90">
			                              <input type="hidden" name="oldimage" :value="update_company.logo" id="oldimage">
			                              {{company.logo}}
			                            </div>        
			                            <div class="tab-pane fade" id="newimage">
			                              
			                              <div class="col-md-6">
			                                  <input type="file" v-on:change="onImageChange" class="form-control-file inputfile">
			                              </div>
			                            </div>
			                            
				                     </div>
										
									</div>

									<div class="form-group">
										<label for="names">Company Name</label>
										<input type="text" name="name" id="name" class="form-control" placeholder="Name" v-model="update_company.name">
									</div>

									<div class="form-group">
										<label for="hrname">HrName</label>
										<input type="text" name="hrname" id="hrname" class="form-control" placeholder="HrName" v-model="update_company.hrname">
									</div>

									<div class="form-group">
										<label for="phno">Phone NO.</label>
										<input type="number" name="phno" id="phno" class="form-control" placeholder="Phone Number" v-model="update_company.phno">
									</div>

									<div class="form-group">
										<label for="email">Email</label>
										<input type="email" name="email" id="email" placeholder="Email" class="form-control" v-model="update_company.email">
									</div>

									<div class="form-group">
										<label for="address">Address</label>

										<textarea type="text" placeholder="Address" class="form-control"
                                  			v-model="update_company.address"></textarea>

									</div>

									<div class="form-group">
										<label for="remark">Remark</label>

										<textarea type="text" placeholder="Remark" class="form-control"
                                  			v-model="update_company.remark"></textarea>

									</div>

									<div class="form-group">
										<label for="email">Township</label>

										<select v-model="update_company.township_id" class="form-control" id="township_id" name="township_id">

											<option v-for="(township, index) in townships" :value="township.id" :selected="township.id == update_company.township_id"> {{ township.name }} </option>

										</select>
									</div>

									<div class="form-group">
										<label for="fblink">FBLink</label>
										<input type="text" name="fblink" id="fblink" placeholder="FaceBookLink" class="form-control" v-model="update_company.fblink">
									</div>

								</div>

								<div class="modal-footer">

									<button type="button" class="btn btn-default" data-dismiss="modal"><i class="fa fa-time"></i>Close</button>

									<button type="button" class="btn btn-success" @click="Update_Company_detail()"><i class="fa fa-save"></i>Update</button>
								</div>

							</div>
						</div>
					</div>
					<!-- update company end -->

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
			return {
				company:{
					
					name:'',
				},
				logo:'',
				townships:[],
				errors:[],
				message:'',
				emialerror:'',
				noti:false,
				company:[],
				township_id:'',
				detail_company:{},
				update_company:{},
			}

		},



		mounted(){
			this.readCompany();
			this.readTownship();
		},

		methods:{

			alertmessage()
			{	
				setTimeout(function(){
					$(".alertbox").hide()},2000);
				
			},

			// addcompany:function()
			// {
			// 	item=this.noti;
			// 	this.$http.post('api/setup/company',item);
			// 	// this.noti=true;
			// },
	
			initAddcompany()
			{
				$("#add-company").modal("show");
			},

			 getImage(logo){
              return "mmit_image/company/" + logo;

            },

			onImageChange(e) {
                    let files = e.target.files || e.dataTransfer.files;
                    let logo=[];
                    if (!files.length)
                         return;
                    this.createImage(files[0]);
                    console.log(files);
            },
            createImage(file) {
                let reader = new FileReader();
                let vm = this;
                reader.onload = (e) => {
                    vm.logo = e.target.result;
                };
                reader.readAsDataURL(file);
                console.log(reader);
            },

            readCompany()
				{
					axios.get('/api/setup/company')
					.then(response=>{
						this.company=response.data.company;
						this.alertmessage();
						
					});
				},

            
			readTownship()
			{
				axios.get('/api/setup/township')
				.then(response=>{
					// this.valuename=response.data.controllername
					this.townships=response.data.townships;

					/*console.log(response.data.townships[0]);*/
				});
			},

			createcompany()
			{  this.noti=false;
				axios.post('/api/setup/company',{
					logo:this.logo,
					name:this.company.name,
					hrname:this.company.hrname,
					phno:this.company.phno,
					email:this.company.email,
					address:this.company.address,
					remark:this.company.remark,
					township_id:this.township_id,
					fblink:this.company.fblink,
				})

				.then(response=>{
					
					this.company.push(response.data.company);
					this.noti=true;
					this.message="Company has been successfully added";
					$("#add-company").modal('hide');
					this.reset();
					this.readCompany();
					
				})

				.catch(error=>{
					this.errors=[];
					if (error.response.data.errors && error.response.data.errors.logo) {
						this.errors.push('The Logo field is required');
					}

					if (error.response.data.errors && error.response.data.errors.name) {
						this.errors.push('The Name field is required');
					}

					if (error.response.data.errors && error.response.data.errors.hrname) {
						this.errors.push('The Hrname field is required');
					}

					if (error.response.data.errors && error.response.data.errors.phno) {
						this.errors.push('The Phone Number field is required');
					}

					if (error.response.data.errors && error.response.data.errors.email) {
						this.errors.push(error.response.data.errors.email[0]);
					}

					if (error.response.data.errors && error.response.data.errors.address) {
						this.errors.push('The Address field is required');
					}

					if (error.response.data.errors && error.response.data.errors.remark) {
						this.errors.push('The Remark field is required');
					}

					if (error.response.data.errors && error.response.data.errors.township_id) {
						this.errors.push('The Township field is required');
					}

					if (error.response.data.errors && error.response.data.errors.fblink) {
						this.errors.push('The fblink field is required');
					}
				})

				},

			

			reset()
				{
					this.company='';
					this.logo='';
					this.township_id='';
					this.errors='';
				},

			detailCompany(index)
				{
					$("#detail_company").modal("show");
					this.detail_company=this.company[index];
				},

			deleteCompany(index)
				{
					this.noti=false;
					let conf = confirm("Are U sure To Delete??");
					if(conf === true)
					{
						axios.delete('/api/setup/company/'+this.company[index].id)
							.then(response=>{
								this.noti=true;
								this.message="Successfully Delete";
								this.company.splice(index,1);
								this.readCompany();
							})
							.catch(error=>{

							});
					}	

						

				},

			updataCompany(index)
				{
					this.errors = [];
					$("#update_Company").modal("show");
					this.update_company=this.company[index];
					// var clonedata=this.company.slice(index);
					this.update_company=JSON.parse(JSON.stringify(this.company[index]));
				},

			Update_Company_detail()
				{this.noti=false;
					axios.patch('/api/setup/company/' + this.update_company.id,{
						user_id: this.update_company.user_id,
						logo: this.logo,
						oldimage:this.update_company.logo,
						name: this.update_company.name,
						hrname: this.update_company.hrname,
						phno: this.update_company.phno,
						email: this.update_company.email,
						address: this.update_company.address,
						remark: this.update_company.remark,
						township_id: this.update_company.township_id,
						fblink: this.update_company.fblink,
					})

					.then(response =>{
						this.noti=true,
						this.message="Company has been successfully update!!";
						$("#update_Company").modal("hide");
						this.reset();
						this.readTownship();
						this.readCompany();

					})



					.catch(error=>{
					this.errors=[];
					if (error.response.data.errors && error.response.data.errors.logo) {
						this.errors.push('The Logo field is required');
					}

					if (error.response.data.errors && error.response.data.errors.name) {
						this.errors.push('The Name field is required');
					}

					if (error.response.data.errors && error.response.data.errors.hrname) {
						this.errors.push('The Hrname field is required');
					}

					if (error.response.data.errors && error.response.data.errors.phno) {
						this.errors.push('The Phone Number field is required');
					}

					if (error.response.data.errors && error.response.data.errors.email) {
						this.errors.push('The Email field is required');
					}

					if (error.response.data.errors && error.response.data.errors.address) {
						this.errors.push('The Address field is required');
					}

					if (error.response.data.errors && error.response.data.errors.remark) {
						this.errors.push('The Remark field is required');
					}

					if (error.response.data.errors && error.response.data.errors.township_id) {
						this.errors.push('The Township field is required');
					}

					if (error.response.data.errors && error.response.data.errors.fblink) {
						this.errors.push('The fblink field is required');
					}
				})

				},

			}	
	}

</script>