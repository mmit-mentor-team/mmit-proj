
/**
 * First we will load all of this project's JavaScript dependencies which
 * includes Vue and other libraries. It is a great starting point when
 * building robust, powerful web applications using Vue and Laravel.
 */

require('./bootstrap');

window.Vue = require('vue');

import VueRouter from 'vue-router'
Vue.use(VueRouter)

import Jobcareer from './components/Jobcareer.vue'
import Interviewform from './components/Interviewform.vue'
import Interview from './components/Interview.vue'

const routes=[
	{
		name: 'jobcareer',
		path: '/jobcareer',
		component: Jobcareer
	},
	{
		name: 'interviewform',
		path: '/interviewform/:id',
		component: Interviewform
	},
	{
		name: 'interviewformlist',
		path: '/interviewformlist',
		component: Interviewform
	},
	{
		name: 'interview',
		path: '/interview/:id',
		component: Interview
	},
];

const router =new VueRouter({ mode: 'history', routes: routes});



/**
 * The following block of code may be used to automatically register your
 * Vue components. It will recursively scan this directory for the Vue
 * components and automatically register them with their "basename".
 *
 * Eg. ./components/ExampleComponent.vue -> <example-component></example-component>
 */

// const files = require.context('./', true, /\.vue$/i);
// files.keys().map(key => Vue.component(key.split('/').pop().split('.')[0], files(key).default));

Vue.component('example-component', require('./components/ExampleComponent.vue').default);
Vue.component('city', require('./components/City.vue').default);
Vue.component('course', require('./components/Course.vue').default);
Vue.component('location', require('./components/Location.vue').default);
Vue.component('duration', require('./components/Duration.vue').default);
Vue.component('teacher', require('./components/Teacher.vue').default);
Vue.component('staff', require('./components/Staff.vue').default);
Vue.component('township', require('./components/Township.vue').default);
Vue.component('expense', require('./components/Expense.vue').default);
Vue.component('income', require('./components/Income.vue').default);
Vue.component('sectionkg', require('./components/Sectionkg.vue').default);
Vue.component('company',require('./components/Company.vue').default);
Vue.component('inquire', require('./components/Inquire.vue').default);
Vue.component('education', require('./components/Education.vue').default);
Vue.component('student', require('./components/Student.vue').default);
Vue.component('jobcareer', require('./components/Jobcareer.vue').default);
Vue.component('position',require('./components/Position.vue').default);
Vue.component('permission', require('./components/Permission.vue').default);
Vue.component('role', require('./components/Role.vue').default);
Vue.component('dashboard', require('./components/Dashboard.vue').default);
Vue.component('report', require('./components/Report.vue').default);
Vue.component('profile',require('./components/Profile.vue').default);

Vue.component('interview', require('./components/Interview.vue').default);
Vue.component('interviewform', require('./components/Interviewform.vue').default);
Vue.component('hire', require('./components/Hire.vue').default);
Vue.component('dismiss', require('./components/Dismiss.vue').default);
Vue.component('pagination', require('laravel-vue-pagination'));
Vue.component('attendance-collect', require('./components/attendances/AttendanceCollect.vue').default);
Vue.component('attendance-report', require('./components/attendances/AttendanceReport.vue').default);
/**
 * Next, we will create a fresh Vue application instance and attach it to
 * the page. Then, you may begin adding components to this application
 * or customize the JavaScript scaffolding to fit your unique needs.
 */

import VueResource from 'vue-resource';
Vue.use(VueResource);

import BootstrapVue from 'bootstrap-vue';
Vue.use(BootstrapVue);

import vSelect from 'vue-select';
Vue.component('v-select', vSelect);

import 'vue-select/dist/vue-select.css';

require('./backend/vendor/fontawesome-free/css/all.min.css');
require('./backend/css/sb-admin-2.min.css');
require('./backend/vendor/jquery/jquery.min.js');
require('./backend/vendor/bootstrap/js/bootstrap.bundle.min.js');
require('./backend/vendor/jquery-easing/jquery.easing.min.js');

require('./backend/vendor/datatables/dataTables.bootstrap4.min.css');
require('./backend/vendor/datatables/jquery.dataTables.min.js');
require('./backend/vendor/datatables/dataTables.bootstrap4.min.js');
// require('./backend/js/demo/datatables-demo.js');
require('./backend/js/sb-admin-2.min.js');
require('./backend/js/vuejs-datatable.js');



Vue.http.headers.common['X-CSRF-TOKEN'] = $('meta[name="csrf-token"]').attr("content");
const app = new Vue({
    el: '#app',router,routes
});
