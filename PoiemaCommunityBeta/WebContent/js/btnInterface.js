!(function(){
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
})();

function addBtnClick(){
	location.href = '../view/information.jsp';
}

function delBtnClick(){
	if($(':checkbox:checked').length != 0){
		$('#dialog').html($(':checkbox:checked').length+'개를 삭제하시겠습니까?');
		$('#dialog').dialog('open');
	}else{
		alert('삭제할 대상을 체크해 주세요!');
	}
}