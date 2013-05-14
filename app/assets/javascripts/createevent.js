$(document).ready(function() {

$('#createbutton').click(function() {
  var results = [];
  date = $("#createbutton").val();
  results.push(date);
      var droprestaurants = $('#droparea li');
      _.each(droprestaurants, function (restaurant) {
      var id = $(restaurant).data("id");
      results.push(id);
      console.log(results);
    });

    $.ajax({
      url: "/events/newday",
      type: 'PUT',
      data: {results: results}
    });

    
});
    });
