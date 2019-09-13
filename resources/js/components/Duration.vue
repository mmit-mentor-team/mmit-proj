<template>

  <div class="container">
    <div class="row">
      <div class="col-md-12">

        <div class="alert alert-success alert-dismissible fade show alertnoti" role="alert" v-if="add_noti">
            
            <strong>SUCCESS!</strong> {{ message }}
            
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
        </div>

        <div class="alert alert-warning alert-dismissible fade show alertnoti" role="alert" v-if="update_noti">
            
            <strong>SUCCESS!</strong> {{ message }}
            
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
        </div>

        <div class="alert alert-danger alert-dismissible fade show alertnoti" role="alert" v-if="delete_noti">
            
            <strong>SUCCESS!</strong> {{ message }}
            
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
        </div>

        <div class="card shadow mb-4">
          <div class="card-header py-3">

            <h3 class="m-0 font-weight-bold text-primary"> Duration List

              <button @click="initAddDuration()" class="btn btn-primary float-right ">
                <i class="fa fa-plus"></i> Add New Duration
              </button>

            </h3>
            
            
          </div>

          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered table-hover" id="table_id" cellspacing="0" v-if="durations.length > 0">
                <thead class="bg-primary text-white">
                  <tr class="text-center">
                    <th> No </th>
                    <th> Day </th>
                    <th> Course </th>
                    <th> Time </th>
                    <th> During </th>
                    <th> Action </th>
                  </tr>
                </thead>
                <tbody>
                  <tr v-for="(duration, index) in durations">
                    <td> {{ index + 1 }} </td>
                    <td> {{ duration.days }} </td>
                    <td> 
                      {{ duration.course.name }} 
                      ( {{ duration.course.location.city.name }} ) 
                    </td>
                    <td> {{ duration.time }} </td>
                    <td> {{ duration.during }} </td>

                    <td> 
                      <button @click="initUpdate(index)" class="btn btn-warning btn-xs">
                        <i class="fas fa-edit"></i> Edit
                      </button>
                      
                      <button @click="deleteDuration(index)" class="btn btn-danger btn-xs">
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
    
    <div class="modal fade" tabindex="-1" role="dialog" id="add_duration_model">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Add New Duration</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
            
          <div class="modal-body">
            <div class="alert alert-danger" v-if="errors.length > 0">
              <ul>
                  <li v-for="error in errors">{{ error }}</li>
              </ul>
            </div>
            
            <div class="form-group">
              <label for="names">Time:</label>
                <input type="text" name="time" id="time" placeholder="Time" class="form-control" v-model="duration.time">
            </div>
            <div class="form-group">
              <label for="names">Day:</label>
                <input type="text" name="day" id="day" placeholder="Day" class="form-control" v-model="duration.days">
            </div>
            <div class="form-group">
              <label for="names">During:</label>
                <input type="text" name="during" id="during" placeholder="During" class="form-control" v-model="duration.during">
            </div>
            <div class="form-group">
              <label for="names">Course:</label>
                
                <select class="form-control" name="course_id" v-model="course_id" id="courseid">
                  <option disabled value="">Please select one</option>
                  <option v-for="(course, index) in courses" :value="course.id" > 
                    {{ course.name }} 

                    ( {{ course.location.city.name }} ) 

                  </option>
                </select>
            </div>
          </div>
          
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">
              <i class="fa fa-times"></i> Close
            </button>
            
            <button type="button" @click="createDuration" class="btn btn-primary"> 
              <i class="fa fa-save pr-2">  </i> Save
            </button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <div class="modal fade" tabindex="-1" role="dialog" id="update_duration_model">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Update Duration</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
          
          <div class="modal-body">
            <div class="alert alert-danger" v-if="errors.length > 0">
              <ul>
                <li v-for="error in errors">{{ error }}</li>
              </ul>
            </div>
            
            

            <div class="form-group">
              <label for="names">Time:</label>
                <input type="text" name="time" id="time" placeholder="Time" class="form-control" v-model="update_duration.time">
            </div>
            <div class="form-group">
              <label for="names">Day:</label>
                <input type="text" name="day" id="day" placeholder="Day" class="form-control" v-model="update_duration.days">
            </div>
            <div class="form-group">
              <label for="names">During:</label>
                <input type="text" name="during" id="during" placeholder="During" class="form-control" v-model="update_duration.during">
            </div>
            <div class="form-group">
              <label for="names">Course:</label>
                
                <select class="form-control"  name="course_id" v-model="update_duration.courseid" id="courseid">
                  
                  <option v-for="(course, index) in courses" :value="course.id" :selected="course.id == update_duration.courseid"> 
                    {{ course.name }}  
                    ( {{ course.location.city.name }} ) 
                  </option>
                </select>
            </div>
            
          </div>
              
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">
              <i class="fa fa-times"></i> Close
            </button>
                
            <button type="button" @click="updateDuration" class="btn btn-primary"> 
              <i class="fa fa-upload"></i> Update
            </button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
  </div>
</template>
<script type="text/javascript">
    $(document).ready(function() {

    setInterval(function()
    {
        $('.alertnoti').hide();
    },30000);
    
    }); 

  </script>

<script>
   export default {
       data(){
           return {
               duration: {
                   name: ''
               },
               courses:[],
               course_id: '',
               add_noti:false,
               update_noti:false,
               delete_noti:false,
               message:'',
               errors: [],
               durations: [],
               update_duration: {}
           }
       },

       mounted()
       {
          this.readDurations();
          this.readCourses();

       },
       methods: {
           deleteDuration(index)
           {
               let conf = confirm("Do you ready want to delete this Duration?");
               if (conf === true) {
                   axios.delete('api/setup/duration/' + this.durations[index].id)
                       .then(response => {
                           this.durations.splice(index, 1);
                           this.delete_noti=true;
                           this.message="Existing duration has been sucessfully deleted!!";
                       })
                       .catch(error => {
                       });
               }
           },
           initAddDuration()
           {
               $("#add_duration_model").modal("show");
           },
           createDuration()
           {
               axios.post('api/setup/duration', {
                   time: this.duration.time,
                   days: this.duration.days,
                   during: this.duration.during,

                   course_id: this.course_id,

               })
                   .then(response => {
                       this.reset();
                       this.durations.push(response.data.duration);
                       this.add_noti=true;
                       this.message="New duration has been sucessfully added!!";
                       $("#add_duration_model").modal("hide");
                       this.readDurations();
                       this.readCourses();
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
               this.duration.time = '';
               this.duration.days = '';
               this.duration.during = '';

           },
           readDurations()
           {
               axios.get('api/setup/duration')
                   .then(response => {
                       this.durations = response.data.durations;
                   });
           },
           readCourses()
           {
               axios.get('api/setup/course')
                   .then(response => {
                       this.courses = response.data.courses;
                   });
           },
           initUpdate(index)
           {
               this.errors = [];
               $("#update_duration_model").modal("show");
               this.update_duration = this.durations[index];
           },
           updateDuration()
           {
               axios.patch('api/setup/duration/' + this.update_duration.id, {
                   time: this.update_duration.time,
                   days: this.update_duration.days,
                   during: this.update_duration.during,

                   course_id: this.update_duration.courseid,

               })
                   .then(response => {
                       this.update_noti=true;
                       this.message="Existing duration has been sucessfully updated!!";
                       $("#update_duration_model").modal("hide");
                       this.readDurations();
                       this.readCourses();
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