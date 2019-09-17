<template>

  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="card shadow mb-4">

          <div class="card-header py-3">
            
            <h3 class="m-0 font-weight-bold text-primary"> {{jobcareers.company && jobcareers.company.name}}<small>({{jobcareers.position && jobcareers.position.name}})</small>

              <router-link :to="{name:'interviewform',params: {id:this.$route.params.id} }"  class="btn btn-primary float-right" id="interview" @click.native="reload" ><i class="fa fa-plus"></i>To change interview</router-link>
            </h3>

          </div>
          
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered table-hover" id="table_id" cellspacing="0" >
                <thead class="bg-primary text-white">
                  <tr class="text-center">
                    <th> No </th>
                    <th> Student Name</th>
                    <th> Course Name</th>
                    <th> Section Name</th>
                    <th> Action </th>
                  </tr>
                </thead>
                <tbody>
                  <tr v-for="(interview, index) in interviews">
                    
                    <td> {{ index + 1 }} </td>
                    <td> {{ interview.inquires }} </td>
                    <td> {{ interview.courses }} </td>
                    <td> {{ interview.sections }} </td>
                    <td>
                      <button  class="btn btn-warning btn-xs" @click="initAddHire(index)">
                        <i class="fas fa-edit"></i> Hire
                      </button>
                      <button type="button" class="btn btn-danger btn-xs" @click="initAddDismiss(index)">
                        <i class="fas fa-trash-alt"></i> Dismiss
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
    
    <div class="modal fade" tabindex="-1" role="dialog" id="add_hire_model">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Add New Hire List</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
            
          <div class="modal-body">
            <div class="alert alert-danger" v-if="errors.length > 0">
              <ul>
                  <li v-for="error in errors">{{ error }}</li>
              </ul>
            </div>

            <input type="hidden" name="interview_id" v-model="cloneinterview.id">
            
            <div class="form-group">
              <label for="startdate">Startdate:</label>
                <input type="date" name="appointment" id="startdate" placeholder="startdate date" class="form-control" v-model="hire.startdate">
            </div>

            <div class="form-group">
              <label for="salary">Salary:</label>
                <input type="text" name="status" id="salary" placeholder="enter salary" class="form-control" v-model="hire.salary">
            </div>

            <div class="form-group">
              <label for="remark">Remark:</label>
              <textarea  name="remark" id="remark" placeholder="Enter remark" class="form-control" v-model="hire.remark"></textarea>
            </div>

          </div>
          
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">
              <i class="fa fa-times"></i> Close
            </button>
            
            <button type="button" @click="createHire" class="btn btn-primary">
              <i class="fa fa-save pr-2">  </i> Save
            </button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <div class="modal fade" tabindex="-1" role="dialog" id="add_dismiss_model">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Add New Dismiss List</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
            
          <div class="modal-body">
            <div class="alert alert-danger" v-if="errors.length > 0">
              <ul>
                  <li v-for="error in errors">{{ error }}</li>
              </ul>
            </div>

            <input type="hidden" name="interview_id" v-model="cloneinterview.id">
            <div class="form-group">
              <label for="remark">Remark:</label>
              <textarea  name="remark" id="remark" placeholder="Enter remark" class="form-control" v-model="dismiss.remark"></textarea>
            </div>

          </div>
          
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">
              <i class="fa fa-times"></i> Close
            </button>
            
            <button type="button" class="btn btn-primary" @click="createDismiss">
              <i class="fa fa-save pr-2">  </i> Save
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
               hire: {
                   startdate: '',
                   salary: '',
                   remark: '',  
                  interview_id:'',                                    
                   
               },
               dismiss: {
                remark: '',
                interview_id: '',
               },
              
               dismisses:[],
               errors: [],
               list:[],
               message: '',
               interviews:[],
               cloneinterview: {}, 
               dismissesid: '',
               jobcareers:{},
               students:[]
           }
       },
       mounted()
       {
          this.readInterview();
          this.readJobcareer();

         
       },
       methods: {

            reload(){
              location.reload();
              
            },

            readJobcareer(){
              axios.get('/api/setup/jobcareer/' + this.$route.params.id, {
              
            })
              .then(response => {
                this.jobcareers  = response.data.jobcareers;
              });
           },
          
           initAddHire(index)
           {
            $("#add_hire_model").modal("show");
            this.cloneinterview = this.interviews[index];
          },
          createHire()
           {
            axios.post('/api/setup/hire',{
              startdate: this.hire.startdate,
              salary: this.hire.salary,
              remark: this.hire.remark,
              interview_id: this.cloneinterview.id,

            })
            .then(response => {
              $("#add_hire_model").modal("hide");
              this.readInterview();
            })
          },

       reset(){
          this.hire.startdate = '';
       },

       readInterview(){
        axios.get('/api/setup/interview/' + this.$route.params.id, {
          
        })
            .then(response => {

              this.interviews = response.data.interviews;
            });
       },
       initAddDismiss(index)
       {
          $("#add_dismiss_model").modal("show");
          this.cloneinterview = this.interviews[index];
        },

        createDismiss(){
            axios.post('/api/setup/dismiss',{
              remark: this.dismiss.remark,
              interview_id: this.cloneinterview.id,

            })
              .then(response => {
               $("#add_dismiss_model").modal("hide");
                this.dismissesid = response.data.dismissid;
               this.readInterview();
               }) 
        },

        
     }
   }
</script>