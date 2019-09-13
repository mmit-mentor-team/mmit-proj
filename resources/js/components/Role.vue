<template>

  <div class="container">
    <div class="row">
      <div class="col-md-12">

        <div class="alert alert-success alert-dismissible fade show" role="alert" v-if="add_noti">
            
            <strong>SUCCESS!</strong> {{ message }}
            
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
        </div>

        <div class="alert alert-warning alert-dismissible fade show" role="alert" v-if="update_noti">
            
            <strong>SUCCESS!</strong> {{ message }}
            
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
        </div>

        <div class="alert alert-danger alert-dismissible fade show" role="alert" v-if="delete_noti">
            
            <strong>SUCCESS!</strong> {{ message }}
            
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
        </div>

        <div class="card shadow mb-4">
          <div class="card-header py-3">
            
            <h3 class="m-0 font-weight-bold text-primary"> Roles List

              <button @click="initAddRole()" class="btn btn-primary float-right ">
                <i class="fa fa-plus"></i> Add New Role
              </button>

            </h3>

          </div>

          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered table-hover" id="dataTable" cellspacing="0" v-if="roles.length > 0">
                <thead class="bg-primary text-white">
                  <tr class="text-center">
                    <th> No </th>
                    <th> Role Title </th>
                    <th> Action </th>
                  </tr>
                </thead>
                <tbody>
                  <tr v-for="(role, index) in roles">
                    <td> {{ index + 1 }} </td>
                    <td> {{ role.name }} </td>
                    <td> 
                      <button @click="initUpdate(role.id, role.name)" class="btn btn-warning btn-xs">
                        <i class="fas fa-edit"></i> Edit
                      </button>
                      
                      <button @click="deleteRole(index)" class="btn btn-danger btn-xs">
                        <i class="fas fa-trash-alt"></i>  Delete
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
    
    <div class="modal fade" tabindex="-1" role="dialog" id="add_role_model">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Add New Role</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
            
          <div class="modal-body">
            <div class="alert alert-danger" v-if="errors.length > 0">
              <ul>
                  <li v-for="error in errors">{{ error }}</li>
              </ul>
            </div>
            
            <div class="form-group">
              <label for="names">Name:</label>
                <input type="text" name="name" id="name" placeholder="Role Name" class="form-control" v-model="role.name">
            </div>
          </div>
          
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">
              <i class="fa fa-times"></i> Close
            </button>
            
            <button type="button" @click="createRole" class="btn btn-primary">
              <i class="fa fa-save pr-2">  </i> Save
            </button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <div class="modal fade" tabindex="-1" role="dialog" id="update_role_model">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Update Role</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
          
          <div class="modal-body">
            <div class="alert alert-danger" v-if="errors.length > 0">
              <ul>
                <li v-for="error in errors">{{ error }}</li>
              </ul>
            </div>
            
            <div class="form-group">
              <label>Name:</label>
                <input type="text" placeholder="Role Name" class="form-control" v-model="update_role.name">
            </div>
            
          </div>
              
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">
              <i class="fa fa-times"></i> Close
            </button>
                
            <button type="button" @click="updateRole" class="btn btn-primary">
              <i class="fa fa-upload"></i> Update
            </button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
  </div>
</template>

<script>


   export default {
       data(){
           return {
               role: {
                   name: ''
               },
               errors: [],
               add_noti:false,
               update_noti:false,
               delete_noti:false,
               message:'',
               roles: [],
               update_role: {}
           }
       },
       mounted()
       {
          $('#dataTable').DataTable(this.readRoles());
       },
       methods: {
           deleteRole(index)
           {
              let conf = confirm("Do you ready want to delete this role?");
              if (conf === true) 
              {
                axios.delete('/api/setup/role/' + this.roles[index].id)
                       .then(response => {
                           this.roles.splice(index, 1);
                           this.delete_noti=true;
                           this.message="Existing role has been sucessfully deleted!!";
                       })
                       .catch(error => {
                       });
              }
           },
           initAddRole()
           {
               $("#add_role_model").modal("show");
           },
           createRole()
           {
               axios.post('/api/setup/role', {
                   name: this.role.name,
               })
                   .then(response => {
                       this.reset();
                       this.roles.push(response.data.role);
                       this.add_noti=true;
                       this.message="New role has been sucessfully added!!";
                       $("#add_role_model").modal("hide");
                       this.readRoles();
                   })
                   .catch(error => {
                       this.errors = [];
                       if (error.response.data.errors && error.response.data.errors.name) {
                           this.errors.push(error.response.data.errors.name[0]);
                       }
                   });
           },
           reset()
           {
               this.role.name = '';
           },
           readRoles()
           {
               axios.get('/api/setup/role')
                   .then(response => {
                       this.roles = response.data.roles;
                       console.log(this.roles);
                   });
           },
           initUpdate(val_id, val_name)
           {
               this.errors = [];
               $("#update_role_model").modal("show");
               this.update_role.id = val_id;
               this.update_role.name = val_name;
           },
           updateRole()
           {
               axios.patch('/api/setup/role/' + this.update_role.id, {
                   name: this.update_role.name,
               })
                   .then(response => {
                       this.update_noti=true;
                       this.message="Existing role has been sucessfully updated!!";
                       $("#update_role_model").modal("hide");
                       this.readRoles();
                   })
                   .catch(error => {
                       this.errors = [];
                       if (error.response.data.errors.name) {
                           this.errors.push(error.response.data.errors.name[0]);
                       }
                   });
           }
       }
   }
</script>
