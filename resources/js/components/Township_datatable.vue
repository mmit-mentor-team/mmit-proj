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

            <h3 class="m-0 font-weight-bold text-primary"> 
              Township List

              <button @click="initAddTownship()" class="btn btn-primary float-right ">
                <i class="fa fa-plus"></i> Add New Township
              </button>

            </h3>
            
            
          </div>

          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered table-hover" id="dataTable" width="100%" cellspacing="0">
                <thead class="bg-primary text-white">
                  <tr class="text-center">
                    <th> No </th>
                    <th> Township </th>
                    <th> City </th>
                    <th> Action </th>
                  </tr>
                </thead>
                <tbody>
                  
                </tbody>
                
              </table>
            </div>
          </div>

        </div>

      </div>
    </div>
    
    <div class="modal fade" tabindex="-1" role="dialog" id="add_township_model">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Add New township</h4>
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
                <input type="text" name="name" id="name" placeholder="township Name" class="form-control" v-model="township.name">
            </div>

            <div class="form-group">
              <label for="names"> City :</label>
                <select class="form-control"  name="city_id" v-model="city_id" id="cityid">
                  <option disabled value="">Please select one</option>
                  <option v-for="(city, index) in cities" :value="city.id" > {{ city.name }}  </option>
                </select>
            </div>

          </div>
          
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">
              <i class="fa fa-times"></i> Close
            </button>
            
            <button type="button" @click="createTownship" class="btn btn-primary">
              <i class="fa fa-save pr-2">  </i> Save
            </button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <div class="modal fade" tabindex="-1" role="dialog" id="update_township_model">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Update township</h4>
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
                <input type="text" placeholder="township Name" class="form-control" v-model="clone_update_township.name">
            </div>

            <div class="form-group">
              <label for="names"> City :</label>
                <select class="form-control"  name="city_id" v-model="clone_update_township.city_id" id="cityid">
                  
                  <option v-for="(city, index) in cities" :value="city.id" :selected="city.id == clone_update_township.city_id"> {{ city.name }}  </option>
                </select>
            </div>
            
          </div>
              
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">
              <i class="fa fa-times"></i> Close
            </button>
                
            <button type="button" @click="updateTownship" class="btn btn-primary">
              <i class="fa fa-upload"></i> Update
            </button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
  </div>
</template>

<script>




import Vue from 'vue'
import App from './Township.vue'

const app = new Vue(App);

   export default {
       data(){
           return {
               township: {
                   name: ''
               },
               cities:[],
               city_id: '',
               errors: [],
               townships: [],
               add_noti:false,
               update_noti:false,
               delete_noti:false,
               message:'',
               update_township: {},
               clone_update_township: {}
           }
       },
       mounted()
       {
          this.readTownships();
          this.readCities();

          
          $('#dataTable').on('click', '.edit', (evt) => {
           var id = $(evt.target).data('id');
           var name = $(evt.target).data('name');
           var cityid = $(evt.target).data('cityid');
           alert(id);
           this.initUpdate(id, name, cityid); 
          });

          $('#dataTable').on('click', '.delete', (evt) => {
           var id = $(evt.target).data('id');
           alert(id);
           this.deletetownship(id); 
          });

       },
       methods: {
           deletetownship(index)
           {
               let conf = confirm("Do you ready want to delete this township?");
               if (conf === true) {
                   axios.delete('/api/setup/township/' + index)
                       .then(response => {
                           // this.townships.splice(index, 1);
                           this.delete_noti=true;
                           this.message="Existing township has been sucessfully deleted!!";
                       })
                       .catch(error => {
                       });
               }
           },
           initAddTownship()
           {
               $("#add_township_model").modal("show");
           },
           createTownship()
           {
               axios.post('/api/setup/township', {
                   name: this.township.name,
                   city_id : this.city_id,
               })
                   .then(response => {
                       this.reset();
                       this.townships.push(response.data.township);
                       this.add_noti=true;
                       this.message="New township has been sucessfully added!!";
                       $("#add_township_model").modal("hide");
                       this.readTownships();
                       this.readCities();

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
               this.township.name = '';
           },
           readTownships()
           {
              $.ajaxSetup({
                  headers: {
                    'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')
                  }
              });

              this.dataTable = $('#dataTable').DataTable({

               processing: true,
               serverSide: true,
               retrieve: true,
               ajax: {
                "url": "/api/setup/township",
                "type": "GET"
                },
               columns: [
                        
                        { data: 'id', name: 'id' },
                        { data: 'name', name: 'name' },
                        { data: 'cityname', name: 'cityname' },
                        { data: 'action', name: 'action', orderable: false, searchable: false},

                     ]
              });
           },

           

           readCities()
           {
               axios.get('/api/setup/city')
                   .then(response => {
                       this.cities = response.data.cities;
                   });
           },

            

           initUpdate(id, name, cityid)
           {
               this.errors = [];
               $("#update_township_model").modal("show");
               this.clone_update_township = {
                  id : id,
                  name : name,
                  city_id : cityid
               };

           },

           updateTownship()
           {
               axios.patch('/api/setup/township/' + this.clone_update_township.id, {
                   name: this.clone_update_township.name,
                   city_id : this.clone_update_township.city_id,
               })
                   .then(response => {
                        this.update_noti=true;
                       this.message="Existing township has been sucessfully updated!!";
                       $("#update_township_model").modal("hide");
                       this.readTownships();
                       this.readCities();
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