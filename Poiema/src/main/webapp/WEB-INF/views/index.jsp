<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.css">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="community/resources/css/index.css">

<title>포이에마 사회봉사부 로그인 </title>
</head>
<body>
  <img alt="indexLogo" src="community/resources/img/poiema_logo.png">
  <form action="community/login" method="post">
    <img alt="jesusImage" src="community/resources/img/jesusImg.PNG">
    <input type="text" name="id" class="form-control" placeholder="아이디">
    <input type="password" name="pwd" class="form-control" placeholder="비밀번호">
    <input type="submit" value="Login" class="btn btn-primary">
  </form>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.11.3/jquery.min.js"></script>
</body>
</html>