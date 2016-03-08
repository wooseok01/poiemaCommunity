$(function(){
	$('.datePicker').datepicker({
		dateFormat : 'yy-mm-dd'
	});
	
});

$(document).ready(function(){
	if($('#type').html() != null || $('#type').html() != ''){
		var type = $('#type').html();
		switch(type){
			case 'A' :
				$('select[name=type]').find('option').eq(1).attr('selected','selected');
				break; 
			case 'B' :
				$('select[name=type]').find('option').eq(2).attr('selected','selected');
				break;
			case 'C' :
				$('select[name=type]').find('option').eq(3).attr('selected','selected');
				break;
		}
	}
	
	if($('#livingCase').html() != null || $('#livingCase').html() != ''){
		var livingCase = $('#livingCase').html();
		switch(livingCase){
			case 'high' : 
				$('select[name=livingCase]').find('option').eq(1).attr('selected','selected');
				break;
			case 'mid' : 
				$('select[name=livingCase]').find('option').eq(2).attr('selected','selected');
				break;
			case 'low' :
				$('select[name=livingCase]').find('option').eq(3).attr('selected','selected');
				break;
		}
	}
	
	
	
	
});