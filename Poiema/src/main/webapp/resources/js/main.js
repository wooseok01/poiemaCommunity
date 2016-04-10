$(document).ready(function(){
	$('.statusNum').click(function(){
		
		var type = $(this).parent().find('input').attr('class');
		switch(type){
			case 'A' :
				location.href = './findListType?type=A';
				break;
			case 'B' :
				location.href = './findListType?type=B';
				break;
			case 'love' :
				location.href = './findListType?type=love';
				break;
			case 'all' :
				location.href = './findListType?type=all';
				break;
		}
	});
	
	$('.A').parent().find('.statusType').css('background-color','rgb(211,70,32)');
	$('.A').parent().find('.headLine').css('background-color','rgb(211,70,32)');
	
	$('.B').parent().find('.statusType').css('background-color','rgb(39,170,102)');
	$('.B').parent().find('.headLine').css('background-color','rgb(39,170,102)');
	
	$('.love').parent().find('.statusType').css('background-color','rgb(239,195,66)');
	$('.love').parent().find('.headLine').css('background-color','rgb(239,195,66)');
	
	$('.all').parent().find('.statusType').css('background-color','rgb(34,162,231)');
	$('.all').parent().find('.headLine').css('background-color','rgb(34,162,231)');
	
});