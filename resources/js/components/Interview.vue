<template>

  <div class="container">
    <div class="row">
      <div class="col-md-12">

        <div class="card shadow mb-4">
          <div class="card-header py-3">

            <h3 class="m-0 font-weight-bold text-primary" v-for="(interview, index) in interviews"> 
              {{ interview.company.name }}
            </h3>
            
            
          </div>

          <div class="card-body">
            
          </div>

        </div>

      </div>
    </div>



   
  </div>
</template>

<script>
   export default {
        props: ['data'],
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
               url_jobcareerid: this.data,
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
          axios.get(`/api/setup/interview/${this.url_jobcareerid}`)
            .then(response => {
                this.interviews = response.data.jobcareers;
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