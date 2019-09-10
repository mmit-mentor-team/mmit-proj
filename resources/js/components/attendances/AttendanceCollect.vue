<template>
    <div>
        <h4>{{currentDate}}</h4>
        <p>{{now}}</p>
        <select class="custom-select" v-model="selected_section" @change="getStudents(selected_section)">
            <option disabled value="">Select Course</option>
            <option v-for="section in sections" :key="section.key" :value="section.id">{{section.title}}</option>
        </select>
        <div>
            <table class="table table-striped">
                <thead>
                    <tr>
                        <th class="col-1">No</th>
                        <th class="col-3 text-center">Name</th>
                        <th class="col-1">Status</th>
                        <th class="col-7">Remark</th>
                    </tr>
                </thead>
                <tbody>
                    <tr v-for="(student,index) in students" :key="student.key">
                        <td>{{index+1}}</td>
                        <td>{{student.name}}</td>
                        <td>
                            <div class="form-check">
                                <input type="checkbox" :value="student.id" v-model="presentStudents"
                                    @change="changeStatus(student, index, $event)">
                            </div>
                        </td>
                        <td class="p-0">
                            <input v-if="checkAbsence(student)" class="form-control my-1" type="text" placeholder="Fill remark"
                                v-model="remarks[index]" />
                        </td>
                    </tr>
                </tbody>
            </table>

            <button class="btn btn-primary">Submit</button>
        </div>
    </div>
</template>
<script>
    export default {
        props: ['today', 'sections'],

        data() {
            return {
                currentDate: '',
                now: '',
                selected_section: '',
                students: [],
                presentStudents: [],
                absences: [],
                remarks: [],
            };
        },

        mounted() {
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

            getStudents(section_id) {
                axios.get('/api/attendances/students/' + section_id)
                    .then(response => {
                        this.students = response.data;
                        this.students.forEach((student, index) => {
                            this.presentStudents.push(student.id);
                        });
                    })
                    .catch(error => {
                        console.log(error);
                    });
            },

            changeStatus(student, i, event) {
                if (!event.target.checked) {
                    this.absences.push(student);
                    // this.remarks[i] = student.id;
                } else {
                    let index = this.absences.indexOf(student);
                    if (index > -1) {
                        this.absences.splice(index, 1);
                        // this.remarks.splice(index,1);
                        delete this.remarks[i];
                    }
                }
            },

            checkAbsence(student){
                if(this.absences.find(q => q == student)){
                    return true;
                } else {
                    return false;
                }
            }
        }
    }

</script>
