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

            <h3 class="m-0 font-weight-bold text-primary"> Course List

              <button @click="initAddCourse()" class="btn btn-primary float-right ">
                <i class="fa fa-plus"></i> Add New Course
              </button>

            </h3>
            
            
          </div>

          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered table-hover" id="table_id" cellspacing="0" v-if="courses.length>0">
                <thead class="bg-primary text-white">
                  <tr class="text-center">
                    <th> No </th>
                    <th> Name </th>
                    <th> Fees </th>
                    <th> Action </th>
                  </tr>
                </thead>
                <tbody>
                  <tr v-for="(course, index) in courses">
                    <td> {{ index + 1 }} </td>
                    <td> 
                      {{ course.name }}
                      ( {{ course.location.city.name }} )
                    </td>
                    <td>
                      {{ course.fees }}
                    </td>
                    <td> 
                      <button @click="initUpdate(index)" class="btn btn-warning">
                        <i class="fas fa-edit"></i> Edit
                      </button>
                      
                      <button @click="deleteCourse(index)" class="btn btn-danger">
                        <i class="fas fa-trash-alt"></i> Delete
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
    
    <div class="modal fade" tabindex="-1" role="dialog" id="add_course_model">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Add New Course</h4>
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
                <input type="text" name="name" id="name" placeholder="Course Name" class="form-control" v-model="course.name">
            </div>
            <div class="form-group">
              <label for="names">Fees:</label>
                <input type="text" name="fees" id="fees" placeholder="Course Fees" class="form-control" v-model="course.fees">

            </div>
            <div class="form-group">
              <label for="names">Location:</label>
                
                <select class="form-control" name="location_id" v-model="location_id" id="locationid">
                  <option disabled value="">Please select one</option>
                  <option v-for="(location, index) in locations" :value="location.id" > {{ location.name }}  </option>
                </select>
            </div>
          </div>
          
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">
              <i class="fa fa-times"></i>  Close
            </button>
            
            <button type="button" @click="createCourse" class="btn btn-primary">
              <i class="fa fa-save pr-2"> </i> Save
            </button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <div class="modal fade" tabindex="-1" role="dialog" id="update_course_model">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Update Course</h4>
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
                <input type="text" placeholder="Course Name" class="form-control" v-model="update_course.name">
            </div>
            <div class="form-group">
              <label for="names">Fees:</label>
                <input type="text" placeholder="Course Fees" class="form-control" v-model="update_course.fees">

            </div>
            <div class="form-group">
              <label for="names">Location:</label>
                <select class="form-control"  name="location_id" v-model="update_course.locationid" id="locationid">
                  
                  <option v-for="(location, index) in locations" :value="location.id" :selected="location.id == update_course.locationid"> {{ location.name }}  </option>
                </select>
            </div>
            
          </div>
              
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">
              <i class="fa fa-times"></i> Close
            </button>
                
            <button type="button" @click="updateCourse" class="btn btn-primary">
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
               course: {
                   name: ''
               },
               locations:[],
               location_id: '',
               errors: [],
               add_noti:false,
               update_noti:false,
               delete_noti:false,
               message:'',
               courses: [],
               update_course: {}
           }
       },
       mounted()
       {
           this.readCourses();
           this.readLocations();

       },
       methods: {
           deleteCourse(index)
           {
               let conf = confirm("Do you ready want to delete this Course?");
               if (conf === true) {
                   axios.delete('api/setup/course/' + this.courses[index].id)
                       .then(response => {
                           this.courses.splice(index, 1);
                           this.delete_noti=true;
                           this.message="Existing course has been sucessfully deleted!!";
                       })
                       .catch(error => {
                       });
               }
           },
           initAddCourse()
           {
               $("#add_course_model").modal("show");
           },
           createCourse()
           {
               axios.post('api/setup/course', {
                   name: this.course.name,
                   fees: this.course.fees,
                   location: this.location_id,

               })
                   .then(response => {
                       this.reset();
                       this.courses.push(response.data.course);
                       this.add_noti=true;
                       this.message="New course has been sucessfully added!!";
                       $("#add_course_model").modal("hide");
                       this.readCourses();
                       this.readLocations();

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
               this.course.name = '';
           },
           readCourses()
           {
               axios.get('api/setup/course')
                   .then(response => {
                       this.courses = response.data.courses;
                   });
           },
           readLocations()
           {
               axios.get('api/setup/location')
                   .then(response => {
                       this.locations = response.data.locations;
                   });
           },
           initUpdate(index)
           {
               this.errors = [];
               $("#update_course_model").modal("show");
               this.update_course = this.courses[index];
           },
           updateCourse()
           {
               axios.patch('api/setup/course/' + this.update_course.id, {
                   name: this.update_course.name,
                   fees: this.update_course.fees,
                   location: this.update_course.locationid,

               })
                   .then(response => {
                       this.update_noti=true;
                       this.message="Existing course has been sucessfully updated!!";
                       $("#update_course_model").modal("hide");
                       this.readCourses();
                       this.readLocations();
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