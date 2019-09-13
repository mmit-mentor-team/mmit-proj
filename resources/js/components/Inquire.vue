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
            
            <h3 class="m-0 font-weight-bold text-primary"> Inquire List

              <button @click="initAddInquire()" class="btn btn-primary float-right ">
                <i class="fa fa-plus"></i> Add New Inquire
              </button>


            </h3>

          </div>

          <div class="card-body">
            
            <nav>
              <div class="nav nav-tabs" id="nav-tab" role="tablist">
                <a class="nav-item nav-link" v-bind:class="[ activetab === 'Accept Student Enquiry ( HR - YGN )' ? 'active' : '' ]" id="nav-hr_ygn-tab" data-toggle="tab" href="#nav-hr_ygn" role="tab" aria-controls="nav-hr_ygn" aria-selected="true" v-for="(permission,index) in permissions" v-if="permission.name == 'Accept Student Enquiry ( HR - YGN )'">
                  HR/ Admin (YGN)
                </a>

                <a class="nav-item nav-link" v-bind:class="[ activetab === 'Accept Student Enquiry ( HR - MDY )' ? 'active' : '' ]" id="nav-hr_mdy-tab" data-toggle="tab" href="#nav-hr_mdy" role="tab" aria-controls="nav-hr_mdy" aria-selected="false" v-for="(permission,index) in permissions" v-if="permission.name == 'Accept Student Enquiry ( HR - MDY )'">
                  HR/ Admin (MDY)
                </a>

                <a class="nav-item nav-link" v-bind:class="[ activetab === 'Accept Student Enquiry ( PHP Bootcamp - YGN )' ? 'active' : '' ]" id="nav-php_bootcamp-tab" data-toggle="tab" href="#nav-php_bootcamp" role="tab" aria-controls="nav-php_bootcamp" aria-selected="false" v-for="(permission,index) in permissions" v-if="permission.name == 'Accept Student Enquiry ( PHP Bootcamp - YGN )'">
                  PHP Bootcamp 
                </a>

                <a class="nav-item nav-link" v-bind:class="[ activetab === 'Accept Student Enquiry ( iOS - YGN )' ? 'active' : '' ]" id="nav-ios-tab" data-toggle="tab" href="#nav-ios" role="tab" aria-controls="nav-ios" aria-selected="false" v-for="(permission,index) in permissions" v-if="permission.name == 'Accept Student Enquiry ( iOS - YGN )'">
                  iOS 
                </a>

              </div>
            </nav>

            <div class="tab-content mt-3" id="nav-tabContent">

              <div class="tab-pane fade show" v-bind:class="[ activetab === 'Accept Student Enquiry ( HR - YGN )' ? 'active' : '' ]" id="nav-hr_ygn" role="tabpanel" aria-labelledby="nav-hr_ygn-tab">

                <div class="table-responsive">
                  <table class="table table-bordered table-hover" id="table_id" cellspacing="0" v-if="hr_ygn_inquires.length>0">
                     <thead class="bg-primary text-white">
                        <tr class="text-center">
                          <th> No </th>
                          <th> Receive No </th>
                          <th> Name </th>
                          <th> Phone No:</th>
                          <th> Action </th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr v-for="(hr_ygn_inquire, index) in hr_ygn_inquires">
                          <td> {{ index + 1 }} </td>
                          <td> {{ hr_ygn_inquire.receiveno}}</td>
                          <td> {{ hr_ygn_inquire.name }} </td>
                          <td>  {{ hr_ygn_inquire.phno}}</td>
                          
                          <td> 
                            <button @click="printInquire(index, hr_ygn_inquire.courseid)" class="btn btn-success btn-xs text-white">
                              <i class="fa fa-print"></i> Print
                            </button> 

                            <button @click="initDetail(index, hr_ygn_inquire.courseid, hr_ygn_inquire.s_id)" class="btn btn-info btn-xs text-white">
                                  <i class="fa fa-eye"></i> Detail
                            </button>

                            <button @click="initUpdate(index, hr_ygn_inquire.courseid)" class="btn btn-warning btn-xs">
                              <i class="fas fa-edit"></i> Edit
                            </button>
                            
                            <button @click="deleteInquire(index, hr_ygn_inquire.courseid)" class="btn btn-danger btn-xs">
                              <i class="fas fa-trash-alt"></i>  Delete
                            </button>
                          </td>
                        </tr>
                      </tbody>
                    
                  </table>
                </div>
                
              </div>

              <div class="tab-pane fade" v-bind:class="[ activetab === 'Accept Student Enquiry ( HR - MDY )' ? 'show active' : '' ]" id="nav-hr_mdy" role="tabpanel" aria-labelledby="nav-hr_mdy-tab">

                <div class="table-responsive">
                  <table class="table table-bordered table-hover" id="table_id" cellspacing="0" v-if="hr_mdy_inquires.length>0">
                    <thead class="bg-primary text-white">
                        <tr class="text-center">
                          <th> No </th>
                          <th> Receive No </th>
                          <th> Name </th>
                          <th> Phone No:</th>
                          <th> Action </th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr v-for="(hr_mdy_inquire, index) in hr_mdy_inquires">
                          <td> {{ index + 1 }} </td>
                          <td> {{ hr_mdy_inquire.receiveno}}</td>
                          <td> {{ hr_mdy_inquire.name }} </td>
                          <td>  {{ hr_mdy_inquire.phno}}</td>
                          
                          <td> 
                            <button @click="printInquire(index, hr_mdy_inquire.courseid)" class="btn btn-success btn-xs text-white">
                              <i class="fa fa-print"></i> Print
                            </button> 

                            <button @click="initDetail(index, hr_mdy_inquire.courseid, hr_mdy_inquire.s_id)" class="btn btn-info btn-xs text-white">
                              <i class="fa fa-eye"></i> Detail
                            </button>

                            <button @click="initUpdate(index,hr_mdy_inquire.courseid)" class="btn btn-warning btn-xs">
                              <i class="fas fa-edit"></i> Edit
                            </button>
                            
                            <button @click="deleteInquire(index,hr_mdy_inquire.courseid)" class="btn btn-danger btn-xs">
                              <i class="fas fa-trash-alt"></i>  Delete
                            </button>
                          </td>
                        </tr>
                      </tbody>
                    
                  </table>
                </div>
                
              </div>
              <div class="tab-pane fade" v-bind:class="[ activetab === 'Accept Student Enquiry ( PHP Bootcamp - YGN )' ? 'show active' : '' ]" id="nav-php_bootcamp" role="tabpanel" aria-labelledby="nav-php_bootcamp-tab">
                 <div class="table-responsive">
                    <table class="table table-bordered table-hover" id="table_id" cellspacing="0" v-if="php_inquires.length > 0">
                      <thead class="bg-primary text-white">
                        <tr class="text-center">
                          <th> No </th>
                          <th> Receive No </th>
                          <th> Name </th>
                          <th> Phone No:</th>
                          <th> Action </th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr v-for="(php_inquire, index) in php_inquires">
                          <td> {{ index + 1 }} </td>
                          <td> {{ php_inquire.receiveno}}</td>
                          <td> {{ php_inquire.name }} </td>
                          <td>  {{ php_inquire.phno}}</td>
                          
                         
                          <td> 
                            <button @click="printInquire(index, php_inquire.courseid)" class="btn btn-success btn-xs text-white">
                              <i class="fa fa-print"></i> Print
                            </button> 

                            <button @click="initDetail(index, php_inquire.courseid, php_inquire.s_id)" class="btn btn-info btn-xs text-white">
                                <i class="fa fa-eye"></i> Detail
                            </button>

                            <button @click="initUpdate(index,php_inquire.courseid)" class="btn btn-warning btn-xs">
                              <i class="fas fa-edit"></i> Edit
                            </button>
                            
                            <button @click="deleteInquire(index,php_inquire.courseid)" class="btn btn-danger btn-xs">
                              <i class="fas fa-trash-alt"></i>  Delete
                            </button>
                          </td>
                        </tr>
                      </tbody>
                      
                    </table>
                 </div>
                   
              </div>

              <div class="tab-pane fade" v-bind:class="[ activetab === 'Accept Student Enquiry ( iOS - YGN )' ? 'show active' : '' ]" id="nav-ios" role="tabpanel" aria-labelledby="nav-ios-tab">

                <div class="table-responsive">
                  <table class="table table-bordered table-hover" id="table_id" cellspacing="0" v-if="ios_inquires.length>0">
                    <thead class="bg-primary text-white">
                        <tr class="text-center">
                          <th> No </th>
                          <th> Receive No </th>
                          <th> Name </th>
                          <th> Phone No:</th>
                          <th> Action </th>
                        </tr>
                      </thead>
                      <tbody>
                        <tr v-for="(ios_inquire, index) in ios_inquires">
                          <td> {{ index + 1 }} </td>
                          <td> {{ ios_inquire.receiveno}}</td>
                          <td> {{ ios_inquire.name }} </td>
                          <td>  {{ ios_inquire.phno}}</td>
                          
                          <td>
                            <button @click="printInquire(index, ios_inquire.courseid)" class="btn btn-success btn-xs text-white">
                              <i class="fa fa-print"></i> Print
                            </button> 
                            
                            <button @click="initDetail(index, ios_inquire.courseid, ios_inquire.s_id)" class="btn btn-info btn-xs text-white">
                                  <i class="fa fa-eye"></i> Detail
                            </button>
                            
                            <button @click="initUpdate(index, ios_inquire.courseid)" class="btn btn-warning btn-xs">
                              <i class="fas fa-edit"></i> Edit
                            </button>
                            
                            <button @click="deleteInquire(index, ios_inquire.courseid)" class="btn btn-danger btn-xs">
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

      </div>
    </div>
    
    <div class="modal fade" tabindex="-1" role="dialog" id="add_inquire_model">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Add New Inquire</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
            
          <div class="modal-body">
            <div class="alert alert-danger" v-if="errors.length > 0">
              <ul>
                  <li v-for="error in errors">{{ error }}</li>
              </ul>
            </div>

            <div class="form-group">
              <label for="names">Receiveno:</label>
                <input type="text" name="receiveno" id="receiveno" placeholder="receiveno" class="form-control" v-model="receiveno" readonly>
            </div>
            
            <div class="form-group">
              <label for="names">Name:</label>
                <input type="text" name="name" id="name" placeholder="Inquire Name" class="form-control" v-model="inquire.name">
            </div>

            <div class="form-group">
              <label for="names">Course:</label>
               
               <select v-model="course" name="course_id" id="course_id" class="form-control"
                @change="readDurations" >
                  <option disabled value="">Please select one</option>
                  <option v-for ="(course, index) in courses"  :value="course.id">
                    {{ course.name }} ( {{ course.cityname }} )
                  </option>
                </select>
                
            </div>

            <div class="form-group">
              <label for="names">Duration:</label>
                <select v-model="duration" name="duration_id" id="duration_id" class="form-control" @change="readSections">
                  <option disabled value="">Please select one</option>
                  <option v-for ="(duration, index) in durations"  :value="duration.id">
                    {{ duration.days }} ( {{ duration.time }} )
                    [ {{ duration.during }} ]

                  </option>
                </select>
            </div>

            <div class="form-group">
              <label for="names">Sections:</label>
                <select v-model="section" name="section_id" id="section_id" class="form-control" >
                  <option disabled value="">Please select one</option>
                  <option v-for ="(section, index) in sections"  :value="section.id">

                    <div class="row">
                      <div class="col-md-3">
                        {{ section.title }}
                      </div>

                      <div class="col-md-3">
                        {{ section.durations.time }}
                      </div> 

                      <div class="col-md-3">
                        {{ section.during }}
                      </div>

                      <div class="col-md-3">
                        {{ section.startdate}} - {{ section.enddate }}
                      </div> 

                    </div>

                  </option>
                </select>
            </div>

             <div class="form-group camphide d-none">
              <label for="names">Camp:</label>
              <br>

              <label for="nocamp"  class="mx-2">No Camp:</label>
              <input type="radio" value="No Camp" id="nocamp"  v-model="inquire.camp">

              <label for="malecamp" class="mx-2">Male Camp:</label>
              <input type="radio" value="Male Camp"  id="malecamp"  v-model="inquire.camp">

              <label for="femalecamp"  class="mx-2">Female Camp:</label>
              <input type="radio" value="Female Camp" id="femalecamp" v-model="inquire.camp">
            </div>


             <div class="form-group">
              <label for="names">Age:</label>
                <input type="number" name="name" id="name" placeholder="Age" class="form-control" v-model="inquire.age">
            </div>

             <div class="form-group">
              <label for="names">date of Birth:</label>
                <input type="date" name="status" id="dob" placeholder="Date of Birth" class="form-control" v-model="inquire.dob">
            </div>

           <div class="form-group">
             
              <label for="male" class="mx-2">Male:</label>
              <input type="radio" value="male"  id="male" placeholder="Male"  v-model="inquire.gender">
              <label for="female"  class="mx-2">Female:</label>
              <input type="radio" value="female" id="female" placeholder="Female"  v-model="inquire.gender">
                
            </div>

            <div class="form-group">
              <label for="names">Address:</label>
                <input type="text" name="address" id="address" placeholder="Address" class="form-control" v-model="inquire.address">
            </div>

            <div class="form-group">
              <label for="names">Township:</label> 
                <select v-model="township_id" name="township" class="form-control">
                    <option disabled value="">Please select one</option>
                  <option v-for ="(township, index) in townships" :value="township.id">{{ township.name }}</option>
                </select>
            </div>

            <div class="form-group">
              <label for="names">Phone no:</label>
                <input type="text" name="phoneno" id="phoneno" placeholder="Phone number" class="form-control" v-model="inquire.phoneno">
            </div>
          
            <div class="form-group">
              <label for="names">Email:</label>
                <input type="email" name="email" id="email" placeholder="Email" class="form-control" v-model="inquire.email">
            </div>

             <div class="form-group">
              <label for="names">Payment Date:</label>
                <input type="Date" name="paymentdate" id="paymentdate" placeholder="Payment Date" class="form-control" v-model="inquire.paymentdate">
            </div>

             <div class="form-group">
              <label for="names">Payment Amount:</label>
                <input type="number" name="paymentamount" id="paymentamount" placeholder="Payment Amount" class="form-control" v-model="inquire.paymentamount">
                 
            </div>

             <div class="form-group">
              <label for="names">Education:</label>
                <input type="text" name="education" id="education" placeholder="Education" class="form-control" v-model="inquire.education">
            </div>

            <div class="form-group">
              <label for="names">Accepted Year:</label>
                <input type="Date" name="acceptedyear" id="acceptedyear" placeholder="Accepted Year" class="form-control" v-model="inquire.acceptedyear">
            </div>

           
           

            <div class="form-group">
              <label for="names">Position:</label>
                <input type="text" name="position" id="position" placeholder="Position" class="form-control" v-model="inquire.position">
            </div>

            <div class="form-group">
              <label for="names">Remark:</label>
                
                <textarea  name="remark" id="remark" placeholder="Remark" class="form-control" v-model="inquire.remark"></textarea>
            </div>

            
            

          

           </div> 
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">
              <i class="fa fa-times"></i> Close
            </button>
            
            <button type="button" @click="createInquire" class="btn btn-primary">
              <i class="fa fa-save pr-2">  </i> Save
            </button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <div class="modal fade" tabindex="-1" role="dialog" id="update_inquire_model">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Update Inquire</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
          
          <div class="modal-body">
            <div class="alert alert-danger" v-if="errors.length > 0">
              <ul>
                <li v-for="error in errors">{{ error }}</li>
              </ul>
            </div>


                <input type="hidden" class="form-control" v-model="update_inquire.userid" name="userid" id="userid">
            
             <div class="form-group">
              <label>Name:</label>
                <input type="text" placeholder="township Name" class="form-control" v-model="update_inquire.name">
            </div>

             <div class="form-group">
              <label for="names">Course:</label>
               
               <select v-model="course" name="course_id" id="course_id" class="form-control"
                @change="readDurations" >
                  <option disabled value="">Please select one</option>
                  <option v-for ="(course, index) in courses"  :value="course.id">
                    {{ course.name }} ( {{ course.cityname }} )
                  </option>
                </select>
                
            </div>

            <div class="form-group">
              <label for="names">Duration:</label>
                <select v-model="duration" name="duration_id" id="duration_id" class="form-control" @change="readSections">
                  <option disabled value="">Please select one</option>
                  <option v-for ="(duration, index) in durations"  :value="duration.id">
                    {{ duration.days }} ( {{ duration.time }} )
                    [ {{ duration.during }} ]

                  </option>
                </select>
            </div>

             <div class="form-group">
              <label for="names"> Section :</label>
                <select class="form-control"  name="section_id" v-model="update_inquire.sectionid" id="cityid">
                  
                  <option v-for="(section, index) in sections" :value="section.id" :selected=" section.id == update_inquire.sectionid "> {{ section.title }}  </option>
                </select>
            </div>

            <div class="form-group">
              <label for="names">Age:</label>
                <input type="number" name="name" id="name" placeholder="Age" class="form-control" v-model="update_inquire.age">
            </div>

             <div class="form-group">
              <label for="names">date of Birth:</label>
                <input type="date" name="status" id="dob" placeholder="Date of Birth" class="form-control" v-model="update_inquire.dob">
            </div>

           <div class="form-group">
             
              <label for="gender" class="mx-2">Male:</label>
                <input type="radio" value="male"  id="male" placeholder="Male"  v-model="update_inquire.gender">
                <label for="gender"  class="mx-2">Female:</label>
                <input type="radio" value="female" id="female" placeholder="Female"  v-model="update_inquire.gender">
                <label for="gender"  class="mx-2">Other:</label>
                <input type="radio" value="other" id="other" placeholder="Other"  v-model="update_inquire.gender">
            </div>

             <div class="form-group">
              <label for="names">Address:</label>
                <input type="text" name="address" id="address" placeholder="Address" class="form-control" v-model="update_inquire.address">
            </div>
             <div class="form-group">
              <label for="names">Phone no:</label>
                <input type="text" name="phoneno" id="phoneno" placeholder="Phone number" class="form-control" v-model="update_inquire.phno">
            </div>
          
           <div class="form-group">
              <label for="names">email:</label>
                <input type="email" name="email" id="email" placeholder="Email" class="form-control" v-model="update_inquire.email">
            </div>
             <div class="form-group">
              <label for="names">Payment Date:</label>
                <input type="Date" name="paymentdate" id="paymentdate" placeholder="Payment Date" class="form-control" v-model="update_inquire.installmentdate">
            </div>
             <div class="form-group">
              <label for="names">Payment Amount:</label>
                <input type="number" name="paymentamount" id="paymentamount" placeholder="Payment Amount" class="form-control" v-model="update_inquire.installmentamount">
                 
            </div>
             <div class="form-group">
              <label for="names">Remark:</label>
                
                <textarea  name="remark" id="remark" placeholder="Remark" class="form-control" v-model="update_inquire.remark"></textarea>
            </div>
             <div class="form-group">
              <label for="names">Position:</label>
                <input type="text" name="position" id="position" placeholder="Position" class="form-control" v-model="update_inquire.position">
            </div>
             <div class="form-group">
              <label for="names">Camp:</label>
                <input type="text" name="camp" id="camp" placeholder="Camp" class="form-control" v-model="update_inquire.camp">
            </div>
             <div class="form-group">
              <label for="names">Education:</label>
                <input type="text" name="education" id="education" placeholder="Education" class="form-control" v-model="update_inquire.education">
            </div>
             <div class="form-group">
              <label for="names">Accepted Year:</label>
                <input type="Date" name="acceptedyear" id="acceptedyear" placeholder="Accepted Year" class="form-control" v-model="update_inquire.acceptedyear">
            </div>

           

             <div class="form-group">
              <label for="names"> Township :</label>
                <select class="form-control"  name="township_id" v-model="update_inquire.townshipid" id="townshipid">
                  
                  <option v-for="(township, index) in townships" :value="township.id" :selected="township.id == update_inquire.townshipid"> {{ township.name }}  </option>
                </select>
            </div>
          </div>
              
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">
              <i class="fa fa-times"></i> Close
            </button>
                
            <button type="button" @click="updateInquire" class="btn btn-primary">
              <i class="fa fa-upload"></i> Update
            </button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <div class="modal fade" tabindex="-1" role="dialog" id="detail_inquire_model">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">{{ detail_inquire.receiveno }}</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
          <div class="modal-body">
                   
                   <!-- {{detail_staff}} -->
              <div class="row mt-3">
                <div class="col-md-6 "> Name </div>
                <div class="col-md-6"> {{detail_inquire.name}} </div>
              </div>
              
              <div class="row mt-3">
                <div class="col-md-6 "> Camp </div>
                <div class="col-md-6"> {{detail_inquire.camp}} </div>
              </div>
              
              <div class="row mt-3">
                <div class="col-md-6"> Age </div>
                <div class="col-md-6"> {{detail_inquire.age}} </div>
              </div>

              <div class="row mt-3">
                <div class="col-md-6"> Date of Birth </div>
                <div class="col-md-6"> {{detail_inquire.dob}} </div>
              </div>

              <div class="row mt-3">
                <div class="col-md-6"> Gender </div>
                <div class="col-md-6"> {{detail_inquire.gender}} </div>
              </div>

              <div class="row mt-3">
                <div class="col-md-6"> Address </div>
                <div class="col-md-6"> {{detail_inquire.address}} </div>
              </div>
               
              <div class="row mt-3">
                <div class="col-md-6"> Phone number </div>
                <div class="col-md-6"> {{detail_inquire.phno}} </div>
              </div>

              <div class="row mt-3">
                <div class="col-md-6"> Email </div>
                <div class="col-md-6"> {{detail_inquire.email}} </div>
              </div>

              <div class="row mt-3">
                <div class="col-md-6"> Position </div>
                <div class="col-md-6"> {{detail_inquire.position}} </div>
              </div>

              <div class="row mt-3">
                <div class="col-md-6"> Remark </div>
                <div class="col-md-6" > {{detail_inquire.remark}} </div>
              </div>

              <div class="row mt-3">
                <div class="col-md-6"> Installment Date </div>
                <div class="col-md-6"> {{detail_inquire.installmentdate}} </div>
              </div>

              <div class="row mt-3">
                <div class="col-md-6"> InsatallmentAmount </div>
                <div class="col-md-6"> {{detail_inquire.installmentamount}} </div>
              </div>

            <div class="row mt-5">
              <div class="col-md-12">
                <div class="table-responsive">
                  <table class="table table-bordered">
                    <thead>
                      <tr>
                        <th> 
                          <h3> {{ detail_inquire.sectiontitle }} </h3>
                        </th>
                        <th>
                          {{ detail_inquire.s_codeno }}
                        </th>
                      </tr>
                    </thead>
                    <tbody>

                      <tr>
                        <td rowspan="2">
                          <i class="far fa-calendar"></i>
                          {{ detail_inquire.s_startdate }}

                          &nbsp;&nbsp;&nbsp;

                          <i class="far fa-calendar"></i>
                          {{ detail_inquire.s_enddate }}

                        </td>
                        <td>
                          <i class="far fa-clock"></i>
                          &nbsp;&nbsp;
                          {{ detail_inquire.time }}
                        </td>
                        
                      </tr>
                      <tr>
                        <td> 
                          <i class="fas fa-chalkboard-teacher"></i>
                          &nbsp;&nbsp;
                          {{ teacherlist }} 
                        </td>
                      </tr>

                    </tbody>
                  </table>
                </div>
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
    props: ["permissions","active_tab"],

       data(){
           return {
               inquire: {
                name:''
               },
               errors: [],
               townships: [],
               sections: [],
               hr_ygn_inquires: [],
               hr_mdy_inquires: [],
               php_inquires:[],
               ios_inquires:[],
               
               durations:[],
               add_noti:false,
               update_noti:false,
               delete_noti:false,
               message:'',
               township_id:'',
               section_id:'',
               section:'',
               course_id:'',
               course:'',
               duration:'',
               inquires: [],
               sections1:[],
               courses:[],
               
               receiveno:'',
               lastinquire:{},
               update_inquire: {},
               detail_inquire: {},
               print_inquire:{},
               teacherlist : [],
               activetab: 'Accept Student Enquiry ( PHP Bootcamp - YGN )',
           }
       },
       mounted()
       {
           this.activetab = this.permissions[0].name;
           this.readInquire();
           this.readTownship();
           this.readSections();
           this.readSection();
           this.readCourses();
           this.readDurations();
           this.callFunction();
           this.getDate();

       },
       methods: {
           deleteInquire(index, courseid)
           {
              let conf = confirm("Do you ready want to delete this city?");
              if (conf === true) 
              {
                var inquire_data;
                if (courseid == 1)  // hr_ygn_sections
                {
                  inquire_data = this.hr_ygn_inquires[index].id
                }
                else if (courseid == 2 ) // hr_mdy_sections
                {
                  inquire_data = this.hr_mdy_inquires[index].id
                }
                else if (courseid == 3) // php_sections
                {
                  inquire_data = this.php_inquires[index].id
                  
                }
                else
                {
                  inquire_data = this.ios_inquires[index].id
                }

                axios.delete('/api/setup/inquire/' + inquire_data)
                       .then(response => {
                           this.inquires.splice(index, 1);
                           this.delete_noti=true;
                           this.message="Existing Inquire has been sucessfully deleted!!";
                       })
                       .catch(error => {
                       });
              }
           },
           initAddInquire()
           {
               $("#add_inquire_model").modal("show");
           },
            getDate()
            {
              var d=new Date();
              //this.today=d.getDate()+"-"+d.getMonth()+"-"+d.getFullYear();
              this.today=d.toLocaleDateString();
              this.inquire.paymentdate=this.today;
              $('#addpaymentdate').val(d);
            },

           createInquire()

           {
               axios.post('/api/setup/inquire', {
                   name: this.inquire.name,
                   receiveno:this.receiveno,
                   course: this.course,
                   section_id: this.section,
                   camp: this.inquire.camp,
                   age: this.inquire.age,
                   dob: this.inquire.dob,
                   gender: this.inquire.gender,
                   address: this.inquire.address,
                   township_id: this.township_id,
                   phoneno: this.inquire.phoneno,
                   email: this.inquire.email,
                   paymentdate: this.inquire.paymentdate,
                   paymentamount: this.inquire.paymentamount,
                   education: this.inquire.education,
                   acceptedyear: this.inquire.acceptedyear,
                   position: this.inquire.position, 
                   remark: this.inquire.remark,
                  // course_id: this.course_id,           
               })
                   .then(response => {
                       this.reset();

                       var courseid = response.course_id;

                       let inquire_data=[];
                        
                        if (courseid == 1)  // hr_ygn_sections
                        {
                          this.hr_ygn_inquires.push(response.inquire);
                          inquire_data = this.hr_ygn_inquires;
                        }
                        else if (courseid == 2 ) // hr_mdy_sections
                        {
                          this.hr_mdy_inquires.push(response.inquire);
                          inquire_data = this.hr_mdy_inquires;
                        }
                        else if (courseid == 3) // php_sections
                        {
                          this.php_inquires.push(response.inquire);
                          inquire_data = this.php_inquires;
                        }
                        else
                        {
                          this.ios_inquires.push(response.inquire);
                          inquire_data = this.ios_inquires;
                        }
                      console.log('php inquire data => '+this.php_inquires);
                      console.log('A Paw Mhar => '+ inquire_data);

                       this.add_noti=true;
                       this.message="New Inquire has been sucessfully added!!";
                       $("#add_inquire_model").modal("hide");
                       this.readInquire();
                       this.callFunction();

                       console.log(inquire_data);

                       var id = inquire_data.length - 1;

                       // console.log(id);

                       // this.printInquire(id, courseid);

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
               this.inquire.name = '';
           },
           readInquire()
           {
               axios.get('/api/setup/inquire')
                   .then(response => {
                       this.inquires = response.data.inquires;
                       this.hr_ygn_inquires = response.data.hr_ygn_inquires;
                       this.hr_mdy_inquires = response.data.hr_mdy_inquires;
                       this.php_inquires = response.data.php_inquires;
                       this.ios_inquires = response.data.ios_inquires;

                       // console.log("php section =>",this.php_sections);
                       
                       this.noti=false;
                       this.notiup=false;
                       this.notidel=false;
                   });
           },
            readCourses()
           {
               axios.get('/api/setup/course')
                   .then(response => {
                       this.courses = response.data.courses;
                       //console.log(response.data.teachers);
                   });
           },

          readSection(){
      

            axios.get(`/api/setup/section`)
                   .then(response => {
                       //console.log(response.data.sections);
                       this.sections=response.data.sections

                   });
                  this.setZero();
                 
          
        },

        printInquire(index, courseid)
        {
          var inquire_data;
          if (courseid == 1)  // hr_ygn_sections
          {
            inquire_data = this.hr_ygn_inquires[index]
          }
          else if (courseid == 2 ) // hr_mdy_sections
          {
            inquire_data = this.hr_mdy_inquires[index]
          }
          else if (courseid == 3) // php_sections
          {
            inquire_data = this.php_inquires[index]
          }
          else
          {
            inquire_data = this.ios_inquires[index]
          }
          console.log(inquire_data);
          this.print(inquire_data);

        },

        print(index)
           {
            console.log(index);
            //  location.href="interview/"+id;
            this.print_inquire = index;
            console.log(this.print_inquire);
            console.log(this.print_inquire.course);

            let stylesHtml = '';
            for (const node of [...document.querySelectorAll('link[rel="stylesheet"], style')]) {
              stylesHtml += node.outerHTML;
            }

            var currentDate = new Date().toJSON().slice(0,10).replace(/-/g,' / ');

            var course = this.print_inquire.course;
            var title = this.print_inquire.codeno;
            var receiveno = this.print_inquire.receiveno;
            var name = this.print_inquire.name;
            var coursefees = this.print_inquire.coursefees;
            var installment = this.print_inquire.installmentamount;
            var due = parseInt(coursefees) - parseInt(installment);
            var startdate = this.print_inquire.startdate;
            var time = this.print_inquire.time;


            const WinPrint = window.open();
            WinPrint.document.write(`<!DOCTYPE html>
            <html>
              <head>
                ${stylesHtml}
              </head>
              <body>
                <div class="container">
                  <div class="row">
                    <div class="col-md-7">
                      <h2 class="font-weight-bold"> <i> Myanmar IT Consulting Receive </i> </h2>
                      <p class="mb-5"> Myanmar IT Consulting, Room No.8-A, MTP Condo, Insein Rd </p>
                      <p class="mt-5 pt-5"> <b> Phone : </b> 09-772750502 / 09-772750503 / 09-772750504 / 09450875999 </p>
                      <p> <b> Email :  </b> info@myanmaritc.com </p>
                    </div>
                    <div class="col-md-5">

                      <div class="row">
                        <div class="col-md-12 border">
                          <p class="pt-3 text-center"> ${receiveno} </p>
                        </div>
                      </div>
                      
                      <div class="row">
                        <div class="col-md-3 text-uppercase"> 
                          Date :
                        </div>
                        <div class="col-md-9">
                          <p> ${currentDate} </p>  
                        </div>
                      </div>

                      <div class="row">
                        <div class="col-md-3 text-uppercase"> 
                          Invoice#
                        </div>
                        <div class="col-md-9">
                          <p> ${course} <br> 
                          (  ${title} ) </p> 
                        </div>
                      </div>

                      <div class="row">
                        <div class="col-md-3 text-uppercase">
                          For
                        </div>
                        <div class="col-md-9 img-fluid">
                          <img src="img/mmit_receivelogo_one.png" style="width:200px; height:200px;">  
                        </div>
                      </div>
                    </div>
                  </div>

                  <div class="row mt-5">
                    <div class="col-md-12">
                      <table class="table">
                        <thead class="text-white bg-dark">
                          <tr> 
                            <th class="text-uppercase" colspan="2"> Description </th>
                            <th class="text-uppercase"> Amount </th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr>
                            <td> Training Fess  </td>
                            <td> ${name} </td>
                            <td> ${coursefees} Kyats </td>  
                          </tr>

                          <tr>
                            <td> Padin Amount </td>
                            <td> ${currentDate} </td>
                            <td> ${installment} Kyats </td>
                          </tr>

                          <tr>
                            <td colspan="2"> Due </td>
                            <td> ${due} Kyats </td>
                          </tr>

                        </tbody>
                      </table>
                    </div>
                  </div>

                  <div class="row mt-5">
                    <div class="col-md-12">
                      <i> မှတ်ချက် - သင်တန်းအပ်ပြီး ပြန်ထွက်လျင် သင်တန်းကြေးပြန်မအမ်းပါ။  </i>
                    </div>
                  </div>

                  <div class="row mt-5">
                    <div class="col-md-8">
                      <p>
                        <b> Training Start Date : </b>
                        ${startdate}
                      </p> 

                      <p>
                        <b> Time : </b>
                        ${time}
                      </p> 

                    </div>
                    <div class="col-md-4">
                      <div class="row">
                        <div class="col-md-12 border">
                          <p class="pt-3 text-center text-uppercase font-weight-bold" style="letter-spacing: 10px; font-size:18px"> Paid </p>
                        </div>
                      </div>

                    </div>
                  </div>

                  <div class="row mt-5"> 
                    <div class="col-md-12">
                      <b style="font-size: 20px"> Bank Account Information : </b>
                      
                      <p style="font-size: 18px"> <b> CB </b> Bank ATM Card Accountant -  0002 6001 0011 0329
                      </p>

                      <p style="font-size: 18px"> <b> AYA </b> Bank ATM Card Accountant -  0063 2010 1000 9409
                      </p>

                      <p style="font-size: 18px"> <b> KBZ </b> Bank ATM Card Accountant -  999 307 999 2846 6801
                      </p>
                      
                      <p style="font-size: 18px"> Account Holder Name : U Yan Myoe Aung </p>

                    </div>
                  </div>

                  <div class="row mt-5">
                    <h3 class="font-weight-bold text-uppercase"> Thank You For Your Business! </h3>
                  </div>
    
                </div>
                
              </body>
            </html>`);

            WinPrint.document.close();
            WinPrint.focus();
            WinPrint.print();
            WinPrint.close();

           },

        setZero(){
          console.log(this.duration);
          this.duration='';
          this.section='';
        },

           
        readSections(){
          this.duration_id=this.duration;
          if(this.duration_id){

            axios.get(`/api/setup/section/${this.duration_id}`)
                   .then(response => {
                       //console.log(response.data.sections);
                       this.sections=response.data.sections
                   });
                   
                 }else{
                  console.log('nothing');
                 }
          
        },

            readDurations()
           {
               axios.get(`/api/setup/duration/${this.course}`)
                   .then(response => {
                       this.durations = response.data.durations;
                    
                      console.log(response.data.durations);
                      console.log(this.course);

                   });
                   // // courseid = this.course;
                   // console.log(this.course);
                   if (this.course == 3) {
                    $('.camphide').removeClass('d-none');
                    $('.camphide').show();

                   }else{

                      $('.camphide').hide();
                   }
           },
           initUpdate(index,courseid)
           {
               this.errors = [];

                var inquire_data;
               console.log(courseid);
              if (courseid == 1)  // hr_ygn_sections
              {
                inquire_data = this.hr_ygn_inquires[index]
              }
              else if (courseid == 2 ) // hr_mdy_sections
              {
                inquire_data = this.hr_mdy_inquires[index]
              }
              else if (courseid == 3) // php_sections
              {
                inquire_data = this.php_inquires[index]
                
              }
              else
              {
                inquire_data = this.ios_inquires[index]
              }

             

               $("#update_inquire_model").modal("show");
               
               
               this.update_inquire = inquire_data;
               //console.log(this.update_inquire.section);
           },
           initDetail(index, c_id, s_id)
           {
              var inquire_data;
              console.log(index);
               this.errors = [];

               axios.get(`/api/setup/inquire/teacherlist/${s_id}`)
                   .then(response => {
                       this.teacherlist = response.data.teacherlist.teachers;
                       console.log(this.teacherlist);

                   });

              if (c_id == 1)  // hr_ygn_sections
              {
                inquire_data = this.hr_ygn_inquires[index]
              }
              else if (c_id == 2 ) // hr_mdy_sections
              {
                inquire_data = this.hr_mdy_inquires[index]
              }
              else if (c_id == 3) // php_sections
              {
                inquire_data = this.php_inquires[index]
                
              }
              else
              {
                inquire_data = this.ios_inquires[index]
              }

              console.log(inquire_data);

               $("#detail_inquire_model").modal("show");
               this.detail_inquire = inquire_data;
               // this.detail_inquire.push(teacherlist);
           },
           updateInquire()
           {
               axios.patch('/api/setup/inquire/' + this.update_inquire.id, {
                 userid: this.update_inquire.userid,
                  name: this.update_inquire.name,
                   gender: this.update_inquire.gender,
                   dob: this.update_inquire.dob,
                   age: this.update_inquire.age,
                   address: this.update_inquire.address,
                   phno: this.update_inquire.phno,
                   email: this.update_inquire.email,
                   installmentdate: this.update_inquire.installmentdate,
                   installmentamount: this.update_inquire.installmentamount,
                   remark: this.update_inquire.remark,
                   position: this.update_inquire.position,
                   camp: this.update_inquire.camp,
                   education: this.update_inquire.education,
                   acceptedyear: this.update_inquire.acceptedyear,
                   section_id: this.update_inquire.sectionid, 
                   township_id: this.update_inquire.townshipid,
               })
                   .then(response => {
                       this.update_noti=true;
                       this.message="Existing city has been sucessfully updated!!";
                       $("#update_inquire_model").modal("hide");
                       this.readInquire();
                   })

                   .catch(error => {
                       this.errors = [];
                       if (error.response.data.errors.name) {
                           this.errors.push(error.response.data.errors.name[0]);
                       }
                   });
           },
          
             readTownship()
           {
            axios.get('/api/setup/township')
                   .then(response => {
                       this.townships = response.data.townships;
                   });
           },

        callFunction() {
            /*var currentDate = new Date();
            console.log(currentDate);*/
            

            // this.readInquire();

             axios.get('/api/setup/lastinquire')
                .then(response => {
                  /*console.log(response.data.inquire);*/
                   this.lastinquire = response.data.inquire;
                   console.log(this.lastinquire.receiveno);
                    
                    this.caculatedate(this.lastinquire.receiveno);
                });
          },
          caculatedate(receiveno){

            var currentDateWithFormat = new Date().toJSON().slice(0,10).replace(/-/g,'/');


            var datearray=currentDateWithFormat.split("/");
            var day=datearray[2];
            var month=datearray[1];
            var year=datearray[0];
            var date=day+month+year;
            var output='';
            //console.log(typeof(receiveno));
            var currentreceiveno=receiveno.substring(0,8);

            console.log(currentreceiveno+'=='+date);

            if(currentreceiveno==date){ // 04092019 == 04092019

              let newreceiveno = ++receiveno; // 040920190001 -> 40920190002 (number)

              output = newreceiveno.toString();
              if(parseInt(day)<10){
                output = '0'+newreceiveno.toString();
              }
              this.receiveno= output; // 040920190002
            }else{
              this.receiveno= date+'0001'; // 050920190001
            }
          }
         
       }
   }
</script>