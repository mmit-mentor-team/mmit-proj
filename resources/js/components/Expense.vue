<template>
    <div class="container">
        <div class="row">
            <div class="col-md-12">

                <div class="card shadow mb-4">
                  <div class="card-header py-3">
                    
                    <h3 class="m-0 font-weight-bold text-primary"> Expense List

                      <button data-toggle="modal" data-target="#add_expense_modal" class="btn btn-primary float-right ">
                        <i class="fa fa-plus"></i> Add New Expense
                      </button>

                    </h3>

                  </div>

                  <div class="card-body">
                    <div class="table-responsive">
                      <table class="table table-bordered table-hover" id="table_id">
                        <thead class="bg-primary text-white">
                          <tr class="text-center">
                            <th scope="col">No.</th>
                            <th scope="col">Type</th>
                            <th scope="col">Amount</th>
                            <th scope="col">Description</th>
                            <th scope="col">Date</th>
                            <th scope="col">Attachments</th>
                            <th scope="col">Options</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr v-for="(expense, index) in apiData" :key="expense.id">
                            <td scope="row">{{index + 1}}</td>
                            <td>{{expense.type}}</td>
                            <td>{{expense.amount}}</td>
                            <td>{{expense.description}}</td>
                            <td>{{expense.date}}</td>
                            <td>
                                <div v-if="expense.attachment">
                                    <img :src="myImage" v-for="myImage in expense.attachment.split(',')" width="50" height="50">
                                </div>
                            </td>
                            <td> 
                              <button @click="initialEdit(expense)" class="btn btn-warning btn-xs">
                                <i class="fas fa-edit"></i> Edit
                              </button>
                              
                              <button @click="deleteExpense(index)" class="btn btn-danger btn-xs">
                                <i class="fas fa-trash-alt"></i>  Delete
                              </button>
                            </td>
                          </tr>
                        </tbody>
                        
                      </table>
                    </div>
                  </div>

                </div>

                <!-- Add Modal -->
                <div class="modal fade" id="add_expense_modal" tabindex="-1" role="dialog">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Add Modal</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label for="type">Select Type</label>
                                    <select name="type" class="form-control" id="type" v-model="addData.type">
                                        <option value="PHP">PHP</option>
                                        <option value="Recruitment">Recruitment</option>
                                        <option value="HR">HR</option>
                                        <option value="General">General</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="amount">Amount</label>
                                    <input name="amount" type="number" class="form-control" id="amount" placeholder="Enter Amount" v-model="addData.amount">
                                </div>
                                <div class="form-group">
                                    <label for="description">Description</label>
                                    <textarea name="description" class="form-control" id="description" rows="3" v-model="addData.description"></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="date">Date</label>
                                    <input name="date" type="date" class="form-control" id="date" v-model="addData.date">
                                </div>
                                <div class="form-group">
                                    <label for="add_file">Select file input</label>
                                    <input name="attachments" ref="add_file" type="file" class="form-control-file" id="add_file" multiple @change="fileHandle">
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">
                                    <i class="fa fa-times">  </i>Close
                                </button>
                                <button type="button" class="btn btn-primary" @click="add_expense">
                                    <i class="fa fa-save pr-2">  </i>Add
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
                <!--Edit Modal -->
                <div class="modal fade" id="edit_expense_modal" tabindex="-1" role="dialog">
                    <div class="modal-dialog modal-lg" role="document">
                        <div class="modal-content">
                            <div class="modal-header">
                                <h5 class="modal-title" id="exampleModalLabel">Edit Modal</h5>
                                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                    <span aria-hidden="true">&times;</span>
                                </button>
                            </div>
                            <div class="modal-body">
                                <div class="form-group">
                                    <label for="type">Select Type</label>
                                    <select name="edit_type" class="form-control" id="edit_type" v-model="updateData.type">
                                        <option value="PHP">PHP</option>
                                        <option value="Recruitment">Recruitment</option>
                                        <option value="HR">HR</option>
                                        <option value="General">General</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="amount">Amount</label>
                                    <input name="edit_amount" type="number" class="form-control" id="amount" placeholder="Enter Amount" v-model="updateData.amount">
                                </div>
                                <div class="form-group">
                                    <label for="description">Description</label>
                                    <textarea name="edit_description" class="form-control" id="description" rows="3" v-model="updateData.description"></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="date">Date</label>
                                    <input name="edit_date" type="date" class="form-control" id="date" v-model="updateData.date">
                                </div>
                                <div class="form-group">
                                    <label for="add_file">Select file input</label>
                                    <input name="updated_files" type="file" class="form-control-file" id="edit_file" multiple @change="fileHandleforUpdate">

                                     <div class="col-md-6">
                                      <input type="hidden" name="oldimage" :value="updateData.attachment" id="oldimage">
                                      {{apiData.attachment}}
                                     </div> 
                                   
                                </div>
                            </div>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-default" data-dismiss="modal">
                                    <i class="fa fa-times"></i> Close
                                </button>
                                <button type="submit" class="btn btn-primary" @click="update_expense">
                                    <i class="fa fa-upload"></i> Update
                                </button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</template>
<script>
export default {
    data() {
        return {
            apiData: [],
            addData: {
                type: '',
                amount: '',
                description: '',
                date: '',
                files: []
            },
            updateData: {},
        }
    },

    created() {
        this.readApiData();
    },

    methods: {

        deleteExpense(index)
        {
            let conf = confirm("Do you ready want to delete this expense?");
            if (conf === true) {
                axios.delete('/api/setup/expense/' + this.apiData[index].id)
                       .then(response => {
                           this.apiData.splice(index, 1);
                       })
                       .catch(error => {
                       });
            }
        },

        getImage(attachment){
              return "img/" + attachment;
            },
        readApiData() {
            axios.get('api/setup/expense')
                .then(response => {
                    this.apiData = response.data.expenses;
                })
                .catch(response => {
                    console.log(response);
                });
        },

        fileHandle(e) {
            let addFile = e.target.files;
            this.addData.files = [];

            for (var i = 0; i < addFile.length; i++) {
                this.addData.files.push(addFile[i]);
            }
        },

        add_expense() {
            let formData = new FormData();

            formData.append('type', this.addData.type);
            formData.append('amount', this.addData.amount);
            formData.append('description', this.addData.description);
            formData.append('date', this.addData.date);

            for (var i = 0; i < this.addData.files.length; i++) {
                formData.append(`attachments[${i}]`, this.addData.files[i]);
            }

            axios.post('/api/setup/expense', formData, {
                    headers: {
                        'Content-type': 'multipart/form-data'
                    }
                })
                .then(response => {
                    $('#add_expense_modal').modal('hide');
                    $('.modal-backdrop').remove();
                    this.readApiData();
                })
        },

        initialEdit(editedExpense) {
            this.updateData = JSON.parse(JSON.stringify(editedExpense));
            $('#edit_expense_modal').modal('show');
        },

        fileHandleforUpdate(e) {
            let editedFiles = e.target.files;
            this.updatedFiles = [];

            for (var i = 0; i < editedFiles.length; i++) {
                this.updatedFiles.push(editedFiles[i]);
            }
        },

        update_expense() {
            let myData = new FormData();

            myData.append('type', this.updateData.type);
            myData.append('amount', this.updateData.amount);
            myData.append('description', this.updateData.description);
            myData.append('date', this.updateData.date);
            myData.append('oldimage',this.updateData.attachment);
            myData.append('_method', 'PATCH');

            if (this.updatedFiles) {
                for (var i = 0; i < this.updatedFiles.length; i++) {
                    myData.append(`attachments[${i}]`, this.updatedFiles[i]);
                }
            }

            // for(var temp of myData.entries()){
            //  console.log(temp);
            // }
            // console.log(this.updateData);

            axios.post('/api/setup/expense/' + this.updateData.id, myData, {
                    headers: {
                        'Content-Type': 'multipart/form-data',
                    }
                })
                .then(response => {
                    // console.log(response.status);
                    $('#edit_expense_modal').modal('hide');
                    this.updatedFiles = [];
                    this.updateData = {};
                    this.readApiData();
                })
        }
    }
};

</script>
