<template>
  


  <div class="container">
    <div class="row">
     


      <!-- ayechanoo start-->
      <div class="col-md-12">

      
        <h1 class="h3 mb-2 text-gray-800"> Student List </h1>
        
        
        <div class="card shadow mb-4">
          <div class="card-header py-3">
            
            <button @click="addStudent()" class="btn btn-primary float-right" style="padding:8px">
              <i class="fa fa-plus"> </i> Add New Student
            </button>
            <div class="alert alert-success alert-dismissible fade show" role="alert" v-if="noti==1">
            
            <strong>{{ message }}</strong> 
            
            <button type="button" class="close" data-dismiss="alert" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
        </div>


          <div class="card-body">
            <!-- navbar tab start -->
            <nav>
            <div class="nav nav-tabs" id="nav-tab" role="tablist">
              <a class="nav-item nav-link helo1" v-bind:class="[ activetab === 'Accept Student Enquiry ( HR - YGN )' ? 'active' : '' ]"  v-on:click="showDuration(1)" data-id="1" id="nav-hr_ygn-tab" data-toggle="tab" href="#nav-hr_ygn" role="tab" aria-controls="nav-hr_ygn" aria-selected="true" v-for="(permission,index) in permissions" v-if="permission.name == 'Accept Student Enquiry ( HR - YGN )'">
                HR/ Admin (YGN)
              </a>

              <a class="nav-item nav-link " v-bind:class="[ activetab === 'Accept Student Enquiry ( HR - MDY )' ? 'active' : '' ]" data-id="2" v-on:click="showDuration(2)" id="nav-hr_mdy-tab" data-toggle="tab" href="#nav-hr_mdy" role="tab" aria-controls="nav-hr_mdy" aria-selected="false" v-for="(permission,index) in permissions" v-if="permission.name == 'Accept Student Enquiry ( HR - MDY )'">
                HR/ Admin (MDY)
              </a>

              <a class="nav-item nav-link " v-bind:class="[ activetab === 'Accept Student Enquiry ( PHP Bootcamp - YGN )' ? 'active' : '' ]" data-id="3" v-on:click="showDuration(3)" id="nav-php_bootcamp-tab" data-toggle="tab" href="#nav-php_bootcamp" role="tab" aria-controls="nav-php_bootcamp" aria-selected="false" v-for="(permission,index) in permissions" v-if="permission.name == 'Accept Student Enquiry ( PHP Bootcamp - YGN )'">
                PHP Bootcamp 
              </a>

              <a class="nav-item nav-link " v-bind:class="[ activetab === 'Accept Student Enquiry ( iOS - YGN )' ? 'active' : '' ]" data-id="4" v-on:click="showDuration(4)" id="nav-ios-tab" data-toggle="tab" href="#nav-ios" role="tab" aria-controls="nav-ios" aria-selected="false" v-for="(permission,index) in permissions" v-if="permission.name == 'Accept Student Enquiry ( iOS - YGN )'">
                iOS 
              </a>

            </div>
          </nav>
           <!-- navbar tab end -->

           <!-- tab content start -->
           <div class="tab-content mt-3" id="nav-tabContent">
              <!-- for ygn hr batch start -->

                <div class="tab-pane hr-ygn fade  helo1" v-bind:class="[ activetab === 'Accept Student Enquiry ( HR - YGN )' ? 'active' : '' ]"  data-id="1" id="nav-hr_ygn" role="tabpanel" aria-labelledby="nav-hr_ygn-tab">
                  <!-- <h3>I am ygn</h3> -->
                    <!-- durations -->
                    <div class="row">

                      <div class="form-group  col-md-6 col-sm-12">
                              <label for="names">Duration:</label>
                                <select v-model="duration1" name="duration_id" id="duration_id" class="form-control" @change="readSections2">
                                  <option disabled value="">Please select one</option>
                                  <option v-for ="(duration1, index) in durations2"  :value="duration1.id">
                                    {{ duration1.days }} ( {{ duration1.time }} )
                                    [ {{ duration1.during }} ]

                                  </option>
                                </select>
                            </div>
                      
                    
                    <!-- durations end -->

                    <!-- seciton start -->
                    
                        <div class="form-group  col-md-6 col-sm-12">
                        <label for="names">Sections:</label>
                          <select v-model="section1" name="section_id" id="section_id" class="form-control" @change="showStudent" >
                            <option disabled value="">Please select one</option>
                            <option v-for ="(section, index) in sections2"  :value="section.id">
                              {{ section.title }} ( {{ section.durations.time }} )
                              [ {{ section.during }} ]

                            </option>
                          </select>
                      </div>
                    </div>
                    <!-- seciton end -->

                    <!-- tabel start -->
                      <div class="table-responsive">
                        <!-- <h1>i am php bootcamp</h1> -->
                        <table class="table table-bordered table-hover" id="table_id" cellspacing="0" >
                          <thead class="bg-primary text-white">
                            <tr>
                              <th> No </th>
                              <th> Invoice No </th>
                              <th> Name </th>
                              <th> job-Hunting </th>
                              <th> Resume </th>
                              <th colspan="2">Action</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr v-for="(student, index) in students1">
                              <td>{{index+1}}</td>
                              <td> {{ student.i_receiveno }} </td>
                              <td>{{student.inquire_name}}</td>

                              <td v-if="student.status==1">Yes</td>
                              <td v-else="student.status==0">No</td>

                              <td v-if="student.resume!='no resume'" >
                                <a :href="gotopubic(student.resume)"  class="btn btn-outline-info" target="__blank">resume</a>
                              </td>
                              <td v-else>
                                <p class="text-danger">no resume</p>
                              </td>

                              <td>

                                <button @click="secondpay(index)" v-if="check(student.secinstallmentamount,student.i_installmentamount,student.course_fee)" class="btn btn-secondary btn-xs d-inline" style="padding:8px">
                                  <i class="fas fa-hand-holding-usd"></i>
                                  Pay
                                </button>

                                <button @click="printStudent(index)" v-if=" student.secinstallmentamount != 0" class="btn btn-success btn-xs d-inline" style="padding:8px">
                                  <i class="fa fa-print"></i>
                                  Print
                                </button>

                                <!-- <button @click="detailStudent(index)" class="btn btn-info btn-xs d-inline" style="padding:8px">
                                  <i class="fas fa-eye"></i>
                                </button> -->

                                <button @click="updateStudent(index)" class="btn btn-warning btn-xs d-inline" style="padding:8px">
                                  <i class="fas fa-pen"></i>
                                  Edit
                                </button>
                                  
                                <button @click="deleteStudent(index)" class="btn btn-danger btn-xs d-inline" style="padding:8px">
                                  <i class="fas fa-trash"></i>
                                  Delete
                                </button>
                              </td>
                            </tr>
                          </tbody>
                          
                        </table>
                      </div>
                    <!-- tabel end -->
                
                </div>
              <!-- for ygn hr batch end -->


              <!-- for mdy hr batch start -->

                <div class="tab-pane hr-mdy fade " v-bind:class="[ activetab === 'Accept Student Enquiry ( HR - MDY )' ? 'show active' : '' ]" data-id="4" id="nav-hr_mdy" role="tabpanel" aria-labelledby="nav-hr_mdy-tab">
                  <!-- durations -->
                    <div class="row">

                      <div class="form-group  col-md-6 col-sm-12">
                              <label for="names">Duration:</label>
                                <select v-model="duration1" name="duration_id" id="duration_id" class="form-control" @change="readSections2">
                                  <option disabled value="">Please select one</option>
                                  <option v-for ="(duration1, index) in durations2"  :value="duration1.id">
                                    {{ duration1.days }} ( {{ duration1.time }} )
                                    [ {{ duration1.during }} ]

                                  </option>
                                </select>
                            </div>
                      
                    
                    <!-- durations end -->

                    <!-- seciton start -->
                    
                        <div class="form-group  col-md-6 col-sm-12">
                        <label for="names">Sections:</label>
                          <select v-model="section1" name="section_id" id="section_id" class="form-control" @change="showStudent" >
                            <option disabled value="">Please select one</option>
                            <option v-for ="(section, index) in sections2"  :value="section.id">
                              {{ section.title }} ( {{ section.durations.time }} )
                              [ {{ section.during }} ]

                            </option>
                          </select>
                      </div>
                    </div>
                    <!-- seciton end -->

                    <!-- tabel start -->
                      <div class="table-responsive">
                        <!-- <h1>i am php bootcamp</h1> -->
                        <table class="table table-bordered table-hover" id="table_id" cellspacing="0" >
                          <thead class="bg-primary text-white">
                            <tr>
                              <th> No </th>
                              <th> Invoice No </th>
                              <th> Name </th>
                              <th> job-Hunting </th>
                              <th> Resume </th>
                              <th colspan="2">Action</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr v-for="(student, index) in students1">
                              <td>{{index+1}}</td>
                              <td> {{ student.i_receiveno }} </td>
                              <td>{{student.inquire_name}}</td>

                              <td v-if="student.status==1">Yes</td>
                              <td v-else="student.status==0">No</td>

                              <td v-if="student.resume!='no resume'" >
                                <a :href="gotopubic(student.resume)"  class="btn btn-outline-info" target="__blank">resume</a>
                              </td>
                              <td v-else>
                                <p class="text-danger">no resume</p>
                              </td>

                              <td>
                                <button @click="secondpay(index)" v-if="check(student.secinstallmentamount,student.i_installmentamount,student.course_fee)" class="btn btn-secondary btn-xs d-inline" style="padding:8px">
                                  <i class="fas fa-hand-holding-usd"></i>
                                  Pay
                                </button>

                                <button @click="printStudent(index)" v-if=" student.secinstallmentamount != 0" class="btn btn-success btn-xs d-inline" style="padding:8px">
                                  <i class="fa fa-print"></i>
                                  Print
                                </button>

                                <!-- <button @click="detailStudent(index)" class="btn btn-info btn-xs d-inline" style="padding:8px">
                                  <i class="fas fa-eye"></i>
                                  Detail
                                </button> -->

                                <button @click="updateStudent(index)" class="btn btn-warning btn-xs d-inline" style="padding:8px">
                                  <i class="fas fa-pen"></i>
                                  Edit
                                </button>
                                  
                                <button @click="deleteStudent(index)" class="btn btn-danger btn-xs d-inline" style="padding:8px">
                                  <i class="fas fa-trash"></i>
                                  Delete
                                </button>
                              </td>
                            </tr>
                          </tbody>
                          
                        </table>
                      </div>
                    <!-- tabel end -->
                
                </div>
              <!-- for mdy hr batch end -->


              <!-- for php bootcamp batch start -->

                <div class="tab-pane bootcamp-ygn fade " v-bind:class="[ activetab === 'Accept Student Enquiry ( PHP Bootcamp - YGN )' ? 'show active' : '' ]" data-id="3" id="nav-php_bootcamp"   role="tabpanel" aria-labelledby="nav-php_bootcamp-tab">

                  <!-- durations -->
                    <div class="row">

                      <div class="form-group  col-md-6 col-sm-12">
                              <label for="names">Duration:</label>
                                <select v-model="duration1" name="duration_id" id="duration_id" class="form-control" @change="readSections2">
                                  <option disabled value="">Please select one</option>
                                  <option v-for ="(duration1, index) in durations2"  :value="duration1.id">
                                    {{ duration1.days }} ( {{ duration1.time }} )
                                    [ {{ duration1.during }} ]

                                  </option>
                                </select>
                            </div>
                      
                    
                    <!-- durations end -->

                    <!-- seciton start -->
                    
                        <div class="form-group  col-md-6 col-sm-12">
                        <label for="names">Sections:</label>
                          <select v-model="section1" name="section_id" id="section_id" class="form-control" @change="showStudent" >
                            <option disabled value="">Please select one</option>
                            <option v-for ="(section, index) in sections2"  :value="section.id">
                              {{ section.title }} ( {{ section.durations.time }} )
                              [ {{ section.during }} ]

                            </option>
                          </select>
                      </div>
                    </div>
                    <!-- seciton end -->

                    <!-- tabel start -->
                      <div class="table-responsive">
                        <!-- <h1>i am php bootcamp</h1> -->
                        <table class="table table-bordered table-hover" id="table_id" cellspacing="0" >
                          <thead class="bg-primary text-white">
                            <tr>
                              <th> No </th>
                              <th> Invoice No </th>
                              <th> Name </th>
                              <th> job-Hunting </th>
                              <th> Resume </th>
                              <th colspan="2">Action</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr v-for="(student, index) in students1">
                              <td>{{index+1}}</td>
                              <td> {{ student.i_receiveno }} </td>
                              <td>{{student.inquire_name}}</td>

                              <td v-if="student.status==1">Yes</td>
                              <td v-else="student.status==0">No</td>

                              <td v-if="student.resume!='no resume'" >
                                <a :href="gotopubic(student.resume)"  class="btn btn-outline-info" target="__blank">resume</a>
                              </td>
                              <td v-else>
                                <p class="text-danger">no resume</p>
                              </td>

                              <td>
                                <button @click="secondpay(index)" v-if="check(student.secinstallmentamount,student.i_installmentamount,student.course_fee)" class="btn btn-secondary btn-xs d-inline" style="padding:8px">
                                  <i class="fas fa-hand-holding-usd"></i>
                                  Pay
                                </button>

                                <button @click="printStudent(index)" v-if=" student.secinstallmentamount != 0" class="btn btn-success btn-xs d-inline" style="padding:8px">
                                  <i class="fa fa-print"></i>
                                  Print
                                </button>

                                <!-- <button @click="detailStudent(index)" class="btn btn-info btn-xs d-inline" style="padding:8px">
                                  <i class="fas fa-eye"></i>
                                </button> -->

                                <button @click="updateStudent(index)" class="btn btn-warning btn-xs d-inline" style="padding:8px">
                                  <i class="fas fa-pen"></i>
                                  Edit
                                </button>
                                  
                                <button @click="deleteStudent(index)" class="btn btn-danger btn-xs d-inline" style="padding:8px">
                                  <i class="fas fa-trash"></i>
                                  Delete
                                </button>
                              </td>
                            </tr>
                          </tbody>
                          
                        </table>
                      </div>
                    <!-- tabel end -->
                
                </div>
              <!-- for php bootcamp batch end -->


              <!-- for ios batch start -->

                <div class="tab-pane ios-ygn fade " v-bind:class="[ activetab === 'Accept Student Enquiry ( iOS - YGN )' ? 'show active' : '' ]"  data-id="4" id="nav-ios" role="tabpanel" aria-labelledby="nav-ios-tab">

                    <!-- durations -->
                    <div class="row">

                      <div class="form-group  col-md-6 col-sm-12">
                              <label for="names">Duration:</label>
                                <select v-model="duration1" name="duration_id" id="duration_id" class="form-control" @change="readSections2">
                                  <option disabled value="">Please select one</option>
                                  <option v-for ="(duration1, index) in durations2"  :value="duration1.id">
                                    {{ duration1.days }} ( {{ duration1.time }} )
                                    [ {{ duration1.during }} ]

                                  </option>
                                </select>
                            </div>
                      
                    
                    <!-- durations end -->

                    <!-- seciton start -->
                    
                        <div class="form-group  col-md-6 col-sm-12">
                        <label for="names">Sections:</label>
                          <select v-model="section1" name="section_id" id="section_id" class="form-control" @change="showStudent" >
                            <option disabled value="">Please select one</option>
                            <option v-for ="(section, index) in sections2"  :value="section.id">
                              {{ section.title }} ( {{ section.durations.time }} )
                              [ {{ section.during }} ]

                            </option>
                          </select>
                      </div>
                    </div>
                    <!-- seciton end -->

                    <!-- tabel start -->
                      <div class="table-responsive">
                        <!-- <h1>i am php bootcamp</h1> -->
                        <table class="table table-bordered table-hover" id="table_id" cellspacing="0" >
                          <thead class="bg-primary text-white">
                            <tr>
                              <th> No </th>
                              <th> Invoice No </th>
                              <th> Name </th>
                              <th> job-Hunting </th>
                              <th> Resume </th>
                              <th colspan="2">Action</th>
                            </tr>
                          </thead>
                          <tbody>
                            <tr v-for="(student, index) in students1">
                              <td>{{index+1}}</td>
                              <td> {{ student.i_receiveno }} </td>
                              <td>{{student.inquire_name}}</td>

                              <td v-if="student.status==1">Yes</td>
                              <td v-else="student.status==0">No</td>

                              <td v-if="student.resume!='no resume'" >
                                <a :href="gotopubic(student.resume)"  class="btn btn-outline-info" target="__blank">resume</a>
                              </td>
                              <td v-else>
                                <p class="text-danger">no resume</p>
                              </td>

                              <td>
                                <button @click="secondpay(index)" v-if="check(student.secinstallmentamount,student.i_installmentamount,student.course_fee)" class="btn btn-secondary btn-xs d-inline" style="padding:8px">
                                  <i class="fas fa-hand-holding-usd"></i>
                                  Pay
                                </button>

                                <button @click="printStudent(index)" v-if=" student.secinstallmentamount != 0" class="btn btn-success btn-xs d-inline" style="padding:8px">
                                  <i class="fa fa-print"></i>
                                  Print
                                </button>

                                <!-- <button @click="detailStudent(index)" class="btn btn-info btn-xs d-inline" style="padding:8px">
                                  <i class="fas fa-eye"></i>
                                </button> -->

                                <button @click="updateStudent(index)" class="btn btn-warning btn-xs d-inline" style="padding:8px">
                                  <i class="fas fa-pen"></i>
                                  Edit
                                </button>
                                  
                                <button @click="deleteStudent(index)" class="btn btn-danger btn-xs d-inline" style="padding:8px">
                                  <i class="fas fa-trash"></i>
                                  Delete
                                </button>
                              </td>
                            </tr>
                          </tbody>
                          
                        </table>
                      </div>
                    <!-- tabel end -->
                
                </div>
              <!-- for ios  batch end -->

           </div>
           <!-- tab content end -->


            
          </div>

        </div>
    </div>

      </div>


     

        <!-- 
    adding student start

     -->

     <div class="modal fade" tabindex="-1" role="dialog" id="add_student_modal">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Add Student</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>

            
          <div class="modal-body">

            <div class="alert alert-danger" v-if="errors.length > 0">
                        <ul>
                            <li v-for="error in errors">{{ error }}</li>
                        </ul>
            </div>

            <!-- selection start -->
            <div class="form-group">
              <label for="course_id">Course:</label>
               
               <select v-model="course" name="course_id" id="course_id" class="form-control" @change="readDurations">
                  <option value="">Please select one</option>
                  <option v-for ="(course, index) in courses"  :value="course.id" :data-fee="course.fees">
                    {{ course.name }} ( {{ course.cityname }} )
                  </option>
                </select>

                
            </div>

            <div class="form-group">
              <label for="names">Duration:</label>
                <select v-model="duration" name="duration_id" id="duration_id" class="form-control" @change="readSections">
                  <option disabled value="">Please select one</option>
                  <option v-for ="(duration1, index) in durations"  :value="duration1.id">
                    {{ duration1.days }} ( {{ duration1.time }} )
                    [ {{ duration1.during }} ]

                  </option>
                </select>
            </div>

             <div class="form-group">
              <label for="names">Sections:</label>
                <select v-model="section" name="section_id" id="section_id" class="form-control" @change="readInquires" >
                  <option disabled value="">Please select one</option>
                  <option v-for ="(section, index) in sections"  :value="section.id">
                    {{ section.title }} ( {{ section.durations.time }} )
                    [ {{ section.during }} ]

                  </option>
                </select>
            </div>

            <div class="form-group">
              <label for="inquire-names">Students</label>
              <select v-model="student.inquire_id" class="form-control" id="inquire-names" @change="getStudent">
              <option disabled value="">Please select one</option>
              <option v-for="inq in inquireArray" :value="inq.id">
                {{inq.name}}
              </option>
              
            </select>
            </div>

            <!-- selection end -->




            <div class="form-group">
              <label for="installmentdate">Installment Date</label>
              <input type="text" id="addSecInstallDate" name="installmentdate" :required="student.secinstallmentdate < 0" class="form-control" v-model="student.secinstallmentdate"  :placeholder="today" readonly="readonly" >
            </div>

            <div class="form-group">
              <label for="addSecInstallAmount">Installment Amount</label>
              <input  type="number" name="installmentamount" id="addSecInstallAmount" readonly="readonly" :placeholder="amount" class="form-control" v-model="student.secinstallmentamount" >
            </div>


            <label>Going for Full-Paid?</label>

            <div class="form-group">
              

                  <!-- 0 means not full paid -->
              
                    <div class="form-check form-check-inline">
                    <input type="radio" class="form-check-input" @change="makeDecision(decision)" id="two" value="0" v-model="decision">
                      <label class="form-check-label" for="two">No</label>
                  </div>
                  <!-- 1 means full paid -->
                  <div class="form-check form-check-inline">
                    <input type="radio" class="form-check-input" @change="makeDecision(decision)" id="one" value="1" v-model="decision">
                        <label class="form-check-label" for="one">Yes</label>
                  </div>
                     
              
           </div>

           <div class="fullpaid d-none">
               <div class="form-group">
                <label for="secondinstallmentamount">Remaining amount for second installment</label>
                <input type="number" name="installmentamount" id="addsecondinstallmentamount" readonly="readonly"  :placeholder="addremain" class="form-control" v-model="student.secondSecinstallmentamount">
              </div>
           </div>



            <div class="form-group">
              <label for="remark">Remark</label>
              <textarea name="remark" class="form-control" id="remark" v-model="student.remark"></textarea>
            </div>
<!-- 
            <div class="form-group ">
              <label for="resume">Resume</label>
              <input type="file" name="resume"  ref="files" class="form-control">
            </div> -->

            <label>Please find me a job!</label>

            <div class="form-group">
              

              
                    <div class="form-check form-check-inline">
                    <input type="radio" class="form-check-input" id="one" checked="checked" value="1" v-model="studentstatus">
                      <label class="form-check-label"  for="one">Yes</label>
                  </div>
                  <div class="form-check form-check-inline">
                    <input type="radio" class="form-check-input" id="zero" value="0" v-model="studentstatus">
                        <label class="form-check-label" for="zero">No</label>
                  </div>
                     
              
           </div>

           
      

      


           

          </div>
          
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            
            <button type="button" @click="creatStudent" class="btn btn-primary">Submit</button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <!-- end of add student model -->


    <!-- 
    updating student start

     -->

     <div class="modal fade" tabindex="-1" role="dialog" id="update_student_modal">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">updating student</h4>
              <button type="button" class="close" data-dismiss="modal"  aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>

           
            
          <div class="modal-body">
            <div class="alert alert-danger" v-if="errors.length > 0">
                        <ul>
                            <li v-for="error in errors">{{ error }}</li>
                        </ul>
            </div>

            <div class="form-group">
              <select v-model="update_Student.inquire_id" disabled="disabled" class="form-control">
              <option value="">Please select one</option>
              <option v-for="inq in inquireArray1" :value="inq.id" :selected="inq.id==update_Student.inquire_id">
                {{inq.name}}
              </option>
              
            </select>
            </div>


            <div class="form-group ">
              <!-- <label id="installmentdate d-none">Installment Date</label> -->
              <input  type="hidden" name="installmentdate" readonly="readonly" class="form-control"  v-model="update_Student.secinstallmentdate">
            </div>

            <div class="form-group">
              <!-- <label id="installmentamount d-none">Installment Amount</label> -->
              <input type="hidden" name="installmentamount" readonly="readonly" class="form-control" v-model="update_Student.secinstallmentamount">
            </div>

            <div class="form-group">
              <label id="remark">Remark</label>
              <textarea name="remark" class="form-control" id="remark" v-model="update_Student.remark"></textarea>
            </div>

            <div class="form-group ">
              <label id="resume">Resume</label><br/>
              <span>Old resume::</span>
              <a :href="gotopubic(update_Student.resume)" target="__blank">{{update_Student.resume}}</a><br/>
              <input type="hidden" name="oldpdf" class="form-control" v-model="update_Student.resume">
              <span>New resume</span><br/>
              <input type="file" ref="file" v-on:change="onImageChange" class="form-control" />
            </div>

            <div class="form-group">
                <label>Please find me a job </label><br/>


           <div class="form-check form-check-inline">
            
            <input type="radio" class="form-check-input" id="one" value="1" v-model="update_Student.status">
      <label for="one" class="form-check-label">Yes</label>

           </div>

           <div class="form-check form-check-inline">
            
            <input type="radio" class="form-check-input" id="two" value="0" v-model="update_Student.status">
      <label for="two" class="form-check-label">No</label>

           </div>
            </div>
      

      


           

          </div>
          
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            
            <button type="button" v-on:click="updating()" class="btn btn-primary">Submit</button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <!-- end of add student model -->


    <!-- 
    secondpaying student start

     -->

     <div class="modal fade" tabindex="-1" role="dialog" id="secondpaying_modal">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">updating student</h4>
              <button type="button" class="close" data-dismiss="modal"  aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>

           
            
          <div class="modal-body">
            <div class="alert alert-danger" v-if="errors.length > 0">
                        <ul>
                            <li v-for="error in errors">{{ error }}</li>
                        </ul>
            </div>

            <div class="form-group">
              <label id="installmentdate">Installment Date</label>
              <input  type="text" name="installmentdate" id="updateStudentdate" :placeholder="today" readonly="readonly" class="form-control"  v-model="update_Student.secinstallmentdate">
            </div>

            <div class="form-group">
              <label for="firstinstallmentamount">First Installment Amount</label>
              <input type="number" name="installmentamount" id="firstinstallmentamount" readonly="readonly"  class="form-control" v-model="update_Student.secinstallmentamount">

              <input type="hidden" name="installmentamount" id="coursefees" readonly="readonly"  class="form-control" v-model="update_Student.course_fee">
            </div>

            <div class="form-group">
              <label for="secondinstallmentamount">Remaining amount for second installment</label>
              <input type="number" name="installmentamount" id="secondinstallmentamount" readonly="readonly"  :placeholder="remain" class="form-control" v-model="update_Student.secondSecinstallmentamount">
            </div>

            <!-- <div class="form-group">
              <label id="remark">Remark</label>
              <textarea name="remark" class="form-control" id="remark" v-model="update_Student.remark"></textarea>
            </div> -->

            <!-- <div class="form-group">
              <label id="resume">Resume</label><br/>
              <span>Old resume::</span>
              <a :href="gotopubic(update_Student.resume)" target="__blank">{{update_Student.resume}}</a><br/>
              <input type="hidden" name="oldpdf" class="form-control" v-model="update_Student.resume">
              <span>New resume</span><br/>
              <input type="file" ref="files" v-on:change="onImageChange" class="form-control" />
            </div> -->

            <!-- <label>Please find me a job </label>

           <div class="form-group">
            
            <input type="radio" id="one" value="1" v-model="update_Student.status">
            <label for="one">Yes</label>

          </div>

           <div class="form-group">
            
            <input type="radio" id="two" value="0" v-model="update_Student.status">
            <label for="two">No</label>

           </div> -->
      

      <div class="form-group">

              <select v-model="update_Student.inquire_id" disabled="disabled" class="form-control">
              <option disabled value="">Please select one</option>
              <option v-for="inq in inquireArray1" :value="inq.id" :selected="inq.id==update_Student.inquire_id">
                {{inq.name}}
              </option>
              
            </select>
            </div>


           

          </div>
          
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            
            <button type="button" v-on:click="secondpayupdating()" class="btn btn-primary">Submit</button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->
    <!-- end of add student model -->


  </div>


  </div>


   
</div> 



</template>
<script type="text/javascript">
  export default {
    props: ["permissions","active_tab"],

    data(){
      return {
        student:{
          secinstallmentdate:'',
          secinstallmentamount:0,
          secondSecinstallmentamount:0,
          remark:'',
          status:'',
          resume:'',
          inquire_id:'',
          inquire_name:'',
          course_fees:0,
          i_installmentdate:'',
          i_installmentamount:'',
          },
          students:[],
          students1:[],
          errors: [],
          noti:0,
          update_noti:false,
          delete_noti:false,
          message:'',
          update_Student:{},
          print_Student:{},
          inquireArray:[],
          inquireArray1:[],
          sectionArray:[],
          courses:[],
          course:{},
          fullMoney:0,
          needMoney:0,
          durations1:[],
          durations2:[],
          durations:[],
          duration_id:'',
          duration:'',
          duration1:'',
          sections:[],
          sections2:[],
          section:'',
          section1:'',
          file:'',
          today:'',
          amount:0,
          oneinquire:[],
          remain:0,
          decision:0,
          studentstatus:0,
          addremain:0,
          showremain:1,
          activetab: 'Accept Student Enquiry ( PHP Bootcamp - YGN )',

          print_Student:{},
          detail_Student:{},
          
        }
      },
      mounted(){
        this.activetab = this.permissions[0].name;
        this.checktab();
      //  this.readStudent();
    //     this.readDurations();
    //    this.readSections();
        
        this.readInquire();
        // this.getDate();
       //  this.getStudent();
       // this.getCourse();

      
      },
      methods:{
        check(first,last,fee){
          console.log(fee);

          var d=parseInt(first)+parseInt(last);
          if(d!=fee){
            return this.showremain==1;
          }else{
            return this.showremain!=1;
          }
        },
         makeDecision(index){
        console.log(index);
          if(index==1){
            var d=0;var addremain1=0;
            $('.fullpaid').removeClass('d-none');
          $('.fullpaid').show();
          d=$('#course_id option:selected').data('fee');
         addremain1=d-this.student.secinstallmentamount;
         this.addremain=addremain1;
         this.student.secondSecinstallmentamount=addremain1;
         $('#addsecondinstallmentamount').val(addremain1);


        }else{
          $('.fullpaid').hide();
        }
          
        },

        readInquire(){
          axios.get(`/api/setup/inquire/`)
                  .then(response=>{
                    console.log(response.data.inquires);
                    this.inquireArray1=response.data.inquires;
                  })
        },
        checktab(){
         if($('.active.tab-pane').hasClass('hr-ygn')){
          console.log('this is muse is active');
          var d=$('.active.tab-pane').data('id');
          this.showDuration(d);
         } 
         else if($('.active.tab-pane').hasClass('hr-mdy')){
          console.log('this is muse is active');
          var d=$('.active.tab-pane').data('id');
          this.showDuration(d);
         } 
         else if($('.active.tab-pane').hasClass('bootcamp-ygn')){
          console.log('this is muse is active');
          var d=$('.active.tab-pane').data('id');
          this.showDuration(d);
         } else{
          console.log('nothig');
         }
        },
        checkremain(){

          var amount=parseInt(this.update_Student.i_installmentamount);
          var fees=parseInt(this.update_Student.course_fee);
            console.log(amount+"ok ka"+fees);
          if(amount<fees){
            this.remain=fees-amount;
            this.update_Student.secondSecinstallmentamount=this.remain;
            $('#secondinstallmentamount').val(this.remain);
          }
        },

        secondpay(index){
          console.log("the second pay is "+index);
          $('#secondpaying_modal').modal('show');
          this.update_Student=this.students1[index];
          
          this.getDate();
          this.update_Student.secinstallmentdate=this.today;
          $('#updateStudentdate').val(this.today);
          this.update_Student.secinstallmentamount=this.update_Student.i_installmentamount;
          $('#firstinstallmentamount').val(this.update_Student.i_installmentamount);
          this.checkremain();

        },
        showDuration:function(id){
          this.students1='';
          this.setZero();
          //this.durations2='';
          //this.sections2='';

           axios.get(`/api/setup/duration/${id}`)
                   .then(response => {
                       // this.durations = response.data.durations;
                        this.durations2 = response.data.durations;
                      // console.log(response.data.durations1);
                   });
                   this.setZero();

          
        },

        getDate(){
          var d=new Date();
          //this.today=d.getDate()+"-"+d.getMonth()+"-"+d.getFullYear();
          this.today=d.toLocaleDateString();
          
        },
        setZero(){
          console.log('heo');
          this.duration1='';
          this.section1='';
        },
        settimeout(){
          setTimeout(function(){ $('.alert').fadeOut() },6000 );
          console.log(this.noti);
          
          
        },
          onImageChange() {
            this.files=this.$refs.file.files[0];
                    // let files = e.target.files || e.dataTransfer.files;
                    // if (!files.length)
                    //     return;

                    //   //console.log(this.$refs.file.files[0]) ;

                    // this.createImage(files[0]+"helo");


            },
            createImage(file) {
                let reader = new FileReader();
                let vm = this;
                reader.onload = (e) => {
                    vm.resume = e.target.result;
                    console.log(vm.resume+"helo");
                };
                reader.readAsDataURL(file);
            },
       
            readCourse(){
              axios.get('/api/setup/course')
                   .then(response => {
                       this.courses = response.data.courses;
                       //console.log(response.data.teachers);
                   });
            },
        getStudent(){
          
          axios.get(`/api/setup/getinquirebyId/${this.student.inquire_id}`)
                   .then(response => {
                    this.oneinquire=response.data.inquires;
                    var t=0;
                    $.each(this.oneinquire,function(i,v){
                      t=v.installmentamount;
                     
                    })
                    this.amount=t;
                    this.student.secinstallmentamount=t;
                     $('#addSecInstallAmount').val(this.amount);
                   //    this.fullMoney=$('#course_id option:selected').data('fee');
                   //   // console.log(this.fullMoney);
                   //   if(v.installmentamount){
                   //    this.amount=(this.fullMoney)-parseInt(v.installmentamount);
                   //    // $('#addSecInstallAmount').val(this.amount);
                   //    this.student.secinstallmentamount=v.installmentamount;
                   //    // this.amount=this.needMoney;
                      

                   //   }
                      
                   //   })

                    

                      
                    });

        },

        readStudent() {
                   axios.get('/api/setup/student')
                       .then(response => {
                           this.students = response.data.students;

                       });
                 },
        
        readInquires(){
                  axios.get(`/api/setup/inquire/${this.section}`)
                  .then(response=>{
                    console.log(response.data.inquires);
                    this.inquireArray=response.data.inquires;
                  })

                 },

        showStudent(){
          var data='';
            axios.get(`/api/setup/showstudent/${this.section1}`)
                  .then(response=>{
                    console.log(response.data.students);
                    this.students1 = response.data.students;
                    // this.inquireArray=response.data.inquires;
                  })

                 

        },

        readDurations()
           {

               axios.get(`/api/setup/duration/${this.course}`)
                   .then(response => {
                       this.durations = response.data.durations;
                       //this.durations1 = response.data.durations;
                      // console.log(response.data.durations);
                   });
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
          
        }
           ,
           readSections2(){
            console.log('reach1');
          this.duration_id=this.duration1;
          if(this.duration_id){

            axios.get(`/api/setup/section/${this.duration_id}`)
                   .then(response => {
                       //console.log(response.data.sections);
                       this.sections2=response.data.sections
                   });
                   
                 }else{
                  console.log('nothing');
                 }
          
        }
           ,




            gotopubic(value){
              return "/resume/"+value;
            },

            addStudent(){
              this.reset();
              this.readCourse();
              $('#add_student_modal').modal("show");
              this.getDate();
              this.student.secinstallmentdate=this.today;
              $('#addSecInstallDate').val(this.today);
              //this.student.addSecInstallAmount=this.amount;
              //console.log(this.student.addSecInstallAmount);
            },

            updateStudent(index){
             // console.log(index);
              $('#update_student_modal').modal("show");
              this.update_Student=this.students1[index];
              //var clonedata=this.students.slice(index);
              //this.updateStudent=JSON.parse(JSON.stringify(clonedata[0]));
            },

            printStudent(index)
           {
            console.log(index);
            //  location.href="interview/"+id;
            this.print_Student = this.students1[index];

            let stylesHtml = '';
            for (const node of [...document.querySelectorAll('link[rel="stylesheet"], style')]) {
              stylesHtml += node.outerHTML;
            }

            var currentDate = new Date().toJSON().slice(0,10).replace(/-/g,' / ');

            var course = this.print_Student.c_name;
            var title = this.print_Student.s_codeno;
            var receiveno = this.print_Student.i_receiveno;
            var name = this.print_Student.i_name;
            var coursefees = this.print_Student.course_fee;
            var first_installment = this.print_Student.i_installmentamount;
            var first_installment_date = this.print_Student.i_installmentdate;
            var second_installment = this.print_Student.secinstallmentamount;

            var balance = parseInt(first_installment) + parseInt(second_installment);

            var due = parseInt(coursefees) - parseInt(balance);
            var startdate = this.print_Student.s_startdate;
            var time = this.print_Student.d_time;


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
                            <td> Paid Amount </td>
                            <td> ${first_installment_date} </td>
                            <td> ${first_installment} Kyats </td>
                          </tr>

                          <tr>
                            <td> Second Paid Amount </td>
                            <td> ${currentDate} </td>
                            <td> ${second_installment} Kyats </td>
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

            creatStudent(){
              this.noti=0;var dbSectionInstallmentamount=0;
              console.log(this.student.secondSecinstallmentamount);
                //console.log(this.files);
               // console.log(this.amount);

              if(this.student.secondSecinstallmentamount==0){
                dbSectionInstallmentamount=0;
              }else{
                dbSectionInstallmentamount=parseInt(this.student.secondSecinstallmentamount);
              }

              console.log(dbSectionInstallmentamount);
              var formdata=new FormData();
                //this.student.secinstallmentamount=this.amount;
                formdata.append('installmentdate',this.student.secinstallmentdate);
                formdata.append('installmentamount',dbSectionInstallmentamount);
                formdata.append('remark',this.student.remark);
                formdata.append('status',this.studentstatus);
                formdata.append('enquire',this.student.inquire_id);
                // formdata.append('resume',this.$refs.files.files[0]);
              
              axios.post('api/setup/student',formdata,{
                headers: {
                  'Content-Type': 'multipart/form-data'
                }
              })
              .then(response=>{
                console.log(response);

              
                if(response.data.failed){
                  this.noti=1;
                //  console.log(this.noti);
                  this.message=response.data.failed;
                  this.students.push(response.data.student);
                $('#add_student_modal').modal('hide');
                
                this.showStudent();
                this.files='';
                
                }
                if(response.data.succsssful){
                  this.noti=1;
                 // console.log(this.noti);
                  this.message=response.data.succsssful;
                  this.students.push(response.data.student);
                $('#add_student_modal').modal('hide');
                
                this.showStudent();
                this.files='';
            
                }
              
                

                

              })
              .catch(error=>{
                        
                       if (error.response.data.errors && error.response.data.errors.installmentdate){
                           this.errors.push('The Date of installment data is required');
                       }
                       if (error.response.data.errors && error.response.data.errors.installmentamount){
                           this.errors.push('The Amount of installment data is required');
                       }
                       if (error.response.data.errors && error.response.data.errors.resume){
                           this.errors.push('only pdf and document type is accepted');
                       }
                       if (error.response.data.errors && error.response.data.errors.enqiure){
                           this.errors.push('student is required');
                       }

              });
              this.reset();
              this.settimeout();
              
              
              this.errors=[];
              },

              

              deleteStudent(index)
             {
             
                let conf = confirm("Do you ready want to delete this city?");
                if (conf === true) 

                {
                  axios.delete('/api/setup/student/' + this.students1[index].id)
                         .then(response => {
                             this.students1.splice(index, 1);
                             this.delete_noti=true;
                             this.message="Existing city has been sucessfully deleted!!";
                         })
                         .catch(error => {
                          console.log(error);
                         });
                }
             },

             secondpayupdating:function(){
               // var value=parseInt(this.update_Student.secinstallmentamount)+parseInt(this.update_Student.secondSecinstallmentamount);
               var value=parseInt(this.update_Student.secondSecinstallmentamount);
               
               this.update_Student.secinstallmentamount=value;
               this.payamount();
              // this.updating();
                $('#secondpaying_modal').modal("hide");
                 this.showStudent();
               this.update_Student="";
                
             },
             payamount(){
              this.noti=0;
               console.log(this.files);
                var formdatas=new FormData();
                formdatas.append('installmentdate',this.update_Student.secinstallmentdate);
                formdatas.append('installmentamount',this.update_Student.secondSecinstallmentamount);
                //formdatas.append('installmentamount',this.update_Student.secinstallmentamount);
                
                formdatas.append('enquire',this.update_Student.inquire_id);
              
                formdatas.append('_method','PATCH');

                axios.post('api/setup/updateamountstudent/'+this.update_Student.id,formdatas)
              .then(response=>{
                console.log(response.data);
                this.noti=1;
                  this.message=response.data.message;
                  this.settimeout();
              })
              .then(errors=>{
                console.log(errors);
              })
             },


             updating(){
              this.noti=0;
               console.log(this.files);
                var formdatas=new FormData();
                
                formdatas.append('installmentdate',this.update_Student.secinstallmentdate);
                formdatas.append('installmentamount',this.update_Student.secinstallmentamount);
                formdatas.append('remark',this.update_Student.remark);
                formdatas.append('status',this.update_Student.status);
                formdatas.append('enquire',this.update_Student.inquire_id);
                formdatas.append('resume',this.files);
                formdatas.append('oldresume',this.update_Student.resume);
                formdatas.append('_method','PATCH');

                //                 Data.append('_method', 'PATCH');
                // axios.post('/url' , Data ). then( Response => { 
                //    // do stuff
                // });

                console.log(formdatas);
              
              // axios.patch('api/student/'+this.update_Student.id,formdatas,{
              //    headers: {
              //       'Content-Type': `multipart/form-data; boundary=${formdatas._boundary}`,
              //     }
              // })
              axios.post('api/setup/student/'+this.update_Student.id,formdatas)
              .then(response=>{
                console.log(response);
                if(response.data.errors){
                  this.noti=1;
                      this.message='Student has been updated sucessfully!!'+response.data.errors;
                       $("#update_student_modal").modal("hide");

                       
                       this.settimeout();
  
                        
                }
                if(response.data.successful){
                  this.noti=1;
                  this.message=response.data.successful;
                   $("#update_student_modal").modal("hide");
                   this.showStudent();
                       this.settimeout();
                       

                }
                      
                //this.student=response.data.student
              })
              .catch(error=>{
                this.errors=[];
                if (error.response.data.errors && error.response.data.errors.resume){
                           this.errors.push('only pdf and document type is accepted');
                       }

              this.files='';

              
              
              })


              
              },
              reset(){
                this.student.secinstallmentdate='';
                this.student.secinstallmentamount=0;
                this.student.remark='';
                this.student.status='';
                this.student.inquire_id='';
                this.student.resume='';
                this.section='';
                this.course='';
                this.duration='';

              },
              setnoti(){
                this.noti=0;
              }



                 
      }
    }

  
</script>