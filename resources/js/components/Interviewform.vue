<template>
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="card shadow mb-4">
          <div class="card-header py-3">
            <h3 class="m-0 font-weight-bold text-primary"> {{jobcareers.company && jobcareers.company.name}}<small>({{jobcareers.position && jobcareers.position.name}})</small></h3>
          </div>

          <div class="card-body">
            <form>
              <div class="form-group">
                <div class="row">
                  <div class="col-lg-5 offset-lg-1">
                    <label for="course_id"> Course :</label>
                    <select class="form-control"  v-model="coursename" id="course_id" @change="readSection">
                      <option disabled value="">Please select one</option>
                      <option v-for="(course, index) in courses" :value="course.id" > 
                        {{ course.name }} ( {{ course.cityname }} )
                      </option>
                    </select>
                  </div>

                  <div class="col-lg-5">
                    <label for="section_id"> Section :</label>
                    <select class="form-control" v-model="section_id" id="section_id"  @change="getStudents()">
                      <option disabled value="">Please select one</option>
                      <option v-for="(section, index) in sections" :value="section.id" > 
                        {{ section.title }}  
                      </option>
                    </select>
                  </div>
                </div>
              </div>

              <div class="form-group">
                <div class="row">
                  <div class="col-lg-2 offset-lg-1" v-for="(interviewstudent, index) in interviewstudents">
                    <input type="checkbox" :id="`customRadioInline${interviewstudent.id}`" name="customRadioInline" v-model="checkboxvalues" :value="interviewstudent.id">
                    <label :for="`customRadioInline${interviewstudent.id}`" class="mx-2">{{interviewstudent.inquires.name}}</label>                   
                    
                  </div>
                </div>
              </div>

              <div class="form-group">
                <div class="row">
                  <div class="col-lg-5 offset-lg-1 ">
                    <label>Remark:</label>
                    <textarea id="remark" placeholder="Enter remark" class="form-control" v-model="interview.remark"></textarea>
                  </div>
                  <div class="col-lg-5 ">
                    <label>Appointment Date:</label>
                    <input type="date" class="form-control" v-model="interview.appointment">
                  </div>
                  
                </div>
              </div>

              <div class="form-group">
                <div class="row">                  
                  <div class="col-lg-2 offset-lg-9">
                    <label>&nbsp;</label>
                    <button type="button" @click="createInterview" class="btn btn-primary form-control">
                      <i class="fa fa-save pr-2"></i> Save
                    </button>
                  </div>
                </div>
              </div>

            </form>
            
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
      interview: {
        appointment: '',
        remark: '',                         
      },
      course_id:'',
      coursename:'',
      section_id:'',
      students:[], 
      student_id: '',            
      courses:[],
      sections:[],
      jobcareer_id: '',               
      errors: [],
      message: '',
      interviews: [],
      update_interview: {},
      gender:'',
      male:'',
      female:'',
      both:'',
      picked:'',
      interviewstudents:[],
      checkboxvalues:[],
      jobcareers:{},
      students:[],
    }
  },
  mounted() {
    this.readCourse();
    this.readJobcareer();
  },
  methods: {
    reset(){
      this.interview.appointment = '';
    },
    readCourse(){
      axios.get('/api/setup/course')
      .then(response => {
        this.courses = response.data.courses;
        // console.log(this.courses);
      });
    },

    readSection(){
      axios.get('/api/setup/interviews/sections',{
        params: {
          course_id : this.coursename
        }
      })
      .then(response => {
        this.sections = response.data.sections;
      })
    },

    getStudents(){
      axios.get('/api/setup/interviews/students', {
        params: {
          jobcareer_id: this.$route.params.id,
          section_id: this.section_id
        }
      })
      .then(response => {
        this.interviewstudents = response.data.interviewstudent;
      })
      .catch(error => {
        console.log(error);
      });
    },

    readJobcareer(){
      axios.get('/api/setup/jobcareer/' + this.$route.params.id, {
        
      })
      .then(response => {
        this.jobcareers  = response.data.jobcareers;
      });
    },

    createInterview(){
      axios.post('/api/setup/interview', {
        appointment: this.interview.appointment,
        remark : this.interview.remark,
        student_id : this.checkboxvalues,
        jobcareer_id :this.$route.params.id,
      })
      .then(response => {
        this.updateJobcareer();
        window.location.href = '../jobcareer';
      })
    },

    updateJobcareer(){
      axios.patch('/api/setup/interview/' + this.$route.params.id, {
         
      })
    }
  }
}
  
</script>