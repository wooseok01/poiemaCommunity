<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div id="headInfo">
    <c:forEach var="item" items="${typeList}">
      <h5>${item.type}형 : ${item.num}</h5>
    </c:forEach>
  </div>
  
  <form action="../main/findTypeAll" method="post">
    <select name="type">
      <option value="A">A</option>
      <option value="B">B</option>
      <option value="love">사랑의 ~</option>
      <option value="noType">비구분</option>
    </select>
  </form>
  
</body>
</html>