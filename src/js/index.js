$( "#get-button" ).click( function() {
	$.ajax({
		url: "http://localhost:8000/test_get",
		data: {
			language: $("#language").val()
		},
		type: "GET",
		dataType : "json",

		success: function( json ) {
			$( "#language-text" ).text(json.message);
		},

		error: function( xhr, status, errorThrown ) {
			error(xhr, status, errorThrown);
		},
	});
});

$("#post-button").click(function() {
	$.ajax({
		url: "http://localhost:8000/test_post",
		data: {
			first_name: $("#fname").val(),
			last_name: $("#lname").val(),
			city: $("#city").val(),
			state: $("#state").val(),
			zipcode: $("#zip").val()
		},
		type: "POST",
		dataType : "json",

		success: function( json ) {
			alert('POST Successful');
		},

		error: function( xhr, status, errorThrown ) {
			error(xhr, status, errorThrown);
		},
	});
});

$("#put-button").click(function() {
	$.ajax({
		url: "http://localhost:8000/test_put",
		data: {
			make: $("#make").val(),
			model: $("#model").val()	    
		},
		type: "PUT",
		dataType : "json",

		success: function( json ) {
			alert('PUT Successful');
		},

		error: function( xhr, status, errorThrown ) {
			error(xhr, status, errorThrown);
		},
	});
});

$(".delete").click(function() {
	$.ajax({
		url: "http://localhost:8000/test_delete/" + $(this).parent().parent().children(".id").text(),
		data: {
			id: $(this).parent().parent().children('.id').text()
		},
		type: "DELETE",
		dataType : "json",

		
		context: $(this),
		success: function( json ) {
			$(this).parent().parent().slideUp();
		},

		error: function( xhr, status, errorThrown ) {
			error(xhr, status, errorThrown);
		},
	});
});

function error(xhr, status, errorThrown) {
	alert( "Sorry, there was a problem!" );
	console.log( "Error: " + errorThrown );
	console.log( "Status: " + status );
	console.dir( xhr );
}