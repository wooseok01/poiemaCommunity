<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%request.setCharacterEncoding("UTF-8"); %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사회봉사부 명단</title>
<link rel="stylesheet" href="../css/list.css">
</head>
<body>
  <form action="../main/find" method="post">
    <select name="who">
      <option value="volunteer">봉사자</option>
      <option value="target">대상자</option>
    </select>
    <input type="text" placeholder="봉사자나 대상자를 검색하세요." id="searchBox" name="name" value="${query}">
    <input type="submit" value="검 색" id="submitBtn">
  </form>
  
  <div id="btnContainer">
    <input type="button" value="+추가">
    <input type="button" value="-삭제">
  </div>
  
  <table>
    <thead>
      <tr>
        <td>체크</td>
        <td>봉사자</td>
        <td>전달자 연락처</td>
        <td>대상자</td>
        <td>대상자 연락처</td>
        <td>성별</td>
        <td>나이</td>
        <td>생활구분</td>
      </tr>
    </thead>
    <tbody>
      <c:choose>
        <c:when test="${personList ne null}">
          <c:forEach var="person" items="${personList}">
          <tr>
            <td class="hidden">${person.seq}</td>
            <td class="check"><input type="checkbox"></td>
            <td>${person.volunteer}</td>
            <td>${person.volunteerTel}</td>
            <td class="target">${person.target}</td>
            <td>${person.targetTel}</td>
            <td>${person.sex}</td>
            <td>${person.age}</td>
            <c:choose>
              <c:when test="${person.livingCase eq 'high'}">
                <td>상</td>
              </c:when>
              <c:when test="${person.livingCase eq 'mid'}">
                <td>중</td>
              </c:when>
              <c:when test="${person.livingCase eq 'low'}">
                <td>하</td>
              </c:when>
            </c:choose>
          </tr>
        </c:forEach>
        </c:when>
        <c:otherwise>
          <tr>
            <td colspan="8">전달자나 봉사자를 검색해 주세요.</td>
          </tr>
        </c:otherwise>
      </c:choose>
    </tbody>
  </table>
  <script src="//code.jquery.com/jquery.min.js"></script>
  <script type="text/javascript" src="../js/list.js"></script>
</body>
</html>