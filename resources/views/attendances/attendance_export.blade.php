<table>
    <thead> 
    <tr>
     
      <th colspan="4" style="text-align: center; font-size: 12px;">Attendance Report</th>
    </tr>
  </thead>
</table>

<table>
  <thead>
    <tr>
      <th style="text-align: center;">Name</th>
      <th style="text-align: center;">Total</th>
      <th style="text-align: center;">Absent</th>
      <th style="text-align: center;">Percentage</th>
    </tr>
  </thead>
  <tbody>
    @foreach($attendancereports as $attendancereport)
    <tr>
      <td>{{$attendancereport['name']}}</td>
      <td>{{$attendancereport['total']}}</td>
      <td>{{$attendancereport['absents']}}</td>
      <td>{{$attendancereport['percent']}}</td>
    </tr>
    @endforeach
  </tbody>
</table>

