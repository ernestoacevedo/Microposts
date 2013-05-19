// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require foundation
//= require_tree .


$(document).foundation();

var createPost = function(c,id){
		$.ajax({
			type: 'POST',
			url: '/microposts',
			data: {micropost: {content: c,user_id: id}},
			dataType: 'JSON'
		}).done(function(){
			console.log('Datos insertados');
			$('.close-reveal-modal','#MicropostModal').click()
		});
};

$('#postIt').click(function(e){
		e.preventDefault();
		e.stopPropagation();
		var content = $('#micropost_content').val();
		var id = 6;
		createPost(content,id);
});

function updateCountdown() {
    // 140 is the max message length
    var remaining = 140 - jQuery('#micropost_content').val().length;
    if(remaining<0){
    	$('#counter').css('color','red');
    	$('#micropost_content').css('border','3px solid #e74c3c');
    }
    else{
    	$('#counter').css('color','black');
    	$('#micropost_content').css('border','1px solid #cccccc');
    }
    $('#counter').text(remaining);
}

$(document).ready(function(){
    updateCountdown();
    $('#micropost_content').change(updateCountdown);
    $('#micropost_content').keyup(updateCountdown);
});