$(document).ready(function(){

	$('#search').change(function(){

	   var searchTerm = $('#search').val();
	   $('#search').val('');

		var results = _.filter(users, function(user) {
        var matchTerm = new RegExp(searchTerm);
        return user.name.match(matchTerm);
        });


        console.log(results);
	    var html = "<p>" + results[0].name + "</p>";
	    html = html + '<a href="/users/create?friend_id=X" data-method="post" rel="nofollow">Add as friend</a>';
	    html = html.replace("X", "" + results[0].id);
	    $('#searchresult').html('').append(html)


	
	});

	// _.each(currentuserfriends, function(friend){
	// 	console.log(friend);
	// 	var list = "<p>" + friend.name + "</p>";
	// 	list = list + '<a href="/users/show?friend_id=X" data-method="post" rel="nofollow">Add to day</a>';
	// 	list = list.replace("X", "" + friend.id);
	// 	$('.selectfriends').append(list);
	// });





	// $.ajax({
 //        url:'users',
	// 	type:'POST',
	// 	data:{results:results}
	// })
	
 

})
	





// $(document).ready(function(){



// 	$('#search').change(function(){
		
// 		var searchTerm = $(this).val();

// 		var results = _.filter(items, function(item) {
// 			var matchTerm = new RegExp(searchTerm);
// 			return item.name.match(matchTerm);

// 		});
// 		console.log(results);

// 		$('.to_do_item').html('')

// 		_.each(results, function(item){
// 		var html = "<p>" + item.name + "</p>";
// 		$('.todoitem').append(html);
// 	  })

	  
// 	 });

// });