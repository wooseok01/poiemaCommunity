$(document).ready(function(){
	var checkedList;
	
	$('#dialog').dialog({
		autoOpen : false,
		resizable : false,
		width : 400,
		height : 200,
		title : '삭제 경고!!',
		
		buttons : [
		{
			text : '확인',
			click : function(){
				var parameter=[];
				checkedList = $(':checkbox:checked');
				checkedList.each(function(){
					var element = $(this).parent().parent().find('.hidden').html();
					parameter.push(element);
				});
				
				$.ajax({
					url : '../main/deleteHelpList',
					data : {
						seqList : parameter
					},
					type : 'POST',
					dataType : 'json',
					success : function(data){
						console.log(data);
						if(data[0] == 'success'){
							checkedList.each(function(){
								$(this).parent().parent().remove();
							});
							$('#dialog').dialog('close');
							alert('삭제가 완료되었습니다.');
						}
					},
					error : function(err){
						console.log(err.message);
						$('#dialog').dialog('close');
						alert('삭제시 오류가 발생하였습니다.');
					}
					
				});
			}
		},
		
		{
			text : '취소',
			click : function(){
				$('#dialog').dialog('close');
			}
		}
		]
	});
	
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
	
	$('#addBtn').click(function(){
		location.href = '../view/information.jsp';
	});
	
	$('#delBtn').click(function(){
		
		if($(':checkbox:checked').length != 0){
			$('#dialog').html($(':checkbox:checked').length+'개를 삭제하시겠습니까?');
			$('#dialog').dialog('open');
		}else{
			alert('삭제할 대상을 체크해 주세요!');
		}
	});
	
	$('#goToList').click(function(){
		location.href = '../view/list.jsp';
	});
});