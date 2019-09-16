<template>
	<div class="row">
		<div class="col-md-12">
			<div class="card">
				<div class="card-header">
					<h4 class="card-title">Income / Expense Report</h4>
				</div>
				<div class="card-body">
					<form class="mb-4">
						<div class="form-row">
						    <div class="col-md-4">
						      <select name="" class="form-control" v-model="month">
						      	<option disabled value="">Please Select Month</option>
						      	<option value="Jan">Jan</option>
						      	<option value="Feb">Feb</option>
						      	<option value="Mar">Mar</option>
						      	<option value="April">April</option>
						      	<option value="May">May</option>
						      	<option value="June">June</option>
						      	<option value="July">July</option>
						      	<option value="Aug">Aug</option>
						      	<option value="Sep">Sep</option>
						      	<option value="Oct">Oct</option>
						      	<option value="Nov">Nov</option>
						      	<option value="Dec">Dec</option>
						      </select>
						    </div>
						    <div class="col-md-4">
						    	<select name="" class="form-control" v-model="year">
						    		  <option disabled value="">Please Select Year</option>
						    		<option v-for="(year, index) in years" :value="year">{{year}}</option>
						    		
						    	</select>
						    </div>
						    <div class="col-md-1">
						      <input type="button" class="btn btn-primary" value="Search"  @click="Search">
						    </div>
						</div>
					</form>

					<table class="table table-sm table-bordered my-3">
						<tbody>
							<tr>
								<td class="table-dark">Admin Name:</td>
								<td>Yin Min Ei</td>
								<td class="table-dark">Dept:</td>
								<td>YGN - MPT Office</td>
							</tr>
							<tr>
								<td class="table-dark">Email:</td>
								<td>yinmin@gmail.com</td>
								<td class="table-dark">Month:</td>
								<td>{{month}}</td>
							</tr>
							<tr>
								<td class="table-dark">Phone No:</td>
								<td>09876543</td>
								<td class="table-dark">Year:</td>
								<td>{{year}}</td>
							</tr>
						</tbody>
					</table>

					<table class="table table-sm table-bordered">
						
					</table>
				</div>
			</div>

			 <div class="card-body" id="reportcard">
                    <div class="table-responsive">
                      <table class="table table-bordered table-hover" id="table_id">
                        <thead>
                          <tr class="text-center">
                            <th scope="col">No.</th>
                            <th scope="col">Type</th>
                            <th scope="col">Description</th>
                            <th scope="col">Date</th>
                            <th scope="col">Expense</th>
                          </tr>
                        </thead>
                        <tbody>
                          <tr v-for="(results, index) in result">
                            <td scope="row" class="resultid">{{index + 1}}</td>
                            <td class="resultid">{{results.type}}</td>
                            <td class="resultid">{{results.description}}</td>
                            <td class="resultid">{{results.date}}</td>
                            <td class="resultid">{{results.amount}}</td>
                          </tr>
                          <tr>
                          	<th colspan="4" class="resultid">Total Expense</th>
                          	<td class="resultid">{{totalItem}}</td>
                          </tr>
                          <tr>
                          	<th colspan="4" class="resultid">Income</th>
                          	<td class="resultid">{{totalIncome}}</td>
                          </tr>
                           <tr>
                          	<th colspan="4" class="resultid">Balance</th>
                          	<td class="resultid">{{SubItem}}</td>
                          </tr>
                          <tr v-if="result.length > 0">
                          	<td colspan="5" align="center"><input type="button" value="Report" class="btn btn-primary" @click="report(month,year)"></td>
                          </tr>
                        </tbody>
                        
                      </table>
                    </div>
                  </div>

		</div>
	</div>

</template>

<script type="text/javascript">
	export default{
		data(){
			return{
				years:[],
				year:'',
				month:'',
				result:[],
				iresult:[],
				expensereport:{
					ename:'',
					edate:'',
					eamount:'',
				}
			}
		},
		mounted(){
			this.readReports();
			$('#total').hide();
			$('#reportbutton').hide();
			$('#reportcard').hide();
		},
		methods:{
			 readReports()
           {
               axios.get('/api/setup/report')
                   .then(response => {
                       this.years = response.data.years;
                   });
           },
	        Search(){
	       
               axios.post('/api/setup/expense',{
               	month:this.month,
               	year:this.year
               		})
               .then(response => {
               	//console.log(response);
              	this.result = response.data.result;
              	this.iresult = response.data.iresult; 
              	//console.log(response.data.iresult);
              	$('#reportcard').show();  
              	$('#reportbutton').show(); 
           		});
                   
   		 	},
   		 	report(month, year){
   		 		//console.log(month,year);
   		 		window.location.href="/export/" + month + '/' + year;
   		 			
        	}
   		
		},
		computed: {

		    totalItem: function(){
		    	$('#total').show();
		    	
		      let sum = 0;
		      this.result.forEach(function(result) {
		         sum += (parseFloat(result.amount));
		      });

		     return sum;

		   },
		   totalIncome: function(){
		   	$('#total').show();
		    	$('#income').show();
		    	
		      let sum1 = 0;
		      this.iresult.forEach(function(iresult) {
		         sum1 += (parseFloat(iresult.amount));
		      });
			return sum1;

		   },
		   SubItem: function(){
		    	
		      let sub = 0;
		      let sum1 = 0;
		      let sum = 0;
		      this.iresult.forEach(function(iresult) {
		         sum1 += (parseFloat(iresult.amount));
		      });
		      this.result.forEach(function(result) {
		         sum += (parseFloat(result.amount));
		      });
		      sub = sum1-sum;
		     return sub;

		   }
		}
	}
</script>

<style type="text/css">
#total{
	margin-left:835px;
}
#income{
	margin-left:835px;
}
#reportbutton{
	margin-left:900px;
}
.resultid{
	text-align:center;
}

</style>
