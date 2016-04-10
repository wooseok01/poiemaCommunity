$(document).ready(function(){
	$('#submit').click(function(){
		var password = $('#nowPwd').val();
		var newPassword = $('#changePwd').val();
		var userName = $('#userName').val();
		
		passwordCheck({
			password : password,
			newPassword : newPassword,
			userName : userName
		},changeMyData);
		
		
	});
});

function passwordCheck(object, callback){
	$.ajax({
		url : './getSessionPwd',
		type : 'post',
		data : {
			pwd : object.password
		},
		dataType : 'json',
		success : function(data){
			if(data == 'success'){
				callback(object);
			}else if(data == 'fail'){
				alert('현재 비밀번호와 일치하지 않습니다.');
			}
		},
		error : function(err){
			alert('error!!');
		}
	});
}

function changeMyData(object){
	$.ajax({
		url : './changeMyData',
		type : 'post',
		data : {
			pwd : object.newPassword,
			userName : object.userName
		},
		dataType : 'json',
		success : function(data){
			if(data == 'success'){
				alert('변경이 완료되었습니다.');
				location.href = './main';
			}else{
				alert('error가 발생!');
			}
		},
		error : function(err){
			alert('error!!');
			console.log(err.message);
		}
	});
}