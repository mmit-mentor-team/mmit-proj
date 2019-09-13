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
            
            <h3 class="m-0 font-weight-bold text-primary"> Permissions List

              <button @click="initAddPermission()" class="btn btn-primary float-right ">
                <i class="fa fa-plus"></i> Add New Permission
              </button>

            </h3>

          </div>

          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered table-hover" id="dataTable" cellspacing="0" v-if="permissions.length > 0">
                <thead class="bg-primary text-white">
                  <tr class="text-center">
                    <th> No </th>
                    <th> Permission Title </th>
                    <th> Action </th>
                  </tr>
                </thead>
                <tbody>
                  <tr v-for="(permission, index) in permissions">
                    <td> {{ index + 1 }} </td>
                    <td> {{ permission.name }} </td>
                    <td> 
                      <button @click="initUpdate(permission.id, permission.name)" class="btn btn-warning btn-xs">
                        <i class="fas fa-edit"></i> Edit
                      </button>
                      
                      <button @click="deletePermission(index)" class="btn btn-danger btn-xs">
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
    
    <div class="modal fade" tabindex="-1" role="dialog" id="add_permission_model">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Add New Permission</h4>
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
                <input type="text" name="name" id="name" placeholder="Permission Name" class="form-control" v-model="permission.name">
            </div>
          </div>
          
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">
              <i class="fa fa-times"></i> Close
            </button>
            
            <button type="button" @click="createPermission" class="btn btn-primary">
              <i class="fa fa-save pr-2">  </i> Save
            </button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <div class="modal fade" tabindex="-1" role="dialog" id="update_permission_model">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Update Permission</h4>
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
                <input type="text" placeholder="Permission Name" class="form-control" v-model="update_permission.name">
            </div>
            
          </div>
              
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">
              <i class="fa fa-times"></i> Close
            </button>
                
            <button type="button" @click="updatePermission" class="btn btn-primary">
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
               permission: {
                   name: ''
               },
               errors: [],
               add_noti:false,
               update_noti:false,
               delete_noti:false,
               message:'',
               permissions: [],
               update_permission: {}
           }
       },
       mounted()
       {
          $('#dataTable').DataTable(this.readPermissions());
       },
       methods: {
           deletePermission(index)
           {
              let conf = confirm("Do you ready want to delete this permission?");
              if (conf === true) 
              {
                axios.delete('/api/setup/permission/' + this.permissions[index].id)
                       .then(response => {
                           this.permissions.splice(index, 1);
                           this.delete_noti=true;
                           this.message="Existing permission has been sucessfully deleted!!";
                       })
                       .catch(error => {
                       });
              }
           },
           initAddPermission()
           {
               $("#add_permission_model").modal("show");
           },
           createPermission()
           {
               axios.post('/api/setup/permission', {
                   name: this.permission.name,
               })
                   .then(response => {
                       this.reset();
                       this.permissions.push(response.data.permission);
                       this.add_noti=true;
                       this.message="New permission has been sucessfully added!!";
                       $("#add_permission_model").modal("hide");
                       this.readPermissions();
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
               this.permission.name = '';
           },
           readPermissions()
           {
               axios.get('/api/setup/permission')
                   .then(response => {
                       this.permissions = response.data.permissions;
                       console.log(this.permissions);
                   });
           },
           initUpdate(val_id, val_name)
           {
               this.errors = [];
               $("#update_permission_model").modal("show");
               this.update_permission.id = val_id;
               this.update_permission.name = val_name;
           },
           updatePermission()
           {
               axios.patch('/api/setup/permission/' + this.update_permission.id, {
                   name: this.update_permission.name,
               })
                   .then(response => {
                       this.update_noti=true;
                       this.message="Existing permission has been sucessfully updated!!";
                       $("#update_permission_model").modal("hide");
                       this.readPermissions();
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
