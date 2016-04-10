$(document).ready(function(){
	$('.target').click(function(){
		var id = $(this).parent().find('.hidden').html();
		location.href = './detail?id='+id;
	});
	
	$('#typeSearch').click(function(){
		location.href = './listType';
	});
	
	$('#addPerson').click(function(){
		location.href = './information';
	});
	
	
});