$(document).ready(function(){
	
	$(".qupvote").submit(function( event ){
	
	  event.preventDefault();
	
		$.ajax({
			type: $(this).attr('method'),
			url: $(this).attr('action'),
			dataType: "json",
		  success: function(msg){
		  	
		  $("#tupvote" + msg.q_no).html(msg.total_upcount);
		  $("#tdownvote" + msg.q_no).html(msg.total_downcount);
		  },
			error: function (xhr, ajaxOptions, thrownError) {
        alert(xhr.status);
        alert(thrownError);
      }

		});
		
	});
});


$(document).ready(function(){
	$('#logo').click(function(){
		$('#logo').fadeOut('fast');
	});

	$('.pull-me').click(function(){
    $('table').slideToggle('slow');
  });
	
	$( "form" ).submit(function( event ) {

	  event.preventDefault();
		$('h1').html("Loading...");

	
	  var url = ( $( this ).serialize() );
		$.ajax({
			type: "POST",
			url: '/urls', 
			data: url,
			dataType: "json",
		}).done(function(msg){

		
		$(".result").append("<tr><td>" + msg["long_url"] + "</td><span><td><a href=" + msg["short_url"] +">" + msg["short_url"] + "></td></a><td>" + msg["click_count"] + "</td></span></tr>");
		$('h1').html("Your Private Shorten Url !");

		});
		
	});
});