<template>
    <div>
        <h4 class="text-center">Attendance Reports</h4>
        <select class="custom-select" v-model="selected_section" @change="getAttendances">
            <option disabled value="">Select Course</option>
            <option v-for="section in sections" :key="section.key" :value="section">{{section.title}}</option>
        </select>
        <div v-if="selected_section">
            <p>Section is started at : {{selected_section.startdate}}</p>
            <p>Days in section is : {{getTimeData}}</p>
            <table class="table table-responsive table-bordered">
                <thead>
                    <tr>
                        <th>No.</th>
                        <th>Name</th>
                        <th v-for="n in 31" :key="n" class="text-center" style="min-width: 50px;">{{n}}</th>
                        <th>Total</th>
                        <th>Absence</th>
                        <th>%</th>
                    </tr>
                </thead>
                <tbody>
                    <tr v-for="(attendance, index) in attendances" :key="attendance.id">
                        <td>{{index+1}}</td>
                        <td>{{attendance.student_id}}</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
</template>
<script>
    export default {
        props: ['sections'],

        data() {
            return {
                attendances: [],
                selected_section: ''
            }
        },

        computed:{
            getTimeData(){
                let section = this.selected_section;
                console.log(section.startdate);
                let diff = Math.floor(Date.parse((section.enddate) - Date.parse(section.startdate))/86400000);
                console.log(diff);
                return diff;
            }
        },

        methods: {
            getAttendances() {
                axios.get('/api/attendances/' + this.selected_section)
                    .then(response => {
                        console.log(response.data.data);
                        this.attendances = response.data.data;
                    })
                    .catch(error => (console.log(error)));
            }
        }
    }

</script>
