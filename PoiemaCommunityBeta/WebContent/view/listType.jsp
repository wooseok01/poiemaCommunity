<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
  <div id="headInfo">
    <c:if test="${item ne null}">
      <input type="text" class="hidden" value="${item.type}">
    </c:if>
    <c:choose>
      <c:when test="${header ne null}">
        <h1>${header.type}유형 사랑의 물품 대상자 명단</h1>
        <h5>Total : ${header.num}</h5>
      </c:when>

      <c:otherwise>
        <h1>조사하고 싶은 유형을 선택하세요.</h1>
      </c:otherwise>
    </c:choose>

    <c:forEach var="item" items="${typeList}">
      <h5>${item.type}형: ${item.num}</h5>
    </c:forEach>
  </div>

  <select name="type">
    <option value="A">A</option>
    <option value="B">B</option>
    <option value="love">사랑의 ~</option>
    <option value="noType">비구분</option>
    <option value="all">전체</option>
  </select>

  <table>
    <thead>
      <tr>
        <td>체크</td>
        <td>No</td>
        <td>유형</td>
        <td>봉사자</td>
        <td>대상자</td>
        <td>성별</td>
        <td>나이</td>
        <td>세대구분</td>
        <td>주소</td>
      </tr>
    </thead>
    <tbody>
      
    </tbody>
  </table>
</body>
</html>