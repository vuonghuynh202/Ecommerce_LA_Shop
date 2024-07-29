$(document).ready( function () {
  $('#myTable').DataTable();
});

$('#myTable')
.on('draw.dt', function () {
  $('ul.pagination').addClass('pagination-sm');
}).DataTable();