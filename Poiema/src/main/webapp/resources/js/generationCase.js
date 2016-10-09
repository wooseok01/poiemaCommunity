$(document).ready(function(){
	var consultCase = $('option:selected').val()
	ajaxCall(consultCase)
	
	$('#select').change(function(){
		ajaxCall($(this).val())
	});
});


function ajaxCall(generationCase){
	$.ajax({
		url : './findHelpListPersonByGeneration',
		type : 'POST',
		dataType : 'json',
		data : {
			'generationCase' : generationCase
		},
		success : function(data){
			var tbody = $('#tbody');
			tbody.empty();
			
			$.each(data, function(index, object){
				var tr = $('<tr></tr>');
				var seq = $('<td></td>').html(object.seq).css('display','none').attr('class','hidden');
				var checkBox = $('<td></td>').append($('<input type="checkbox">'));
				var volunteer = $('<td></td>').html(object.volunteer);
				var address = $('<td></td>').html(object.address);
				var sex = $('<td></td>').html(sexSwitch(object.sex));
				var type = $('<td></td>').html(typeSwitch(object.type));
				var age = $('<td></td>').html(object.age);
				var consultCase = $('<td></td>').html(consultCaseSwitch(object.consultCase));
				var target = $('<td class="target"></td>').html(object.target);
				
				target.click(function(){
					var id = $(this).parent().find('.hidden').html();
					console.log(id);
					location.href = './detail?id='+id;
				});
				
				tr.append(checkBox);
				tr.append(seq);
				tr.append($('<td></td>').html(index+1));
				tr.append(consultCase);
				tr.append(type);
				tr.append(target);
				tr.append(volunteer);
				tr.append(sex);
				tr.append(age);
				tr.append(address);
				
				tbody.append(tr);
			});
		},
		error:function(request,status,error){
		    console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);}
	}); //end ajax
} 


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

function consultCaseSwitch(livingCase){
	switch(livingCase){
	case 'yes' : return '상담';
	case 'no' : return '미상담';
	}
	return null;
}