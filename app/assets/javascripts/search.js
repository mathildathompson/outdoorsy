$(document).ready(function() {
  $('#search').change(function() {
    var searchterm = $(this).val();
    console.log($(this).val());
    $.ajax({
    url: "/events",
    type: 'POST',
    data: {searchterm: searchterm}
  });

  });
});
