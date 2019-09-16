<template>

  <div class="container">
    <div class="row">
      <div class="col-md-12">

        <!-- <div class="alert alert-success alert-dismissible fade show" role="alert">
            
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
        </div> -->

        <div class="card shadow mb-4">

          <div class="card-header py-3">
            
            <h3 class="m-0 font-weight-bold text-primary"> Hire Lists

            </h3>
          </div>
          
          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered table-hover" id="table_id" cellspacing="0" v-if="">
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
                  <tr v-for="(hire, index) in hires">
                    
                    <td> {{ index + 1 }} </td>
                    <td> {{ hire.inquiresname }} </td>
                    <td> {{ hire.courses }} </td>
                    <td> {{ hire.sections }} </td>
                    
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

    <div class="modal fade" tabindex="-1" role="dialog" id="detail_hire_model">
     <div class="modal-dialog" role="document">
         <div class="modal-content">
             <div class="modal-header">
                <h4 class="modal-title">Detail Information</h4>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
             </div>
              <div class="modal-body col-md-8 offset-2 text-left">
                 
                 <!-- {{detail_staff}} -->
                <div class="row"></div>
                <div class="row">
                  <div class="col-md-6 ">
                     Name:
                  </div>
                  <div class="col-md-6">
                     {{detail_hire.inquires.name}}
                  </div>
                </div>

                <div class="row">
                  <div class="col-md-6 ">
                     Gender:
                  </div>
                  <div class="col-md-6">
                     {{detail_hire.inquires.gender}}
                  </div>
                </div>

                <div class="row">
                  <div class="col-md-6 ">
                     Date of Birth:
                  </div>
                  <div class="col-md-6">
                     {{detail_hire.inquires.dob}}
                  </div>
                </div>
                
                <div class="row">
                  <div class="col-md-6 ">
                     Address:
                  </div>
                  <div class="col-md-6">
                     {{detail_hire.inquires.address}}
                  </div>
                </div>

                <div class="row">
                  <div class="col-md-6 ">
                     Phone No:
                  </div>
                  <div class="col-md-6">
                     {{detail_hire.inquires.phno}}
                  </div>
                </div>

                <div class="row">
                  <div class="col-md-6 ">
                     Email:
                  </div>
                  <div class="col-md-6">
                     {{detail_hire.inquires.email}}
                  </div>
                </div>

                <div class="row">
                  <div class="col-md-6 ">
                     Compnay Name:
                  </div>
                  <div class="col-md-6">
                     {{detail_hire.companiename}}
                  </div>
                </div>




                 
             </div>
            
             <div class="modal-footer">
                 <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
             </div>
         </div>
     </div>
    </div>
   
  </div>
</template>

<script>
   export default {
       data(){
           return {
             
               hires:[],
               message: '',
               detail_hire:{ 
                inquires:[]
              },
               

              
           }
       },
       mounted()
       {
          this.readHire();
         
       },
       methods: {         

       readHire(){
          axios.get('/api/setup/hire')
            .then(response => {
                this.hires = response.data.hires;
                /*console.log(response.data.hires[0]);*/
            });
       },

       initDetail(index)
         {
             
             $("#detail_hire_model").modal("show");
             this.detail_hire = this.hires[index];
             /*console.log(this.detail_hire.inquires.address);*/
         },

       

     }
   }
</script>