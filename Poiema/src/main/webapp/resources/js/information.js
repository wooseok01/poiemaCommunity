$(document).ready(function(){
	var type, consultCase, sex, house,
		protection, generation;
	
	var parameter = window.location.search.substring(1);
	
	$('.keyPressEvent').on('keypress', function(e){
		if(e.which == 13){
			var tableIndex = $(this).attr('tableIndex')*1;
			tableIndex++;
			$('.keyPressEvent').each(function(index, element){
				if($(element).attr('tableIndex') == tableIndex){
					$(element).focus();
				}
			});
			
			return false;
		}
	});
	
	if(parameter != ''){
		var id = parameter.split('=');
		
		$('#id').attr('value',id[1]);
		$('form').attr('action','./update');
		
		$.ajax({
			url : './getFamilyData?seq='+id[1],
			type : 'get',
			dataType : 'json',
			success : function(data){
				$.each(data, function(index, object){
					var famName = object.famName;
					var age = object.age;
					var job = object.job;
					var relation = object.relation;
					var liveWith = object.liveWith;
					var etc = object.etc;
					
					$('#famName'+(index+1)).val(famName);
					$('#age'+(index+1)).val(age);
					$('#job'+(index+1)).val(job);
					$('#relation'+(index+1)).val(relation);
					$('#etc'+(index+1)).val(relation);
					
					switch(liveWith){
						case '1' :
							$('select [name=liveWith'+(index+1)+']').find('option').eq(0).attr('selected','selected');
							break;
						case '2' :
							$('select [name=liveWith'+(index+1)+']').find('option').eq(1).attr('selected','selected');
							break;
					}
				});
			},
			error : function(err){
				console.log(err.message);
			}
		})
	}
	
	if($('#type').val() != null || $('#type').val() != ''){
		type = $('#type').val();
		
		switch(type){
			case 'A' :
				$('select[name=type]').find('option').eq(0).attr('selected','selected');
				break; 
			case 'B' :
				$('select[name=type]').find('option').eq(1).attr('selected','selected');
				break;
			case 'boucher' :
				$('select[name=type]').find('option').eq(2).attr('selected','selected');
				break;
			case 'love' :
				$('select[name=type]').find('option').eq(3).attr('selected','selected');
				break;
			case 'none' :
				$('select[name=type]').find('option').eq(4).attr('selected','selected');
				break;
			
		}
	}
	
	if($('#consultCase').val() != null || $('#consultCase').val() != ''){
		consultCase = $('#consultCase').val();
		console.log(consultCase);
		switch(consultCase){
			case 'yes' : 
				$('select[name=consultCase]').find('option').eq(0).attr('selected','selected');
				break;
			case 'no' : 
				$('select[name=consultCase]').find('option').eq(1).attr('selected','selected');
				break;
			case 'import' : 
				$('select[name=consultCase]').find('option').eq(2).attr('selected','selected');
				break;
		}
	}
	
	if($('#sex').val() != null || $('#sex').val() != ''){
		sex = $('#sex').val();

		switch(sex){
			case 'F':
			case 'f':
				$('select[name=sex]').find('option').eq(1).attr('selected','selected');
				break;

			case 'M' :
			case 'm' :
				$('select[name=sex]').find('option').eq(0).attr('selected','selected');
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
			$('select[name=protection]').find('option').eq(0).attr('selected','selected');break;
		case '2' :
			$('select[name=protection]').find('option').eq(1).attr('selected','selected');break;
		case '3' :
			$('select[name=protection]').find('option').eq(2).attr('selected','selected');break;
		case '4' :
			$('select[name=protection]').find('option').eq(3).attr('selected','selected');break;
		case '5' :
			$('select[name=protection]').find('option').eq(4).attr('selected','selected');break;
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
	
	$('#cancelButton').click(function(){
		console.log('xxxx');
		location.href = './list';
	});
	
	
});