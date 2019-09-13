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
            
            <h3 class="m-0 font-weight-bold text-primary"> City List

              <button @click="initAddCity()" class="btn btn-primary float-right ">
                <i class="fa fa-plus"></i> Add New City
              </button>

            </h3>

          </div>

          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered table-hover" id="dataTable" cellspacing="0" v-if="cities.length > 0">
                <thead class="bg-primary text-white">
                  <tr class="text-center">
                    <th> No </th>
                    <th> Name </th>
                    <th> Action </th>
                  </tr>
                </thead>
                <tbody>
                  <tr v-for="(city, index) in cities">
                    <td> {{ index + 1 }} </td>
                    <td> {{ city.name }} </td>
                    <td> 
                      <button @click="initUpdate(city.id, city.name)" class="btn btn-warning btn-xs">
                        <i class="fas fa-edit"></i> Edit
                      </button>
                      
                      <button @click="deleteCity(index)" class="btn btn-danger btn-xs">
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
    
    <div class="modal fade" tabindex="-1" role="dialog" id="add_city_model">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Add New City</h4>
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
                <input type="text" name="name" id="name" placeholder="City Name" class="form-control" v-model="city.name">
            </div>
          </div>
          
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">
              <i class="fa fa-times"></i> Close
            </button>
            
            <button type="button" @click="createCity" class="btn btn-primary">
              <i class="fa fa-save pr-2">  </i> Save
            </button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <div class="modal fade" tabindex="-1" role="dialog" id="update_city_model">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Update City</h4>
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
                <input type="text" placeholder="City Name" class="form-control" v-model="update_city.name">
            </div>
            
          </div>
              
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">
              <i class="fa fa-times"></i> Close
            </button>
                
            <button type="button" @click="updateCity" class="btn btn-primary">
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
               city: {
                   name: ''
               },
               errors: [],
               add_noti:false,
               update_noti:false,
               delete_noti:false,
               message:'',
               cities: [],
               update_city: {}
           }
       },
       mounted()
       {
          $('#dataTable').DataTable(this.readCities());
       },
       methods: {
           deleteCity(index)
           {
              let conf = confirm("Do you ready want to delete this city?");
              if (conf === true) 
              {
                axios.delete('/api/setup/city/' + this.cities[index].id)
                       .then(response => {
                           this.cities.splice(index, 1);
                           this.delete_noti=true;
                           this.message="Existing city has been sucessfully deleted!!";
                       })
                       .catch(error => {
                       });
              }
           },
           initAddCity()
           {
               $("#add_city_model").modal("show");
           },
           createCity()
           {
               axios.post('/api/setup/city', {
                   name: this.city.name,
               })
                   .then(response => {
                       this.reset();
                       this.cities.push(response.data.city);
                       this.add_noti=true;
                       this.message="New city has been sucessfully added!!";
                       $("#add_city_model").modal("hide");
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
               this.city.name = '';
           },
           readCities()
           {
               axios.get('/api/setup/city')
                   .then(response => {
                       this.cities = response.data.cities;
                   });
           },
           initUpdate(val_id, val_name)
           {
               this.errors = [];
               $("#update_city_model").modal("show");
               this.update_city.id = val_id;
               this.update_city.name = val_name;
           },
           updateCity()
           {
               axios.patch('/api/setup/city/' + this.update_city.id, {
                   name: this.update_city.name,
               })
                   .then(response => {
                       this.update_noti=true;
                       this.message="Existing city has been sucessfully updated!!";
                       $("#update_city_model").modal("hide");
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
