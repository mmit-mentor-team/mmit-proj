<template>

  <div class="container">
    <div class="row">
      <div class="col-md-12">


        <div class="card shadow mb-4">
          <div class="card-header py-3">
            <h3 class="m-0 font-weight-bold text-primary"> Location List

              <button @click="initAddLocation()" class="btn btn-primary float-right ">
                <i class="fa fa-plus"></i>
                Add New Location
              </button>
            </h3>

          </div>

          <div class="card-body">
            <div class="table-responsive">
              <table class="table table-bordered" id="dataTable" width="100%" cellspacing="0" v-if="locations.length > 0">
                <thead>
                  <tr>
                    <th> No </th>
                    <th style="width: 500px"> Name </th>
                    <th> City </th>
                    <th> Action </th>
                  </tr>
                </thead>
                <tbody>
                  <tr v-for="(location, index) in locations">
                    <td> {{ index + 1 }} </td>
                    <td> {{ location.name }} </td>
                    <td> {{ location.city.name }} </td>

                    <td> 
                      <button @click="initUpdate(index)" class="btn btn-warning">
                        <i class="fas fa-edit"></i> Edit
                      </button>
                      
                      <button @click="deleteLocation(index)" class="btn btn-danger">
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
    
    <div class="modal fade" tabindex="-1" role="dialog" id="add_location_model">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Add New Location</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
            
          <div class="modal-body">
            <div class="alert alert-danger" v-if="errors.length > 0">
              <ul>
                  <li v-for="error in errors">{{ error }}</li>
              </ul>
            </div>
            
            <div class="form-group">
              <label for="names">Location Name:</label>
                <input type="text" name="name" id="name" placeholder="Location Name" class="form-control" v-model="location.name">
            </div>
            <div class="form-group">
              <label for="names">City:</label>
                
                <select class="form-control" name="city_id" v-model="city_id" id="cityid">
                  <option disabled value="">Please select one</option>
                  <option v-for="(city, index) in cities" :value="city.id" > {{ city.name }}  </option>
                </select>
            </div>
            
          </div>
          
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            
            <button type="button" @click="createLocation" class="btn btn-primary">Submit</button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <div class="modal fade" tabindex="-1" role="dialog" id="update_location_model">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Update Location</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
          
          <div class="modal-body">
            <div class="alert alert-danger" v-if="errors.length > 0">
              <ul>
                <li v-for="error in errors">{{ error }}</li>
              </ul>
            </div>
            
            <div class="form-group">
              <label for="names">Location Name:</label>
                <input type="text" name="name" id="name" placeholder="Location Name" class="form-control" v-model="update_location.name">
            </div>
            <div class="form-group">
              <label for="names">City:</label>
                
                <select class="form-control"  name="city_id" v-model="update_location.cityid" id="cityid">
                  
                  <option v-for="(city, index) in cities" :value="city.id" :selected="city.id == update_location.cityid"> {{ city.name }}  </option>
                </select>
            </div>
            
          </div>
              
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                
            <button type="button" @click="updateLocation" class="btn btn-primary">Submit</button>
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
               location: {
                   name: ''
               },
               cities:[],
               city_id: '',
               errors: [],
               locations: [],
               update_location: {}
           }
       },

       mounted()
       {
           this.readLocations();
          this.readCities();

       },
       methods: {
           deleteLocation(index)
           {
               let conf = confirm("Do you ready want to delete this Location?");
               if (conf === true) {
                   axios.delete('api/setup/location/' + this.locations[index].id)
                       .then(response => {
                           this.locations.splice(index, 1);
                       })
                       .catch(error => {
                       });
               }
           },
           initAddLocation()
           {
               $("#add_location_model").modal("show");
           },
           createLocation()
           {
               axios.post('api/setup/location', {
                   name: this.location.name,
                   city_id: this.city_id,

               })
                   .then(response => {
                       this.reset();
                       this.locations.push(response.data.location);
                       $("#add_location_model").modal("hide");
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
               this.location.name = '';
           },
           readLocations()
           {
               axios.get('api/setup/location')
                   .then(response => {
                       this.locations = response.data.locations;
                   });
           },
           readCities()
           {
               axios.get('/api/setup/city')
                   .then(response => {
                       this.cities = response.data.cities;
                   });
           },
           initUpdate(index)
           {
               this.errors = [];
               $("#update_location_model").modal("show");
               this.update_location = this.locations[index];
           },
           updateLocation()
           {
               axios.patch('api/setup/location/' + this.update_location.id, {
                   name: this.update_location.name,
                   city_id: this.update_location.cityid,

               })
                   .then(response => {
                       $("#update_location_model").modal("hide");
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