$(document).ready(function(){
	$('#select').change(function(){
		
		var livingCase = $(this).val();
		console.log(livingCase);
		$.ajax({
			url : './findHelpListByLivingCase',
			type : 'POST',
			dataType : 'json',
			data : {
				'livingCase' : livingCase
			},
			success : function(data){
				var tbody = $('#tbody');
				tbody.empty();
				
				
				$.each(data, function(index, object){
					var tr = $('<tr></tr>');
					
					var checkBox = $('<td></td>').append($('<input type="checkbox">'));
					var seq = $('<td></td>').append($('<input type="text" class="hidden"/>').val(object.seq).css('display','none'));
					var generation = $('<td></td>').html(generationSwitch(object.generation));
					var volunteer = $('<td></td>').html(object.volunteer);
					var address = $('<td></td>').html(object.address);
					var sex = $('<td></td>').html(sexSwitch(object.sex));
					var type = $('<td></td>').html(typeSwitch(object.type));
					var age = $('<td></td>').html(object.age);
					var livingCase = $('<td></td>').html(livingCaseSwitch(object.livingCase));
					var target = $('<td class="target"></td>').html(object.target);
					tr.append(checkBox);
					tr.append($('<td></td>').html(index+1));
					tr.append(livingCase);
					tr.append(type);
					tr.append(volunteer);
					tr.append(target);
					tr.append(sex);
					tr.append(age);
					tr.append(generation);
					tr.append(address);
					
					tbody.append(tr);
				});
				
				
			},
			error:function(request,status,error){
			    console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);}
		});
	});
});

function generationSwitch(generation){
	switch(generation){
	case '1' : return '독거';
	case '2' : return '독거노인';
	case '3' : return '노인부부';
	case '4' : return '한부모';
	case '5' : return '조손가정';
	case '6' : return '다문화';
	case '7' : return '소년,소녀 가장';
	case '8' : return '장애우 가정';
	case '9' : return '일반가정';
	}
	return null;
}

function sexSwitch(sex){
	switch(sex){
	case 'm' : 
	case 'M' : return '남성';
		
	case 'f' :
	case 'F' : return '여성';
	}
	return null;
}

function typeSwitch(type){
	switch(type){
	case 'A' : return type;
	case 'B' : return type;
	case 'love' : return '사랑목장';
	}
	return null;
}

function livingCaseSwitch(livingCase){
	switch(livingCase){
	case 'high' : return '상';
	case 'mid' : return '중';
	case 'low' : return '하';
	}
	return null;
}