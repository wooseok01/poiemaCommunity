$(document).ready(function(){
	$('.target').click(function(){
		var id = $(this).parent().find('.hidden').html();
		location.href = '../main/detail?id='+id;
	});
	
	$('#typeSearch').click(function(){
		location.href = '../main/listType';
	});
	
	$('#addPerson').click(function(){
		location.href = '../view/information.jsp';
	});
	
});