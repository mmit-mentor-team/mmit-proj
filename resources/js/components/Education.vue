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
            
            <h3 class="m-0 font-weight-bold text-primary"> Education List

              <button @click="initAddEducation()" class="btn btn-primary float-right ">
                <i class="fa fa-plus"></i> Add New Education
              </button>

            </h3>

          </div>

          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered table-hover" id="dataTable" cellspacing="0" v-if="educations.length > 0">
                <thead class="bg-primary text-white">
                  <tr class="text-center">
                    <th> No </th>
                    <th> Name </th>
                    <th> Action </th>
                  </tr>
                </thead>
                <tbody>
                  <tr v-for="(education, index) in educations">
                    <td> {{ index + 1 }} </td>
                    <td> {{ education.name }} </td>
                    <td> 
                      <button @click="initUpdate(education.id, education.name)" class="btn btn-warning btn-xs">
                        <i class="fas fa-edit"></i> Edit
                      </button>
                      
                      <button @click="deleteEducation(index)" class="btn btn-danger btn-xs">
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
    
    <div class="modal fade" tabindex="-1" role="dialog" id="add_education_model">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Add New Education</h4>
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
                <input type="text" name="name" id="name" placeholder="Education Name" class="form-control" v-model="education.name">
            </div>
          </div>
          
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">
              <i class="fa fa-times"></i> Close
            </button>
            
            <button type="button" @click="createEducation" class="btn btn-primary">
              <i class="fa fa-save pr-2">  </i> Save
            </button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <div class="modal fade" tabindex="-1" role="dialog" id="update_education_model">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Update Education</h4>
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
                <input type="text" placeholder="Education Name" class="form-control" v-model="update_education.name">
            </div>
            
          </div>
              
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">
              <i class="fa fa-times"></i> Close
            </button>
                
            <button type="button" @click="updateEducation" class="btn btn-primary">
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
               education: {
                   name: ''
               },
               errors: [],
               add_noti:false,
               update_noti:false,
               delete_noti:false,
               message:'',
               educations: [],
               update_education: {}
           }
       },
       mounted()
       {
          $('#dataTable').DataTable(this.readEducations());
       },
       methods: {
           deleteEducation(index)
           {
              let conf = confirm("Do you ready want to delete this education?");
              if (conf === true) 
              {
                axios.delete('/api/setup/education/' + this.educations[index].id)
                       .then(response => {
                           this.educations.splice(index, 1);
                           this.delete_noti=true;
                           this.message="Existing education has been sucessfully deleted!!";
                       })
                       .catch(error => {
                       });
              }
           },
           initAddEducation()
           {
               $("#add_education_model").modal("show");
           },
           createEducation()
           {
               axios.post('/api/setup/education', {
                   name: this.education.name,
               })
                   .then(response => {
                       this.reset();
                       this.educations.push(response.data.education);
                       this.add_noti=true;
                       this.message="New education has been sucessfully added!!";
                       $("#add_education_model").modal("hide");
                       this.readEducations();
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
               this.education.name = '';
           },
           readEducations()
           {
               axios.get('/api/setup/education')
                   .then(response => {
                       this.educations = response.data.educations;
                   });
           },
           initUpdate(val_id, val_name)
           {
               this.errors = [];
               $("#update_education_model").modal("show");
               this.update_education.id = val_id;
               this.update_education.name = val_name;
           },
           updateEducation()
           {
               axios.patch('/api/setup/education/' + this.update_education.id, {
                   name: this.update_education.name,
               })
                   .then(response => {
                       this.update_noti=true;
                       this.message="Existing education has been sucessfully updated!!";
                       $("#update_education_model").modal("hide");
                       this.readEducations();
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
