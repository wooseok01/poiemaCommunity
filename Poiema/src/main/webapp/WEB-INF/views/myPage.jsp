<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>개인정보 수정</title>
</head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
  <link rel="stylesheet" href="community/resources/css/sidebar.css">
  <link rel="stylesheet" href="community/resources/css/myPage.css">
<body>
  <jsp:include page="sidebar.jsp"></jsp:include>
  <div id="contentDiv">
    <h1>개인정보 수정</h1>
    <form action="./changeUser" method="post">
        <input type="password" id="nowPwd" class="form-control" placeholder="현재 비밀번호">
        <input type="password" id="changePwd" class="form-control" placeholder="바꿀 비밀번호">
        <input type="text" id="userName"  class="form-control" placeholder="이름 변경">
        <label>현재 이름 : ${user.userName}</label><br>
        <input type="button" id="submit" class="btn btn-primary" value="변경하기">
    </form>
  </div>

  <script src="https://code.jquery.com/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="community/resources/js/myPage.js"></script>
</body>
</html>