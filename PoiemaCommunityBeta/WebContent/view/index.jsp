<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="//cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.css">
<link rel="stylesheet" href="../css/index.css">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
<title>포이에마 사회봉사부 로그인 </title>
<script type="text/javascript">
	$(document).ready(function(){
		if($('#errorTag') != undefined){
			alert('login Fail! Try again!');
		}
	});
</script>
</head>
<body>
  <c:if test="${errorTag eq 1 }">
    <p id="errorTag"></p>  
  </c:if>
  <h1>포이에마 사회봉사부</h1>
  <form action="../main/login" method="post">
    <input type="text" name="id" placeholder="아이디">
    <input type="password" name="password" placeholder="비밀번호">
    <input type="submit" value="Login" id="submitBtn">
    <img alt="jesusImage" src="../img/jesusImg.PNG">
  </form>
</body>
</html>