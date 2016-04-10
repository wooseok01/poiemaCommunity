$(document).ready(function(){
	$('.totalList').click(function(){
		
		var type = $(this).find('h3').html();
		switch(type){
			case 'A인원' :
				location.href = './findListType?type=A';
				break;
			case 'B인원' :
				location.href = './findListType?type=B';
				break;
			case '사랑목장' :
				location.href = './findListType?type=love';
				break;
			case '미연결 인원' :
				location.href = './findListType?type=none';
				break;
			case '전체인원' :
				location.href = './findListType?type=all';
				break;
		}
	});
	
	
	
});