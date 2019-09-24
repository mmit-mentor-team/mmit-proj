<template>
    <div>
        <h4 class="text-center">Attendance Reports</h4>
        <select class="custom-select" v-model="selected_section" @change="getAttendances">
            <option disabled value="">Select Course</option>
            <option v-for="section in sections" :key="section.key" :value="section.id">{{section.title}}</option>
        </select>
        <div v-if="attendance_data">
        <table class="table table-responsive table-bordered">
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
                    <td v-for="temp in attendance.attendances" :key="temp.key"
                        :class="{'present': (temp.status == 1), 'absent': (temp.status == 0)}"></td>
                    <td>{{total}}</td>
                    <td>{{absent(attendance)}}</td>
                    <td>{{percent(attendance)}}</td>
                </tr>
            </tbody>
        </table>
        <button class="btn btn-primary" @click="exportExcel()">Export Excel</button>
        </div>
    </div>
</template>
<script>
    export default {
        props: ['sections'],

        data() {
            return {
                attendances: [],
                selected_section: '',
                attendance_dates: [],
                total: '',
            }
        },

        computed: {
            getTimeData() {
                let section = this.selected_section;
                console.log(section.startdate);
                let diff = Math.floor(Date.parse((section.enddate) - Date.parse(section.startdate)) / 86400000);
                console.log(diff);
                return diff;
            },

            attendance_data: function () {
                if (_.isEmpty(this.attendances)) {
                    return false;
                } else {
                    return true;
                }
            }
        },

        methods: {
            getAttendances() {
                axios.get('/api/attendances/' + this.selected_section)
                    .then(response => {
                        //return;
                        this.attendances = response.data;
                        this.attendance_dates = this.attendances[0].dates;
                        this.total = this.attendance_dates.length;
                    })
                    .catch(error => (console.log(error)));
            },

            absent(student) {
                return student.attendances.filter(attendance => attendance.status == 0).length;
            },

            percent(student){
                return Math.ceil(((this.total - this.absent(student))/this.total) * 100);
            },

            exportExcel(){
                window.location = '/attendances/export/' + this.selected_section;
            }
        }
    };

</script>
<style scoped>
    .verticaltext {
        transform: rotate(-90deg);
        transform-origin: 60% 85%;
        height: 120px;
        max-width: 30px;
    }

    .absent {
        background: rgb(189, 63, 63);
    }

    .present {
        background: rgb(104, 183, 209);
    }

</style>
