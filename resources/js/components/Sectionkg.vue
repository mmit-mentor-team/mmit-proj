<template>
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <section v-if="noti">
          <p>{{notiMsg}}</p>
        </section>
        
        <div class="card shadow mb-4">
          <div class="card-header py-3">
            <h3 class="m-0 font-weight-bold text-primary"> 
              Section List 

              <button @click="initAddSection()" class="btn btn-primary float-right ">
                <i class="fa fa-plus"></i> Add New Section
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
                <table class="table table-bordered table-hover" id="table_id" cellspacing="0" v-if="sections.length>0">
                  <thead class="bg-primary text-white">
                    <tr>
                      <th> No </th>
                      <th> Title  </th>
                      <th> Start_Date   </th>
                      <th> End_Date   </th>
                      <th> Duration  </th>
                      <th> Teacher  </th>
                      <th> Action  </th>

                    </tr>
                  </thead>
                  <tbody>
                    <tr v-for="(section, index) in sections">
                      <td> {{ index + 1 }} </td>
                      <td> {{ section.title  }} </td>
                      <td> {{ section.startdate  }} </td>
                      <td> {{ section.enddate  }} </td>
                      <td> {{ section.durations.days }} | {{section.durations.time}} </td>
                      <td> {{ section.teachers }} </td>
                      <td> 
                        <button @click="initUpdate(section.id,section.title,section.startdate,section.enddate,section.duration_id,section.courseid)" class="btn btn-warning" >
                          <i class="fa fa-edit"></i> Edit
                        </button>
                        
                        <button @click="deleteSection(index)" class="btn btn-danger">
                          <i class="fa fa-trash"></i> Delete
                        </button>
                      </td>
                    </tr>
                  </tbody>
                  
                </table>
              </div>
              
            </div>

            <div class="tab-pane fade" v-bind:class="[ activetab === 'Accept Student Enquiry ( HR - MDY )' ? 'show active' : '' ]" id="nav-hr_mdy" role="tabpanel" aria-labelledby="nav-hr_mdy-tab">

              <div class="table-responsive">
                <table class="table table-bordered table-hover" id="table_id" cellspacing="0" v-if="hr_mdy_sections.length>0">
                  <thead class="bg-primary text-white">
                    <tr>
                      <th> No </th>
                      <th> Title  </th>
                      <th> Start_Date   </th>
                      <th> End_Date   </th>
                      <th> Duration  </th>
                      <th> Teacher  </th>
                      <th> Action  </th>

                    </tr>
                  </thead>
                  <tbody>
                    <tr v-for="(section, index) in hr_mdy_sections">
                      <td> {{ index + 1 }} </td>
                      <td> {{ section.title  }} </td>
                      <td> {{ section.startdate  }} </td>
                      <td> {{ section.enddate  }} </td>
                      <td> {{ section.durations.days }} | {{section.durations.time}} </td>
                      <td> {{ section.teachers }} </td>
                      <td> 
                        <button @click="initUpdate(section.id,section.title,section.startdate,section.enddate,section.duration_id,section.courseid)" class="btn btn-warning" >
                          <i class="fa fa-edit"></i> Edit
                        </button>
                        
                        <button @click="deleteSection(index)" class="btn btn-danger">
                          <i class="fa fa-trash"></i> Delete
                        </button>
                      </td>
                    </tr>
                  </tbody>
                  
                </table>
              </div>
              
            </div>

            <div class="tab-pane fade" v-bind:class="[ activetab === 'Accept Student Enquiry ( PHP Bootcamp - YGN )' ? 'show active' : '' ]" id="nav-php_bootcamp" role="tabpanel" aria-labelledby="nav-php_bootcamp-tab">

              <div class="table-responsive">
                <table class="table table-bordered table-hover" id="table_id" cellspacing="0" v-if="php_sections.length>0">
                  <thead class="bg-primary text-white">
                    <tr>
                      <th> No </th>
                      <th> Title  </th>
                      <th> Start_Date   </th>
                      <th> End_Date   </th>
                      <th> Duration  </th>
                      <th> Teacher  </th>
                      <th> Action  </th>

                    </tr>
                  </thead>
                  <tbody>
                    <tr v-for="(section, index) in php_sections">
                      <td> {{ index + 1 }} </td>
                      <td> {{ section.title  }} </td>
                      <td> {{ section.startdate  }} </td>
                      <td> {{ section.enddate  }} </td>
                      <td> {{ section.durations.days }} | {{section.durations.time}} </td>
                      <td> {{ section.teachers }} </td>
                      <td> 
                        <button @click="initUpdate(section.id,section.title,section.startdate,section.enddate,section.duration_id,section.courseid)" class="btn btn-warning" >
                          <i class="fa fa-edit"></i> Edit
                        </button>
                        
                        <button @click="deleteSection(index)" class="btn btn-danger">
                          <i class="fa fa-trash"></i> Delete
                        </button>
                      </td>
                    </tr>
                  </tbody>
                  
                </table>
              </div>
              
            </div>

            <div class="tab-pane fade" v-bind:class="[ activetab === 'Accept Student Enquiry ( iOS - YGN )' ? 'show active' : '' ]" id="nav-ios" role="tabpanel" aria-labelledby="nav-ios-tab">

              <div class="table-responsive">
                <table class="table table-bordered table-hover" id="table_id" cellspacing="0" v-if="ios_sections.length>0">
                  <thead class="bg-primary text-white">
                    <tr>
                      <th> No </th>
                      <th> Title  </th>
                      <th> Start_Date   </th>
                      <th> End_Date   </th>
                      <th> Duration  </th>
                      <th> Teacher  </th>
                      <th> Action  </th>

                    </tr>
                  </thead>
                  <tbody>
                    <tr v-for="(section, index) in ios_sections">
                      <td> {{ index + 1 }} </td>
                      <td> {{ section.title  }} </td>
                      <td> {{ section.startdate  }} </td>
                      <td> {{ section.enddate  }} </td>
                      <td> {{ section.durations.days  }} | {{section.durations.time}} </td>
                      <td> {{ section.teachers }} </td>
                      <td> 
                        <button @click="initUpdate(section.id,section.title,section.startdate,section.enddate,section.duration_id,section.courseid)" class="btn btn-warning" >
                          <i class="fa fa-edit"></i> Edit
                        </button>
                        
                        <button @click="deleteSection(index)" class="btn btn-danger">
                          <i class="fa fa-trash"></i> Delete
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

    <div class="modal fade" tabindex="-1" role="dialog" id="add_section_model">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Add New Section</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
            
          <div class="modal-body">
            <div class="alert alert-danger" v-if="errors.length > 0">
              <ul>
                  <li v-for="error in errors">{{ error }}</li>
              </ul>
            </div>
            

            <div class="form-group">
              <label for="names">Title</label>
                <input type="text" name="title" id="title" placeholder="Enter Section Title" class="form-control" v-model="section.title">
            </div>

            <div class="form-group">
              <label for="names">Section Start Date:</label>
                <input type="date" name="startdate" id="startdate" placeholder="Enter Section Start_Date" class="form-control" v-model="section.startdate">
            </div>

            <div class="form-group">
              <label for="names">Nos of Close Days:</label>
                <input type="number" name="closedays" id="closedays" placeholder="Enter Section End_Date" class="form-control" v-model="section.closedays">
            </div>

            <div class="form-group">
              <label for="names">Course:</label>
               <select v-model="course_id" name="course_id" id="course_id" class="form-control" @change="readDurations">
                  <option disabled value="">Please select one</option>
                  <option v-for ="(course, index) in courses"  :value="course.id">
                    {{ course.name }} ( {{ course.cityname }} )
                  </option>
                </select>
            </div>

            <div class="form-group">
              <label for="names">Duration:</label>
                <select v-model="duration" name="duration_id" id="duration_id" class="form-control" @change="readTeachers">
                  <option disabled value="">Please select one</option>
                  <option v-for ="(duration, index) in durations"  :value="duration.id">
                    {{ duration.time }} ( {{ duration.days }} )
                    [ {{ duration.during }} ]
                  </option>
                </select>
            </div>
  

            <div class="form-group">
              <label for="names">Teacher:</label>
                <!-- <select v-model="teacher_id" name="teacher_id" class="form-control">
                    <option disabled value="">Please select one</option>
                  <option v-for ="(teacher, index) in teachers" :value="teacher.id">{{ teacher.staffs.users.name }}</option>
                </select> -->

                <multiselect v-model="value" tag-placeholder="Add this as new tag" placeholder="Search or add a tag" label="name" track-by="id" :options="options" :multiple="true" :taggable="true" @tag="addTag"></multiselect>
                <!-- <pre class="language-json"><code>{{ value  }}</code></pre> -->
            </div>
            
          </div>
          
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">
              <i class="fa fa-times"></i> Close
            </button>
            
            <button type="button" @click="createSection" class="btn btn-primary">
              <i class="fa fa-save"></i> Save
            </button>
          </div>
        </div><!-- /.modal-content -->
      </div><!-- /.modal-dialog -->
    </div><!-- /.modal -->

    <div class="modal fade" tabindex="-1" role="dialog" id="update_section_model">
      <div class="modal-dialog modal-lg" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h4 class="modal-title">Update Section</h4>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
          </div>
          
          <div class="modal-body">
            <div class="alert alert-danger" v-if="errors.length > 0">
              <ul>
                <li v-for="error in errors">{{ error }}</li>
              </ul>
            </div>

            <div class="form-group">
              <label>Title:</label>
                <input type="text" placeholder="Enter Section Title" class="form-control" v-model="update_section.title">
            </div>
            <div class="form-group">
              <label>StartDate:</label>
                <input type="text" placeholder="Enter Section StartDate" class="form-control" v-model="update_section.startdate">
            </div>
            <div class="form-group">
              <label>EndDate:</label>
                <input type="text" placeholder="Enter Section EndDate" class="form-control" v-model="update_section.enddate">
            </div>

            <div class="form-group">
              <label for="names">Course:</label>
               <select v-model="course_id" name="course_id" id="course_id" class="form-control" @change="readDurations">
                  <option disabled value="">Please select one</option>
                  <option v-for ="(course, index) in courses"  :value="course.id" :selected="course.id == update_section.course_id">
                    {{ course.name }} ( {{ course.cityname }} )
                  </option>
                </select>
            </div>

            <div class="form-group">
              <label for="names">Duration:</label>
                <select v-model="update_section.duration_id" name="duration_id" class="form-control">
                    <option disabled value="">Please select one</option>
                  <option v-for ="(duration, index) in durations" :value="duration.id" :selected="duration.id == update_section.duration_id">{{ duration.days }} | {{ duration.time }} | {{duration.during}}</option>
                </select>
            </div>
          
           <div class="form-group">
              <label for="names">Teacher:</label>
                <!-- <select v-model="teacher_id" name="teacher_id" class="form-control">
                    <option disabled value="">Please select one</option>
                  <option v-for ="(teacher, index) in teachers" :value="teacher.id">{{ teacher.staffs.users.name }}</option>
                </select> -->
                <!-- {{update_section.value}} -->
                <multiselect v-model="update_section.value" tag-placeholder="Add this as new tag" placeholder="Search or add a tag" label="name" track-by="id" :options="options" :multiple="true" :taggable="true" @tag="updateTag"></multiselect>
                <!-- <pre class="language-json"><code>{{ value  }}</code></pre> -->
            </div>
            
          </div>
              
          <div class="modal-footer">
            <button type="button" class="btn btn-default" data-dismiss="modal">
              <i class="fa fa-times"></i> Close
            </button>
                
            <button type="button" @click="updateSection" class="btn btn-primary">
              <i class="fa fa-upload"></i> Update
            </button>
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
               section: {
                   name: ''
               },
               errors: [],
               noti: false,
               notiup: false,
               notidel: false,
               notiMsg: '',
               notiMsgup: '',
               notiMsgdel: '',
               sections: [],
               hr_mdy_sections: [],
               php_sections:[],
               ios_sections:[],
               durations:[],
               courses:[],
               teachers:[],
               detail_section: {},
               update_section: {},
               duration_id: '',
               teacher_id:'',
               course_id:'',               
               courseid:'',
               course:'',
               duration:'',
               teacher:'',
               teachersOptions: [],
               value: [],
               options: [],
               activetab: 'Accept Student Enquiry ( PHP Bootcamp - YGN )',
             }
       },
       mounted()
       {
          console.log(this.permissions);
          this.activetab = this.permissions[0].name;
          this.readSections();
          this.readDurations();
          this.readTeachers();
          this.readCourses();
       },
       methods: {
          addTag (newTag) {
            const tag = {
              name: newTag,
              id: newTag.substring(0, 2) + Math.floor((Math.random() * 10000000))
            }
            this.options.push(tag)
            this.value.push(tag)
          },

          updateTag (newTag) {
            const tag = {
              name: newTag,
              id: newTag.substring(0, 2) + Math.floor((Math.random() * 10000000))
            }
            this.options.push(tag)
            this.update_section.value.push(tag)
          },

         deleteSection(index)
           {
               let conf = confirm("Do you ready want to delete this section?");
               if (conf === true) {
                   axios.delete('/api/setup/section/' + this.sections[index].id)
                       .then(response => {
                           this.sections.splice(index, 1);
                       })
                       .catch(error => {
                       });
               }
           },
           
           initAddSection()
           {
               $("#add_section_model").modal("show");
           },
            createSection()
           {  
              for (var i = 0; i < this.value.length; i++) {
                this.teachers[i] = this.value[i].id;
              }

              axios.post('/api/setup/section', {
                   title: this.section.title,
                   startdate: this.section.startdate,
                   closedays: this.section.closedays,
                   duration_id: this.duration,
                   teachers: this.teachers,
                   
               })
                   .then(response => {
                       this.reset();
                       this.sections.push(response.data.section);
                       this.noti = true;
                       this.notiMsg = "Data Inserted Successfully!!!";
                       $("#add_section_model").modal("hide");
                       this.activetab = this.permissions[0].name;
          this.readSections();
          this.readDurations();
          this.readTeachers();
          this.readCourses();

                   })
                   .catch(error => {
                       this.errors = [];
                       

                       if (error.response.data.errors && error.response.data.errors.title) {
                           this.errors.push(error.response.data.errors.title[0]);
                       }

                       if (error.response.data.errors && error.response.data.errors.startdate) {
                           this.errors.push(error.response.data.errors.startdate[0]);
                       }
                       if (error.response.data.errors && error.response.data.errors.enddate) {
                           this.errors.push(error.response.data.errors.enddate[0]);
                       }

                       if (error.response.data.errors && error.response.data.errors.duration_id) {
                           this.errors.push(error.response.data.errors.duration_id[0]);
                       }

                       if (error.response.data.errors && error.response.data.errors.teacher_id) {
                           this.errors.push(error.response.data.errors.teacher_id[0]);
                       }
                   });



           },
           reset()
           {
               this.section.name = '';
           },        
           
           readSections()
           {
               axios.get('/api/setup/section')
                   .then(response => {
                       this.sections = response.data.sections;
                       this.hr_mdy_sections = response.data.hr_mdy;
                       this.php_sections = response.data.php_sections;
                       this.ios_sections = response.data.ios_sections;

                       this.noti=false;
                       this.notiup=false;
                       this.notidel=false;
                   });
           },
           readDurations()
           {
               axios.get(`/api/setup/duration/${this.course_id}`)
                   .then(response => {
                       this.durations = response.data.durations;
                      // console.log(response.data.durations);
                   });
           },
           readTeachers()
           {
               axios.get(`/api/setup/teacher/${this.course_id}`)
                   .then(response => {
                       // this.teachers = response.data.teachers;
                       var teachersArr = [];
                       for (var i = 0; i < response.data.teachers.length; i++) 
                       {
                       console.log(response.data.teachers[i].username);

                          teachersArr.push({
                            name:response.data.teachers[i].staffs.users.name, 
                            id: response.data.teachers[i].id
                          });
                       }

                       this.options = teachersArr;
                       teachersArr = [];
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

          initUpdate(val_id,val_title,val_startdate,val_enddate,val_duration_id,val_course_id)
           {
              console.log(val_id);

                axios.get(`/api/setup/sectionTeacher/${val_id}`)
                  .then(response => {
                    console.log(response.data.teachers);
                    for (var i = 0; i < response.data.teachers.length; i++) {
                      this.teachersOptions.push({name:response.data.teachers[i].staffs.users.name, id: response.data.teachers[i].id});
                    }
                    this.update_section.value= this.teachersOptions;
                    this.teachersOptions = [];

                  });
              console.log(val_course_id);

               this.errors = [];
               $("#update_section_model").modal("show");
               this.update_section.id = val_id;
               this.update_section.title = val_title;
               this.update_section.startdate = val_startdate;
               this.update_section.enddate = val_enddate;
               this.update_section.duration_id = val_duration_id;
               this.update_section.course_id = val_course_id;
           },
           updateSection()
           {
              for (var i = 0; i < this.update_section.value.length; i++) {
                this.teachers[i] = this.update_section.value[i].id;
              }

               axios.patch('/api/setup/section/' + this.update_section.id, {
                   title: this.update_section.title,
                   startdate: this.update_section.startdate,
                   enddate: this.update_section.enddate,
                   duration_id: this.update_section.duration_id,
                   teachers: this.teachers,
               })
                   .then(response => {
                       $("#update_section_model").modal("hide");
                       this.readSections();
                   })
                   .catch(error => {
                       this.errors = [];
                       
                       if (error.response.data.errors.title) {
                           this.errors.push(error.response.data.errors.title[0]);
                       }if (error.response.data.errors.startdate) {
                           this.errors.push(error.response.data.errors.startdate[0]);
                       }if (error.response.data.errors.enddate) {
                           this.errors.push(error.response.data.errors.enddate[0]);
                       }if (error.response.data.errors.duration_id) {
                           this.errors.push(error.response.data.errors.duration_id[0]);
                       }if (error.response.data.errors.teacher_id) {
                           this.errors.push(error.response.data.errors.teacher_id[0]);
                       }
                   });
           }
       }
   }
</script>
<style src="vue-multiselect/dist/vue-multiselect.min.css"></style>