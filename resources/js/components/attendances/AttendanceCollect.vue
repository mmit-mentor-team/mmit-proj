<template>
    <div>
        <h4>{{currentDate}}</h4>
        <p>{{now}}</p>
        <select class="custom-select" v-model="selected_section" @change="getStudents()">
            <option disabled value="">Select Course</option>
            <option v-for="section in sections" :key="section.key" :value="section.id">{{section.title}}</option>
        </select>
        <div v-if="student_data">
            <table class="table table-striped" v-if="student_data">
                <thead>
                    <tr>
                        <th class="col-1">No</th>
                        <th class="col-3 text-center">Name</th>
                        <th class="col-1">Status</th>
                        <th class="col-7">Remark</th>
                    </tr>
                </thead>
                <tbody>
                    <tr v-for="(student,index) in students.data" :key="student.key">
                        <td>{{index+1}}</td>
                        <td>{{student.name.name}}</td>
                        <td>
                            <div class="form-check">
                                <input type="checkbox" :value="student.id" :checked="status[index]"
                                    @change="changeStatus(student, index, $event)">
                            </div>
                        </td>
                        <td class="p-0">
                            <input v-if="!status[index]" class="form-control my-1" type="text" placeholder="Fill remark"
                                v-model="remarks[index]" />
                        </td>
                    </tr>
                </tbody>
            </table>
            <pagination :data="students" @pagination-change-page="getStudents"></pagination>

            <button class="btn btn-primary" @click="submitAttendance()">Submit</button>
        </div>
        <div v-else>
            <p>No Data</p>
        </div>
    </div>
</template>
<script>
    export default {
        props: ['today', 'sections'],

        data() {
            return {
                //I want to show current Date and Time, so attendance collection will be easy I think.
                currentDate: '',
                now: '',
                selected_section: '', //Selected Section
                students: {}, //Database Data
                status: [],
                remarks: [],
            };
        },

        computed: {
            student_data:function() {
                if(_.isEmpty(this.students.data)){
                    return false;
                } else {
                    return true;
                }
            }
        },

        mounted() {
            //Setting the Date and Time
            let today = new Date(this.today);
            this.currentDate = today.toDateString();
            this.updateClock(today);
        },

        methods: {
            updateClock(today) {

                today.setSeconds(today.getSeconds() + 1);
                let time = today.getHours() + ':' + this.padTime(today.getMinutes()) + ':' + this.padTime(today
                    .getSeconds());
                this.now = time;
                setTimeout(this.updateClock, 1000, today);
            },

            padTime(time) {
                return (time < 10 ? '0' : '') + time;
            },

            //Getting Database Data
            getStudents(page = 1) {
                axios.get('/api/attendances/students/' + this.selected_section + '?page=' + page)
                    .then(response => {
                        this.students = response.data;
                        this.students.data.forEach((student, index) => {
                            this.status.push(true);
                        });
                    })
                    .catch(error => {
                        console.log(error);
                    });
            },

            //Change the state of Present and Absence
            changeStatus(student, i, event) {
                if (!event.target.checked) {
                    this.status[i] = false;
                } else {
                    // delete this.remarks[i];
                    this.remarks[i] = '';
                    this.status[i] = true;
                }
            },

            //Save attendance records
            submitAttendance() {
                let data = [];
                this.students.data.forEach((student, index) => {
                    data.push({
                        'student_id': student.id,
                        'status': this.status[index],
                        'remark': this.remarks[index] || ''
                    });
                });
                axios.post('/api/attendances/store', {
                        data: data
                    })
                    .then(response => {
                        this.getStudents();
                    })
                    .catch(error => {
                        console.log(error);
                    });
            }
        }
    }

</script>
