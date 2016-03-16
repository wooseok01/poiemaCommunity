$(function(){
	$('.datePicker').datepicker({
		dateFormat : 'yy-mm-dd'
	});
	
});

$(document).ready(function(){
	var type, livingCase, sex, house,
		protection, generation;
	
	var parameter = window.location.search.substring(1);
	
	if(parameter != ''){
		var id = parameter.split('=');
		
		$('#id').attr('value',id[1]);
		$('form').attr('action','../main/update');
	}
	
	if($('#type').html() != null || $('#type').html() != ''){
		type = $('#type').val();
		
		switch(type){
			case 'A' :
				$('select[name=type]').find('option').eq(0).attr('selected','selected');
				break; 
			case 'B' :
				$('select[name=type]').find('option').eq(1).attr('selected','selected');
				break;
			case 'love' :
				$('select[name=type]').find('option').eq(2).attr('selected','selected');
				break;
			case 'none' :
				$('select[name=type]').find('option').eq(3).attr('selected','selected');
				break;
		}
	}
	
	if($('#livingCase').html() != null || $('#livingCase').html() != ''){
		livingCase = $('#livingCase').html();
		switch(livingCase){
			case 'high' : 
				$('select[name=livingCase]').find('option').eq(0).attr('selected','selected');
				break;
			case 'mid' : 
				$('select[name=livingCase]').find('option').eq(1).attr('selected','selected');
				break;
			case 'low' :
				$('select[name=livingCase]').find('option').eq(2).attr('selected','selected');
				break;
		}
	}
	
	if($('#sex').html() != null || $('#sex').html() != ''){
		sex = $('#sex').val();
		switch(sex){
			case 'F':
			case 'f':
				$('select[name=sex]').find('option').eq(0).attr('selected','selected');
				break;
				
			case 'M' :
			case 'm' :
				$('select[name=sex]').find('option').eq(1).attr('selected','selected');
				break;
		}
	}
	
	if($('#house').html() != null || $('#house').html() != ''){
		house = $('#house').val();
		switch(house){
			case 'month' :
				$('select[name=house]').find('option').eq(0).attr('selected','selected');
				break;
			case 'year' :
				$('select[name=house]').find('option').eq(1).attr('selected','selected');
				break;
			case 'free' :
				$('select[name=house]').find('option').eq(2).attr('selected','selected');
				break;
			case 'own' :
				$('select[name=house]').find('option').eq(3).attr('selected','selected');
				break;
		}
	}
	
	if($('#protection').html() != null || $('#protection').html() != ''){
		protection = $('#protection').val();
		
		switch(protection){
		case '1' :
			$('select[name=protection]').find('option').eq(0).attr('selected','selected');
			break;
		case '2' :
			$('select[name=protection]').find('option').eq(1).attr('selected','selected');
			break;
		case '3' :
			$('select[name=protection]').find('option').eq(2).attr('selected','selected');
			break;
		case '4' :
			$('select[name=protection]').find('option').eq(3).attr('selected','selected');
			break;
		case '5' :
			$('select[name=protection]').find('option').eq(4).attr('selected','selected');
			break;
		}
	}
	
	if($('#generation').html() != null || $('#generation').html() != ''){
		generation = $('#generation').val();
		
		switch(generation){
		case '1' :
			$('select[name=generation]').find('option').eq(0).attr('selected','selected');
			break;
		case '2' :
			$('select[name=generation]').find('option').eq(1).attr('selected','selected');
			break;
		case '3' :
			$('select[name=generation]').find('option').eq(2).attr('selected','selected');
			break;
		case '4' :
			$('select[name=generation]').find('option').eq(3).attr('selected','selected');
			break;
		case '5' :
			$('select[name=generation]').find('option').eq(4).attr('selected','selected');
			break;
		case '6' :
			$('select[name=generation]').find('option').eq(5).attr('selected','selected');
			break;
		case '7' :
			$('select[name=generation]').find('option').eq(6).attr('selected','selected');
			break;
		case '8' :
			$('select[name=generation]').find('option').eq(7).attr('selected','selected');
			break;
		case '9' :
			$('select[name=generation]').find('option').eq(8).attr('selected','selected');
			break;
		}
	}
	
	$('#cancelButton > input').click(function(){
		location.href = '../view/list.jsp';
	});
	
	
});