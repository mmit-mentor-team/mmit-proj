<template>

  <div class="container">
    <div class="row">
      <div class="col-md-12">

        <div class="alert alert-success alert-dismissible fade show" role="alert">
            
            <strong>SUCCESS!</strong> {{ message }}
            
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
        </div>

        <div class="alert alert-warning alert-dismissible fade show" role="alert" >
            
            <strong>SUCCESS!</strong> {{ message }}
            
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
        </div>

        <div class="alert alert-danger alert-dismissible fade show" role="alert">
            
            <strong>SUCCESS!</strong> {{ message }}
            
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
        </div>

        <div class="card shadow mb-4">
          <div class="card-header py-3">

            <h3 class="m-0 font-weight-bold text-primary"> 
              Interview List

              <button @click="initAddTownship()" class="btn btn-primary float-right ">
                <i class="fa fa-plus"></i> Add New Interview
              </button>

            </h3>
            
            
          </div>

          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered table-hover" id="table_id" cellspacing="0" v-if="interviews.length > 0">
                <thead class="bg-primary text-white">
                  <tr class="text-center">
                    <th> No </th>
                    <th> Appointment </th>
                    <th> Remark </th>
                    <th> Status </th>
                    <th> Student Name</th>
                    <th> Jobcareer Name</th>
                    <th> Action </th>
                  </tr>
                </thead>
                <tbody>
                  <tr v-for="(interview, index) in interviews">
                    
                    <td> {{ index + 1 }} </td>
                    <td> {{ interview.appointment }} </td>
                    <td> {{ interview.remark }} </td>
                    <td> {{ interview.status }} </td>
                    <td> {{ interview.student.inquire.name }} </td>
                    <td> {{ interview.jobcareer.company.name }} <br> {{ interview.jobcareer.position.name }}</td>

                    <td> 
                      <button @click="initUpdate(index)" class="btn btn-warning btn-xs">
                        <i class="fas fa-edit"></i> Edit
                      </button>
                      
                      <button @click="deleteInterview(index)" class="btn btn-danger btn-xs">
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
    
    <div class="modal fade" tabindex="-1" role="dialog" id="add_interview_model">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Add New Interview List</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
            
          <div class="modal-body">
            <div class="alert alert-danger" v-if="errors.length > 0">
              <ul>
                  <li v-for="error in errors">{{ error }}</li>
              </ul>
            </div>
            
            <div class="form-group">
              <label for="appointment">Appointment:</label>
                <input type="date" name="appointment" id="appointment" placeholder="appointment date" class="form-control" v-model="interview.appointment">
            </div>

            <div class="form-group">
              <label for="remark">Remark:</label>
                <input type="text" name="status" id="remark" placeholder="enter remark" class="form-control" v-model="interview.remark">
            </div>

             <div class="form-group">
              <label for="status">Status:</label>
                <input type="text" name="status" id="status" placeholder="enter status" class="form-control" v-model="interview.status">
            </div>

            
            <div class="form-group">
              <label for="names"> Student :</label>
                <select class="form-control"  name="student_id" v-model="student_id" id="student_id">
                  <option disabled value="">Please select one</option>
                  <option v-for="(student, index) in students" :value="student.id" > {{ student.secinstallmentamount }}  </option>
                </select>
            </div>
                        
            <div class="form-group">
              <label for="names"> Jobcareer :</label>
                <select class="form-control"  name="jobcareer_id" v-model="jobcareer_id" id="jobcareer_id">
                  <option disabled value="">Please select one</option>
                  <option v-for="(jobcareer, index) in jobcareers" :value="jobcareer.id" > 
                    {{ jobcareer.company.name }}  
                  </option>
                </select>
            </div>

          </div>
          
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">
              <i class="fa fa-times"></i> Close
            </button>
            
            <button type="button" @click="createInterview" class="btn btn-primary">
              <i class="fa fa-save pr-2">  </i> Save
            </button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <div class="modal fade" tabindex="-1" role="dialog" id="update_interview_model">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Update interview</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
          
          <div class="modal-body">
            <div class="alert alert-danger" v-if="errors.length > 0">
              <ul>
                <li v-for="error in errors">{{ error }}</li>
              </ul>
            </div>
            
            <div class="form-group">
              <label for="appointment">Appointment:</label>
                <input type="date" name="appointment" id="appointment" placeholder="appointment date" class="form-control" v-model="update_interview.appointment">
            </div>

            <div class="form-group">
              <label for="remark">Remark:</label>
                <input type="text" name="status" id="remark" placeholder="enter remark" class="form-control" v-model="update_interview.remark">
            </div>

            <div class="form-group">
              <label for="status">Status:</label>
                <input type="text" name="status" id="status" placeholder="enter status" class="form-control" v-model="update_interview.status">
            </div>


            <div class="form-group">
              <label for="student_id">Student Name:</label>
                <input type="text" name="student_id" id="student_id" placeholder="enter student" class="form-control" v-model="update_interview.student_id">
            </div>

            <div class="form-group">
              <label for="student"> Student :</label>
                <select class="form-control"  name="student_id" v-model="update_interview.student_id" id="student">
                  <option disabled value="">Please select one</option>
                  <option v-for="(student, index) in students" :value="student.id":selected="student.id == update_interview.student_id" > {{ student.secinstallmentamount }}  </option>
                </select>
            </div>
            
            <div class="form-group">
              <label for="jobcareer"> Jobcareer :</label>
                <select class="form-control"  name="jobcareer_id" v-model="update_interview.jobcareer_id" id="jobcareer">
                  <option disabled value="">Please select one</option>                  
                  <option v-for="(jobcareer, index) in jobcareers" :value="jobcareer.id" :selected="jobcareer.id == update_interview.jobcareer_id"> {{ jobcareer.gender }}  </option>
                </select>
            </div>

            
          </div>
              
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">
              <i class="fa fa-times"></i> Close
            </button>
                
            <button type="button" @click="updateInterview" class="btn btn-primary">
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
               interview: {
                   appointment: '',
                   remark: '',
                   status: '',                                      
                   
               },
               students:[], 
               student_id: '',            
               jobcareers:[],
               jobcareer_id: '',               
               errors: [],
               message: '',
               interviews: [],
               update_interview: {},
               
           }
       },
       mounted()
       {
          this.readInterview();
          this.readStudent();
          this.readJobcareer();
       },
       methods: {
          
           initAddTownship()
           {
               $("#add_interview_model").modal("show");
           },

           createInterview()
           {
            axios.post('/api/setup/interview',{
              appointment: this.interview.appointment,
              remark: this.interview.remark,
              status: this.interview.status,
              student_id: this.student_id,
              jobcareer_id: this.jobcareer_id,

            })
                .then(response => {
                  this.reset();
                  this.interviews.push(response.data.interview);
                  
                  this.message="New township has been sucessfully added!!";
                  $("#add_interview_model").modal("hide");
                  
                })

                .catch(error=> {
                  this.errors = [];
                  if (error.response.data.errors && error.response.data.errors.appointment) {
                           this.errors.push('Appointment is required');
                       }

                  if(error.response.data.errors && error.response.data.errors.remark) {
                    this.errors.push(error.response.data.errors.remark[0]);
                  }

                  if(error.response.data.errors && error.response.data.errors.status) {
                    this.errors.push(error.response.data.errors.status[0]);
                  }

                  if(error.response.data.errors && error.response.data.errors.student_id){
                    this.errors.push(error.response.data.errors.student_id[0]);
                  }

                  if(error.response.data.errors && error.response.data.errors.jobcareer_id){
                    this.errors.push(error.response.data.errors.jobcareer_id[0]);
                  }


                });          
       },

       reset(){
          this.interview.appointment = '';
       },

       readInterview(){
          axios.get('/api/setup/interview')
            .then(response => {
                this.interviews = response.data.interviews;
                /*console.log(response.data.interviews[0]);*/
            });
       },

       readStudent(){
          axios.get('/api/setup/student')
            .then(response => {
              this.students = response.data.students;
             
            });
       },

       readJobcareer(){
          axios.get('/api/setup/jobcareer')
            .then(response => {
              this.jobcareers = response.data.jobcareer;
              
            });

       },

       initUpdate(index){
          this.errors = [];
          $("#update_interview_model").modal("show");
          this.update_interview = this.interviews[index];
         
          this.update_interview = JSON.parse(JSON.stringify(this.interviews[index]));
       },

       updateInterview(){

            axios.patch('/api/setup/interview/' + this.update_interview.id, {
                appointment: this.update_interview.appointment,
                remark: this.update_interview.remark,
                status: this.update_interview.status,
                student_id: this.update_interview.student_id,
                jobcareer_id: this.update_interview.jobcareer_id
            })

                .then(response =>{
                  this.message = "Existing interview has been sucessfully updated!";
                  $("#update_interview_model").modal("hide");
                  this.readInterview();
                })

                .catch(errors => {
                    this.errors =[];

                    if(error.response.data.errors.appointment){
                      this.errors.push(error.response.data.errors.appointment[0]);
                    }
                });

       },

       deleteInterview(index){
          let conf = confirm("Do you ready want to delete this interview!");

          if(conf === true){

                axios.delete('/api/setup/interview/' + this.interviews[index].id)

                .then(response => {
                    this.interviews.splice(index,1);
                    this.message = "Existing interview has been sucessfully delete!";
                })

                .catch(error => {

                });
          }
       }
     }
   }
</script>