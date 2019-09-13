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
            
            <h3 class="m-0 font-weight-bold text-primary"> Jobcarrer List

              <button  class="btn btn-primary float-right " @click="initAddJobcarrer()">
                <i class="fa fa-plus"></i> Add New Jobcarrer
              </button>

            </h3>

          </div>

          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered table-hover" id="table_id" cellspacing="0" v-if="Jobcarrers.length > 0" >
                <thead class="bg-primary text-white">
                  <tr class="text-center">
                    <th> No </th>
                    <th> Senddate </th>
                    <th> Company </th>
                    <th> Position </th>
                    <th> Gender </th>
                    <th> Remark </th>
                    <th> Action </th>
                  </tr>
                </thead>
                <tbody>
                  <tr v-for="(jobcareer, index) in Jobcarrers">
                    <td> {{ index + 1 }} </td>
                    <td> {{ jobcareer.senddate }} </td>
                    <td> {{ jobcareer.company.name }} </td>
                    <td> {{ jobcareer.position.name}} </td>
                    <td> {{ jobcareer.gender }}</td>
                    <td> {{ jobcareer.remark }} </td>
                    <td>
                      <button class="btn btn-warning btn-xs" @click="interview(jobcareer.id)">
                        <i class="far fa-handshake"></i> Interview
                      </button>

                      <button class="btn btn-warning btn-xs" @click="initUpdate(index)">
                        <i class="fas fa-edit" ></i> Edit
                      </button>
                      
                      <button class="btn btn-danger btn-xs"  @click="deletejobcareer(index)">
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
    
    <div class="modal fade" tabindex="-1" role="dialog" id="add_Jobcarrer_model">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Add New Jobcarrer</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
            
          <div class="modal-body">
           
            <div class="alert alert-danger" v-if="errors.length > 0">
              <ul>
                  <li v-for="error in errors">{{ error }}</li>
              </ul>
            </div>
            <div class="form-group">

              <label> Job Requirement Gender :  </label> <br>
              <div class="row">

                <div class="col-lg-4">
                  <label for="male" class="mx-2">Male:</label>
                  <input type="radio" value="male" id="male" placeholder="Male"  v-model="Jobcarrer.gender">
                </div>

                <div class="col-lg-4">
                  <label for="female"  class="mx-2">Female:</label>
                  <input type="radio" value="female" id="female" placeholder="Female"  v-model="Jobcarrer.gender">
                </div>
                <div class="col-lg-4">
                  <label for="both"  class="mx-2">Both:</label>
                  <input type="radio" value="both" id="both" placeholder="Other"  v-model="Jobcarrer.gender">
                </div>
              </div>
              
              <div class="form-group">
                <label>Company:</label>
                <select class="form-control" v-model="company_id" name="company" id="company" >
                  <option disabled value="">Please select one</option>
                  <option v-for="(company, index) in companys" :value="company.id">{{company.name}}</option>
                  
                </select>
              </div>

              <div class="form-group">
                <label>Position:</label>
                <select class="form-control" v-model="position_id" name="position_id" id="position" >
                 <option disabled value="">Please select one</option>
                  <option v-for="(position, index) in positions" :value="position.id">{{ position.name }}</option>
               
                </select>
              </div>

            </div>
            <div class="form-group">
              <label>SendDate:</label>
                <input type="date" placeholder="Send Date" class="form-control" v-model="Jobcarrer.senddate">
            </div>
            <div class="form-group">
              <label>remark:</label>
                <textarea class="form-control" v-model="Jobcarrer.remark" name="remark" id="remark"></textarea>
            </div>

            


          </div>
          
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">
              <i class="fa fa-times"></i> Close
            </button>
            
            <button type="button" @click="createJobcarrer" class="btn btn-primary">
              <i class="fa fa-save pr-2">  </i> Save
            </button>
          </div>
        </div>
      </div>
    </div>

    <div class="modal fade" tabindex="-1" role="dialog" id="update_Jobcarrer_model">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Add New Jobcarrer</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
            
          <div class="modal-body">
           
            <div class="alert alert-danger" v-if="errors.length > 0">
              <ul>
                <li v-for="error in errors">{{ error }}</li>
              </ul>
            </div>
            <div class="form-group">
              <label for="gender" class="mx-2">Male:</label>
                <input type="radio" value="male" id="updatemale" name="gender" placeholder="Male" 
                v-model="clone_update_jobcareer.gender"
         
         :checked="clone_update_jobcareer.gender== Jobcarrer.gender" >
                <label for="gender"  class="mx-2">Female:</label>
                <input type="radio" value="female" id="updatefemale"name="gender"placeholder="Female" v-model="clone_update_jobcareer.gender"
         
         :checked="clone_update_jobcareer.gender== Jobcarrer.gender" >
                <label for="gender"  class="mx-2">Both:</label>
                <input type="radio" name="gender" value="both" id="updateother" placeholder="Other"  v-model="clone_update_jobcareer.gender"
        
         :checked="clone_update_jobcareer.gender== Jobcarrer.gender">
            </div>
            <div class="form-group">
              <label>SendDate:</label>
                <input type="date" placeholder="Send Date" id="updatesenddate" class="form-control" name="senddate" v-model="clone_update_jobcareer.senddate" >
            </div>
            <div class="form-group">
              <label>remark:</label>
                <textarea class="form-control" name="remark" v-model="clone_update_jobcareer.remark" id="updateremark"></textarea>
            </div>

               <div class="form-group">
                <label>Company:</label>
            <select class="form-control"  name="company_id" id="update_company_id" v-model="clone_update_jobcareer.company_id" >
              <option disabled value="">Please select one</option>
              <option v-for="(company, index) in companys" :value="company.id" 
              :selected="company.id == clone_update_jobcareer.company_id">{{company.name}}</option>
               
            </select>
            </div>

               <div class="form-group">
                <label>Position:</label>
             <select class="form-control"  name="position_id" id="update_position_id" 
              v-model="clone_update_jobcareer.position_id"  >
               
              <option v-for="(position, index) in positions" :value="position.id" 
              :selected="position.id == clone_update_jobcareer.position_id" >{{position.name}}</option>
             
            </select>
          </div>


          </div>
          
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">
              <i class="fa fa-times"></i> Close
            </button>
            
            <button type="button" @click="updatejobcareer" class="btn btn-primary">
              <i class="fa fa-save pr-2">  </i> Update
            </button>
          </div>
        </div>
      </div>
    </div>
    
      
  </div>
</template>

<script type="text/javascript">
 export default {
  data(){
           return {
               Jobcarrer: {
                     gender: ''
               },
               positions:[],
               companys:[],
               position_id: '',
               company_id: '',
               errors: [],
               add_noti:false,
               update_noti:false,
               delete_noti:false,
               message:'',
               Jobcarrers: [],
               update_Jobcarrer: {},
               clone_update_jobcareer: {}
           }
       },
       mounted()
       {
        this.readJobcareer();
          this.readPositions(); 
          this.readCompanys()
       },
        methods: {
          deletejobcareer(index)
           {
               let conf = confirm("Do you ready want to delete this jobcareer?");
               if (conf === true) {
                   axios.delete('/api/setup/jobcareer/' + this.Jobcarrers[index].id)
                       .then(response => {
                           this.Jobcarrers.splice(index, 1);
                           this.delete_noti=true;
                           this.message="Existing jobcareer has been sucessfully deleted!!";
                       })
                       .catch(error => {
                       });
               }
           },
          initAddJobcarrer()
           {
               $("#add_Jobcarrer_model").modal("show");
           },

           readPositions()
           {
               axios.get('/api/setup/position')
                   .then(response => {
                       this.positions = response.data.positions;
                   });
           },
           readCompanys()
           {
               axios.get('/api/setup/company')
                   .then(response => {
                       this.companys = response.data.company;
                   });
           },

            createJobcarrer()
           {
               axios.post('/api/setup/jobcareer', {
                   gender: this.Jobcarrer.gender,
                   senddate : this.Jobcarrer.senddate,
                   remark : this.Jobcarrer.remark,
                   company_id : this.company_id,
                   position_id : this.position_id,


               })
                .then(response => {
                       this.reset();
                       this.Jobcarrers.push(response.data.jobcareer);
                       this.add_noti=true;
                       this.message="New jobcareer has been sucessfully added!!";
                       $("#add_Jobcarrer_model").modal("hide");
                       this.readPositions();
                       this.readJobcareer();
                        readCompanys()

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
               this.Jobcarrers.gender = '';
           },
            readJobcareer()
           {
               axios.get('/api/setup/jobcareer')
                   .then(response => {
                       this.Jobcarrers = response.data.jobcareer;
                   });
           },

          initUpdate(index)
          {
             this.errors = [];
             $("#update_Jobcarrer_model").modal("show");
             this.clone_update_jobcareer = this.Jobcarrers[index];
              var clonedata = this.Jobcarrers.slice(index);
             this.clone_update_jobcareer = clonedata[0];

          },
          interview(id)
          {
           location.href="interviewform/"+id; 
          },
           updatejobcareer(){
            axios.patch('/api/setup/jobcareer/' + this.clone_update_jobcareer.id, {
                   gender: this.clone_update_jobcareer.gender,
                   senddate : this.clone_update_jobcareer.senddate,
                   remark :this.clone_update_jobcareer.remark,
                   company_id : this.clone_update_jobcareer.company_id,
                   position_id : this.clone_update_jobcareer.position_id,
               })
                   .then(response => {
                        this.update_noti=true;
                       this.message="Existing jobcareer has been sucessfully updated!!";
                       $("#update_Jobcarrer_model").modal("hide");
                       this.readJobcareer();
                       this.readPositions();
                        readCompanys()
                   })
                   .catch(error => {
                       this.errors = [];
                       if (error.response.data.errors && error.response.data.errors.name) {
                           this.errors.push(error.response.data.errors.name[0]);
                       }
                   });
           }
           
        }

  }
   
 
</script>