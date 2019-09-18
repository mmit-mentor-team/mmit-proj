<template>
    <div>
        <h4 class="text-center">Attendance Reports</h4>
        <select class="custom-select" v-model="selected_section" @change="getAttendances">
            <option disabled value="">Select Course</option>
            <option v-for="section in sections" :key="section.key" :value="section">{{section.title}}</option>
        </select>
        <table class="table table-responsive table-bordered" v-if="attendance_data">
            <thead>
                <tr>
                    <th>No.</th>
                    <th>Name</th>
                    <th class="verticaltext" v-for="att_date in attendance_dates" :key="att_date.key">
                        {{att_date.date}}
                    </th>
                    <th>Total</th>
                    <th>Absent</th>
                    <th>%</th>
                </tr>
            </thead>
            <tbody>
                <tr v-for="(attendance, index) in attendances" :key="attendance.key">
                    <td>{{index+1}}</td>
                    <td>{{attendance.name}}</td>
                    <td v-for="temp in attendance.attendances" :key="temp.key" :class="{'present': (temp.status == 1), 'absent': (temp.status == 0)}">
                        
                    </td>
                </tr>
            </tbody>
        </table>
    </div>
</template>
<script>
    export default {
        props: ['sections'],

        data() {
            return {
                attendances: [],
                selected_section: '',
                attendance_dates: []
            }
        },

        computed: {
            attendance_data: function () {
                if (_.isEmpty(this.attendances)) {
                    return false;
                } else {
                    return true;
                }
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
                        this.attendances = response.data;
                        this.attendance_dates = this.attendances[0].dates;
                    })
                    .catch(error => (console.log(error)));
            }
        }
    }

</script>
<style scoped>
    .verticaltext {
        transform: rotate(-90deg);
        transform-origin: 60% 85%;
        height: 120px;
        max-width: 30px;
    }

    .absent {
        background: red;
    }

    .present {
        background: blue;
    }
</style>
