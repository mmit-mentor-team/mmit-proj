<template>
   <div class="container">
      <div class="row">
        <div class="col-md-12">
          <div class="card shadow mb-4">
            <div class="card-header py-3">
              
              <h3 class="m-0 font-weight-bold text-primary"> Income List

                <button @click="initAddIncome()" class="btn btn-primary float-right ">
                  <i class="fa fa-plus"></i> Add New Income
                </button>

              </h3>

            </div>

            <div class="card-body">
              <div class="table-responsive">
                <table class="table table-bordered table-hover" id="table_id" cellspacing="0" v-if="incomes.length > 0">
                  <thead class="bg-primary text-white">
                    <tr class="text-center">
                      <th> No </th>
                      <th> Date </th>
                      <th> Amount </th>
                      <th width="300px"> Location </th>
                      <th> Description </th>
                      <th> Action </th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr v-for="(income, index) in incomes">
                      <td> {{ index + 1 }} </td>
                      <td> {{ income.date }} </td>
                      <td> {{ income.amount }} </td>
                      <td> {{ income.locationname }} </td>
                      <td> {{ income.description }} </td>
                      <td> 
                        <button @click="initUpdate(index)" class="btn btn-warning btn-xs">
                          <i class="fas fa-edit"></i> Edit
                        </button>
                        
                        <button @click="deleteIncome(index)" class="btn btn-danger btn-xs">
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



      <div class="modal fade" tabindex="-1" role="dialog" id="add_income_model">
           <div class="modal-dialog modal-lg" role="document">
               <div class="modal-content">
                   <div class="modal-header">
                      <h4 class="modal-title">Add New Income</h4>
                       <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   </div>
                   <div class="modal-body">
                       <div class="alert alert-danger" v-if="errors.length > 0">
                           <ul>
                               <li v-for="error in errors">{{ error }}</li>
                           </ul>
                       </div>
                       <div class="form-group">
                           <label for="amounts">Amount:</label>
                           <input type="number" name="amount" id="amounts" placeholder="Amount" class="form-control"
                                  v-model="income.amount">
                       </div>
                       <div class="form-group">
                           <label for="descriptions">Description:</label>
                           <textarea name="description" id="descriptions" placeholder="Description" class="form-control"
                                  v-model="income.description"></textarea>
                       </div>
                       <div class="form-group">
                           <label for="dates">Date:</label>
                           <input type="date" name="date" id="dates" class="form-control"
                                  v-model="income.date">
                       </div>
                       <div class="form-group">
                           <label for="loc">Location:</label>
                           <select v-model="location_id" class="form-control" id="locationid" name="location_id">
                             <option disabled value="">Please select one</option>
                             <option v-for="(location, index) in locations" :value="location.id" > {{ location.name }} </option>
                           </select>
                           
                       </div>
                   </div>
                   <div class="modal-footer">
                       <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                       <button type="button" @click="createIncome" class="btn btn-primary">Submit</button>
                   </div>
               </div><!-- /.modal-content -->
           </div><!-- /.modal-dialog -->
      </div><!-- /.modal -->
      <div class="modal fade" tabindex="-1" role="dialog" id="update_income_model">
           <div class="modal-dialog modal-lg" role="document">
               <div class="modal-content">
                   <div class="modal-header">
                      <h4 class="modal-title">Update Income</h4>
                      <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                   </div>
                   <div class="modal-body">
                       <div class="alert alert-danger" v-if="errors.length > 0">
                           <ul>
                               <li v-for="error in errors">{{ error }}</li>
                           </ul>
                       </div>
                       <div class="form-group">
                           <label>Amount:</label>
                           <input type="number" placeholder="Amount" class="form-control"
                                  v-model="update_income.amount">
                       </div>
                       <div class="form-group">
                           <label>Description:</label>
                           <textarea placeholder="Description" class="form-control"
                                  v-model="update_income.description"></textarea>
                       </div>
                       <div class="form-group">
                           <label>Date:</label>
                           <input type="date" class="form-control"
                                  v-model="update_income.date">
                       </div>
                       <div class="form-group">
                            <label for="names"> Location :</label>
                              <select class="form-control"  name="location_id" v-model="update_income.income_locationid" id="locationid">
                  
                              <option v-for="(location, index) in locations" :value="location.id" :selected="location.id == update_income.income_locationid"> {{ location.name }}  </option>
                             </select>
                        </div>
                   </div>
                   <div class="modal-footer">
                       <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                       <button type="button" @click="updateIncome" class="btn btn-primary">Submit</button>
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
               income: {
                   amount: '',
                   description: '',
                   date: '',
                  

               },
               locations: [],
                location_id: '',
               errors: [],
               incomes: [],
               update_income: {}
           }
       },
       mounted()
       {
           this.readIncomes();
           this.readLocations();
       },
       methods: {
           deleteIncome(index)
           {
               let conf = confirm("Do you ready want to delete this income?");
               if (conf === true) {
                   axios.delete('/api/setup/income/' + this.incomes[index].id)
                       .then(response => {
                           this.incomes.splice(index, 1);
                       })
                       .catch(error => {
                       });
               }
           },
           initAddIncome()
           {
               $("#add_income_model").modal("show");
           },
           createIncome()
           {
               axios.post('/api/setup/income', {
                   amount: this.income.amount,
                   description: this.income.description,
                   date: this.income.date,
                   location_id: this.location_id,
               })

                   .then(response => {
                       this.reset();
                       this.incomes.push(response.data.income);
                       $("#add_income_model").modal("hide");
                   })
                   .catch(error => {
                       this.errors = [];
                       if (error.response.data.errors && error.response.data.errors.amount) {
                           this.errors.push(error.response.data.errors.amount[0]);
                       }
                       if (error.response.data.errors && error.response.data.errors.description) {
                           this.errors.push(error.response.data.errors.description[0]);
                       }
                       if (error.response.data.errors && error.response.data.errors.date) {
                           this.errors.push(error.response.data.errors.date[0]);
                       }
                   });
           },
           reset()
           {
               this.income.amount = '';
               this.income.description = '';
               this.income.date = '';
           },
           readIncomes()
           {
               axios.get('/api/setup/income')
                   .then(response => {
                       this.incomes = response.data.incomes;
                   });
           },

           readLocations()
           {
               axios.get('/api/setup/location')
                   .then(response => {
                       this.locations = response.data.locations;
                   });
           },

           initUpdate(index)
           {
               this.errors = [];
               $("#update_income_model").modal("show");
               this.update_income = this.incomes[index];
           },
           updateIncome()
           {
               axios.patch('/api/setup/income/' + this.update_income.id, {
                   amount: this.update_income.amount,
                   description: this.update_income.description,
                   date: this.update_income.date,
                   location_id : this.update_income.income_locationid,
               })
                   .then(response => {
                       $("#update_income_model").modal("hide");
                   })
                   .catch(error => {
                       this.errors = [];
                       if (error.response.data.errors.amount) {
                           this.errors.push(error.response.data.errors.amount[0]);
                       }
                       if (error.response.data.errors.description) {
                           this.errors.push(error.response.data.errors.description[0]);
                       }
                       if (error.response.data.errors.date) {
                           this.errors.push(error.response.data.errors.date[0]);
                       }
                   });
           }
       }
   }
</script>