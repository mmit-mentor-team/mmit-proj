<template>
   <div class="container">
      
    <ul class="nav nav-tabs" id="myTab" role="tablist">
      <li class="nav-item">
        <a class="nav-link active" id="activestaff-tab" data-toggle="tab" href="#activestaff" role="tab" aria-controls="activestaff" aria-selected="true"> Active Staff List </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" id="leavestaff-tab" data-toggle="tab" href="#leavestaff" role="tab" aria-controls="leavestaff" aria-selected="false"> Leave Staff List </a>
      </li>
    </ul>

    <div class="tab-content mt-3" id="myTabContent">
      <div class="tab-pane fade show active" id="activestaff" role="tabpanel" aria-labelledby="activestaff-tab">

        <div class="row">
           <div class="col-md-12">
            
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h3 class="m-0 font-weight-bold text-primary"> Staff List

                    <button @click="initAddStaff()" class="btn btn-primary float-right">
                    <i class="fa fa-plus" ></i> Add New Staff
                  </button>

                  </h3>
                  
                  
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-bordered table-hover" v-if="staffs.length > 0">
                        <thead class="bg-primary text-white">
                          <tr class="text-center">
                            <th> No. </th>
                            <th> Name </th>
                            <th> Join of Date </th>
                            <th> Position </th>
                            <th> Action </th>
                          </tr>
                        </thead>
                        <tbody>
                          
                            <tr v-for="(staff, index) in staffs">
                              <td>{{ index + 1 }}</td>
                              <td> {{ staff.username }} </td>
                              <td> {{ staff.joineddate }} </td>
                              <td> {{ staff.rolename }} </td>
                              <td>
                                <button @click="initDetail(index)" class="btn btn-info btn-xs text-white">
                                  <i class="fa fa-eye"></i> Detail
                                </button>

                                <button @click="initUpdate(index)" class="btn btn-warning btn-xs">
                                  <i class="fa fa-edit"></i> Edit
                                </button>
                       
                                <button @click="deleteStaff(index)" class="btn btn-danger btn-xs">
                                  <i class="fa fa-signout"></i> Leave
                                </button>

                              </td>
                             </tr>
                             </tbody>
                      </table>
                    </div>
                  </div>
                </div>
           </div>
        </div>
        
      </div>
      <div class="tab-pane fade" id="leavestaff" role="tabpanel" aria-labelledby="leavestaff-tab">

        <div class="row">
           <div class="col-md-12">
            
              <div class="card shadow mb-4">
                <div class="card-header py-3">
                  <h3 class="m-0 font-weight-bold text-primary"> Leave Staff List </h3>
                  
                  
                  </div>
                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-bordered table-hover" v-if="staffs.length > 0">
                        <thead class="bg-primary text-white">
                          <tr class="text-center">
                            <th> No. </th>
                            <th> Name </th>
                            <th> Join of Date </th>
                            <th> Leave Date </th>
                            <th> Position </th>
                            <th> Action </th>
                          </tr>
                        </thead>
                        <tbody>
                          
                            <tr v-for="(leavestaff, index) in leavestaffs">
                              <td>{{ index + 1 }}</td>
                              <td> {{ leavestaff.username }} </td>
                              <td> {{ leavestaff.joineddate }} </td>
                              <td> {{ leavestaff.leavedate }} </td>
                              <td> {{ leavestaff.rolename }} </td>
                              <td>
                                <button @click="initDetail(index)" class="btn btn-info btn-xs text-white">
                                  <i class="fa fa-eye"></i> Detail
                                </button>
                              </td>
                             </tr>
                             </tbody>
                      </table>
                    </div>
                  </div>
                </div>
           </div>
        </div>
        
      </div>
    </div>
       <div class="modal fade" tabindex="-1" role="dialog" id="add_staff_model">
           <div class="modal-dialog modal-lg" role="document">
               <div class="modal-content">
                   <div class="modal-header">
                      <h4 class="modal-title">Add New Staff</h4>
                       <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   </div>
                   <div class="modal-body">
                       <div class="alert alert-danger" v-if="errors.length > 0">
                        <ul>
                            <li v-for="error in errors">{{ error }}</li>
                        </ul>
                      </div>
                      <div class="form-group">
                        <label for="name"> Name:</label>
                        <input type="text" name="name" id="name" placeholder="Staff Name" class="form-control" v-model="staff.name">
                      </div>

                      <div class="form-group">
                           <label for="email">Email:</label>
                           <input type="email" name="email" id="email" placeholder="Login Email" class="form-control"
                                  v-model="staff.email">
                      </div>

                      <div class="form-group">
                           <label for="loc">Role:</label>
                           <select v-model="role_id" class="form-control" id="roleid" name="role_id">
                             <option disabled value="">Please select Role</option>
                             <option v-for="(role, index) in roles" :value="role.id" > {{ role.name }} </option>
                           </select>
                           
                       </div>

                      <div class="form-group">
                        <label class="d-block">Permission:</label>
                        
                          <div class="custom-control custom-checkbox custom-control-inline" v-for="(permission, index) in permissions">
                            <input type="checkbox" :id="`customRadioInline${permission.id}`" name="customRadioInline" class="custom-control-input" :value="permission.id" v-model="checkedPermissions">
                            <label class="custom-control-label" :for="`customRadioInline${permission.id}`" >{{permission.name}}</label>
                        </div>
                          

                      </div>

                       <div class="form-group">
                           <label for="names">Date of Birth:</label>
                           <input type="date" name="dob" id="dob" placeholder="Date of Birth" class="form-control"
                                  v-model="staff.dob">
                       </div>
                        <div class="form-group">
                           <label for="names">Father Name:</label>
                           <input type="text" name="fname" id="fname" placeholder="Father Name" class="form-control"
                                  v-model="staff.fname">
                       </div>
                      <div class="form-group">
                           <label for="names">NRC NO:</label>
                           <input type="text" name="nrc" id="nrc" placeholder="NRC No" class="form-control"
                                  v-model="staff.nrc">
                      </div>

                      <div class="form-group">
                           <label for="names">Phone NO:</label>
                           <input type="text" name="phone" id="phone" placeholder="Phone No" class="form-control"
                                  v-model="staff.phone">
                      </div>
       
                        <div class="form-group">
                           <label for="names">Photo:</label>
                           <div class="col-md-3" v-if="image">
                              <img :src="image" class="img-responsive" height="90" width="90">
                           </div>
                          <div class="col-md-6">
                              <input type="file" multiple v-on:change="onImageChange" class="form-control">
                          </div>
                       </div>
                        <div class="form-group">
                           <label for="names">Join Date:</label>
                           <input type="date" name="jdate" id="jdate" placeholder="Join Date" class="form-control"
                                  v-model="staff.jdate">
                       </div>
                        
                        <div class="form-group">
                           <label for="loc">Department:</label>
                           <select v-model="location_id" class="form-control" id="locationid" name="location_id">
                             <option disabled value="">Please select one</option>
                             <option v-for="(location, index) in locations" :value="location.id" > {{ location.name }} </option>
                           </select>
                           
                       </div>
                   </div>
                   <div class="modal-footer">
                       <button type="button" class="btn btn-default" data-dismiss="modal">
                        <i class="fa fa-times"></i> Close
                       </button>
                       <button type="button" @click="createStaff" class="btn btn-primary">
                        <i class="fa fa-save"></i> Save
                       </button>
                   </div>
               </div>
           </div>
       </div>
       <div class="modal fade" tabindex="-1" role="dialog" id="update_staff_model">
           <div class="modal-dialog modal-lg" role="document">
               <div class="modal-content">
                   <div class="modal-header">

                      <h4 class="modal-title">{{ update_staff.username }}</h4>
                      <div class="alert alert-success float-left col-md-4 offset-2" v-if="noti">
                          {{message}}
                  </div>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   </div>
                   <div class="modal-body">
                       <div class="alert alert-danger" v-if="errors.length > 0">
                           <ul>
                               <li v-for="error in errors">{{ error }}</li>
                           </ul>
                       </div>
                      
                       <div class="form-group">
                            <label for="names"> Role :</label>
                              <select class="form-control"  name="role_id" v-model="update_staff.roleid" id="locationid">
                  
                              <option v-for="(role, index) in roles" :value="role.id" :selected="role.id == update_staff.roleid"> {{ role.name }}  </option>
                             </select>
                        </div>
                        <div class="form-group">
                        <label class="d-block">Permission:</label>
                       <!--  <p  v-for="(user_permission, index) in user_permissions">
                              {{user_permission.id}}</p> -->
                          <div class="custom-control custom-checkbox custom-control-inline" v-for="(permission, index) in permissions">
                           
                            <input type="checkbox" :id="`updated_customRadioInline${permission.id}`" name="updated_customRadioInline" class="custom-control-input" :value="permission.id" v-model="updated_checkedPermissions" v-for="(user_permission, index) in user_permissions">
                            <label class="custom-control-label" :for="`updated_customRadioInline${permission.id}`" >{{permission.name}}</label>

                        </div>
                          

                      </div>

                       <!-- {{update_staff}} -->
                       <input type="hidden" class="form-control" v-model="update_staff.userid" name="userid" id="userid">
                       <div class="form-group">
                           <label>Date of Birth</label>
                           <input type="text" placeholder="Date of Birth" class="form-control"
                                  v-model="update_staff.dob" name="dob" id="dob">
                       </div>
                       <div class="form-group">
                           <label>Father Name:</label>
                           <input type="text" placeholder="Father Name" class="form-control"
                                  v-model="update_staff.fathername" name="fname" id="fname">
                       </div>
                       <div class="form-group">
                           <label>NRC:</label>
                           <input type="text" placeholder="NRC No" class="form-control"
                                  v-model="update_staff.nrc" name="nrcno" id="nrcno">
                       </div>
                       <div class="form-group">
                           <label>Photo:</label>
                           <nav>
                            <div class=" nav nav-tabs nav-justified">
                              <a href="#old" class="nav-item nav-link active" data-toggle="tab">Old Photo</a>
                              <a href="#newimage" class="nav-item nav-link" data-toggle="tab" >Upload New Photo</a>
                              
                            </div>
                          </nav>
                          <div class="tab-content container my-3">
                            <div class="tab-pane fade show active rounded" id="old">
                              <img :src="getImage(update_staff.photo)" class="img-responsive" height="90" width="90">
                              <input type="hidden" name="oldimage" :value="update_staff.photo" id="oldimage">
                              {{staff.photo}}
                            </div>        
                            <div class="tab-pane fade" id="newimage">
                              <div class="col-md-3" v-if="image">
                                <!-- <img :src="image" class="img-responsive" height="90" width="90"> -->
                              </div>
                              <div class="col-md-6">
                                  <input type="file" v-on:change="onImageChange" class="form-control">
                              </div>
                            </div>
                            
                          </div>
                          <!--  <input type="text" placeholder="Photo" class="form-control"
                                 v-model="update_staff.photo"> -->
                       </div>
                       <div class="form-group">
                           <label>Join Date:</label>
                           <input type="date" placeholder="Join Date" class="form-control"
                                  v-model="update_staff.joineddate" name="jdate" id="jdate">
                       </div>
                       <div class="form-group">
                           <label>Leave Date:</label>
                           <input type="date" placeholder="Leave Date" class="form-control"
                                  v-model="update_staff.leavedate" name="j" id="fname">
                       </div>
                       
                       <div class="form-group">
                            <label for="names"> Location :</label>
                              <select class="form-control"  name="location_id" v-model="update_staff.staff_locationid" id="locationid">
                  
                              <option v-for="(location, index) in locations" :value="location.id" :selected="location.id == update_staff.staff_locationid"> {{ location.name }}  </option>
                             </select>
                        </div>
                   </div>
                   <div class="modal-footer">
                       <button type="button" class="btn btn-default" data-dismiss="modal">
                        <i class="fa fa-times"></i> Close
                       </button>
                       <button type="button" @click="updateStaff" class="btn btn-primary">
                        <i class="fa fa-upload"></i> Update
                       </button>
                   </div>
               </div>
           </div>
       </div>
       <div class="modal fade" tabindex="-1" role="dialog" id="detail_staff_model">
           <div class="modal-dialog modal-lg" role="document">
               <div class="modal-content">
                   <div class="modal-header">
                      <h4 class="modal-title"> {{detail_staff.username}} </h4>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   </div>
                   <div class="modal-body col-md-8 offset-1">
                       
                      <div class="row">
                        <div class="col-md-4">
                          <img :src="getImage(detail_staff.photo)" class="img-responsive img-fluid" height="170" width="150">

                        </div>

                        <div class="col-md-8 pt-3">

                          <div class="row">
                            <div class="col-md-6">
                              <b> Position </b>
                            </div>
                            <div class="col-md-6">
                              <p> {{detail_staff.rolename}} </p>
                            </div>
                          </div>

                          <div class="row">
                            <div class="col-md-6">
                              <b> Join Date </b>
                            </div>
                            <div class="col-md-6">
                              <p> {{detail_staff.joineddate}} </p>
                            </div>
                          </div>

                          <div class="row">
                            <div class="col-md-6">
                              <b> Leave Date </b>
                            </div>
                            <div class="col-md-6">
                              <p v-if="detail_staff.status == 0"> Present </p>
                              <p v-if="detail_staff.status != 0"> 
                                {{detail_staff.leavedate}}
                              </p>
                            </div>
                          </div>


                        </div>
                      </div>

                      <div class="row mt-5">
                        <div class="col-md-12">
                          
                          <div class="row mt-3">
                            <div class="col-md-4">
                              Date of Birth
                            </div>
                            <div class="col-md-8">
                              {{ detail_staff.dob }}
                            </div>
                          </div>

                          <div class="row mt-3">
                            <div class="col-md-4">
                              Father's Name
                            </div>
                            <div class="col-md-8">
                              {{ detail_staff.fathername }}
                            </div>
                          </div>

                          <div class="row mt-3">
                            <div class="col-md-4">
                              NRC
                            </div>
                            <div class="col-md-8">
                              {{ detail_staff.nrc }}
                            </div>
                          </div>

                          <div class="row mt-3">
                            <div class="col-md-4">
                              Email
                            </div>
                            <div class="col-md-8">
                              {{ detail_staff.useremail }}
                            </div>
                          </div>

                          <div class="row mt-3">
                            <div class="col-md-4">
                              Location Assign
                            </div>
                            <div class="col-md-8">
                              {{ detail_staff.locationname }}
                            </div>
                          </div>

                        </div>
                      </div>
                       
                   </div>
                   <div class="modal-footer">
                       <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                   </div>
               </div>
           </div>
       </div>
       <!-- /.modal-dialog -->
    </div>
</template>
<script>
   export default {
       data(){
           return {
               staff: {
                   fathername: '',
                   image:''
               },
               errors: [],
               noti:false,
               image:'',
               message:'',
               locations: [],
               roles:[],
               permissions:[],
               user_permissions:[],
               user_permission:[],
               location_id: '',
               role_id:'',
               staffs: [],
               leavestaffs : [],
               update_staff: {},
               detail_staff: {},
               checkedPermissions: [],
               updated_checkedPermissions:[]
           }
       },
       mounted()
       {
           this.readStaffs();
           this.readLocations();
           this.readRoles();
           this.readPermissions();

       },
       methods: {
        getImage(image){
              return "mmit_image/staff/" + image;
            },
            onImageChange(e) {
                    let files = e.target.files || e.dataTransfer.files;
                    if (!files.length)
                        return;
                    this.createImage(files[0]);
            },
            createImage(file) {
                let reader = new FileReader();
                let vm = this;
                reader.onload = (e) => {
                    vm.image = e.target.result;
                };
                reader.readAsDataURL(file);
            },
           deleteStaff(index)
           {
               let conf = confirm("Do you ready want to delete this staff?");
               if (conf === true) {
                   axios.delete('/api/setup/staff/' + this.staffs[index].id)
                       .then(response => {
                           this.staffs.splice(index, 1);
                           this.readStaffs();
                           this.readLocations();
                           this.readRoles();
                       })
                       .catch(error => {
                       });
               }
           },
           initAddStaff()
           {
               $("#add_staff_model").modal("show");
           },
           createStaff()
           {
               axios.post('/api/setup/staff', {
                   name: this.staff.name,
                   email:this.staff.email,
                   dob: this.staff.dob,
                   fname: this.staff.fname,
                   nrc: this.staff.nrc,
                   phone: this.staff.phone,
                   image: this.image,
                   jdate: this.staff.jdate,
                   ldate: this.staff.ldate,
                   location_id: this.location_id,
                   role_id:this.role_id,
                   permissions_id:this.checkedPermissions
               })
                   .then(response => {
                       this.reset();
                       this.staffs.push(response.data.staff);
                       this.noti=true;
                       this.message="Teacher has been sucessfully added!!";
                       $("#add_staff_model").modal("hide");
                       this.readStaffs();
                       this.readLocations();
                       this.readRoles();
                       /*console.log(response);
                       if (response.data.success) {
                     alert(response.data.success);
                   }*/
                   })
                   .catch(error => {
                       this.errors = [];
                       if (error.response.data.errors && error.response.data.errors.dob){
                           this.errors.push('The Date of Birth field is required');
                       }
                       if (error.response.data.errors && error.response.data.errors.fname){
                           this.errors.push('The Father Name field is required');
                       }
                       if (error.response.data.errors && error.response.data.errors.nrc){
                           this.errors.push('The NRC No field is required');
                       }
                       if (error.response.data.errors && error.response.data.errors.image){
                           this.errors.push('The Image field is required');
                       }
                       if (error.response.data.errors && error.response.data.errors.jdate){
                           this.errors.push('The Join Date field is required');
                       }
                       
                       if (error.response.data.errors && error.response.data.errors.location_id){
                           this.errors.push('The Location field is required');
                       }
                   });
           },
           reset()
           {
               this.staff.name = '';
           },
           readStaffs()
           {
               axios.get('/api/setup/staff')
                   .then(response => {
                       this.staffs = response.data.staffs;
                       this.leavestaffs = response.data.leavestaffs;
                       /*console.log(response.data.staffs[0]);*/
                   });
           },
           
           readLocations()
           {
               axios.get('/api/setup/location')
                   .then(response => {
                       this.locations = response.data.locations;
                   });
           },
           readRoles()
           {
               axios.get('/api/setup/role')
                   .then(response => {
                       this.roles = response.data.roles;
                   });
           },
           readPermissions()
           {
               axios.get('/api/setup/permission')
                   .then(response => {
                       this.permissions = response.data.permissions;
                   });
           },
           initUpdate(index)
           {
               this.errors = [];
               $("#update_staff_model").modal("show");
               this.update_staff = this.staffs[index];
               //console.log(this.staffs[index]);
               console.log(this.update_staff.userid);
               axios.post('/api/setup/staff', {
                   userid: this.update_staff.userid,
               })
               .then(response => {
                      var temp = [];
                       this.user_permissions = response.data.permissions;
                       for (var i = 0; i < this.user_permissions.length; i++) {
                         temp.push(this.user_permissions[i].id);
                       }

                       this.updated_checkedPermissions = temp;
                   })
           },
           initDetail(index)
           {
               this.errors = [];
               $("#detail_staff_model").modal("show");
               this.detail_staff = this.staffs[index];
           },
           updateStaff()
           {
               axios.patch('/api/setup/staff/' + this.update_staff.id, {
                   userid: this.update_staff.userid,
                   username : this.update_staff.username,
                   useremail : this.update_staff.useremail,
                   userpassword : this.update_staff.userpassword, 
                   dob: this.update_staff.dob,
                   fname: this.update_staff.fathername,
                   nrc: this.update_staff.nrc,
                   image: this.image,
                   oldimage: this.update_staff.photo,
                   jdate: this.update_staff.joineddate,
                   ldate: this.update_staff.leavedate,
                   location_id: this.update_staff.staff_locationid,
                   roleid : this.update_staff.roleid,
                   old_roleid : this.update_staff.userroleid,
                   permissions_id:this.updated_checkedPermissions
               })
                   .then(response => {
                      this.noti=true;
                      this.message='Staff has been updated sucessfully!!';
                       $("#update_staff_model").modal("hide");
                       this.readStaffs();
                       this.readLocations();
                       this.readRoles();
                   })
                   .catch(error => {
                       this.errors = [];
                       if (error.response.data.errors && error.response.data.errors.dob){
                           this.errors.push('The Date of Birth field is required');
                       }
                       if (error.response.data.errors && error.response.data.errors.fname){
                           this.errors.push('The Father Name field is required');
                       }
                       if (error.response.data.errors && error.response.data.errors.nrc){
                           this.errors.push('The NRC No field is required');
                       }
                       if (error.response.data.errors && error.response.data.errors.image){
                           this.errors.push('The Image field is required');
                       }
                       if (error.response.data.errors && error.response.data.errors.jdate){
                           this.errors.push('The Join Date field is required');
                       }
                       
                       if (error.response.data.errors && error.response.data.errors.location_id){
                           this.errors.push('The Location field is required');
                       }
                   });
           }
       }
   }
</script>
