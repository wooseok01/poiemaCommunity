$(document).ready(function(){
	$('.target').click(function(){
		var id = $(this).parent().find('.hidden').html();
		location.href = '../main/detail?id='+id;
	});
	
});