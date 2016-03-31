$(document).ready(function(){
	
	var type = $('#type').val();
	
	if(type != ''){
		switch(type){
			case 'A' :
				$('#selectType').find('option').eq(0).attr('selected','selected');
				break;
			case 'B' :
				$('#selectType').find('option').eq(1).attr('selected','selected');
				break;
			case 'love' : 
				$('#selectType').find('option').eq(2).attr('selected','selected');
				break;
			case 'none' : 
				$('#selectType').find('option').eq(3).attr('selected','selected');
				break;
			case 'all' : 
				$('#selectType').find('option').eq(4).attr('selected','selected');
				$('table > thead > tr > td').eq(8).html('확 인');
				break;
		}
	}
	
	$('.target').click(function(){
		var id = $(this).parent().find('.hidden').html();
		location.href = '../main/detail?id='+id;
	});
	
	$('#selectType').change(function(){
		var change = $(this).find('option:selected').val();
		location.href = '../main/listType?type='+change;
	});
	
	$('#goToList').click(function(){
		location.href = '../view/list.jsp';
	});
});