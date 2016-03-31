<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>메인페이지</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">
  <link rel="stylesheet" href="resources/css/sidebar.css">
  <link rel="stylesheet" href="resources/css/main.css">
</head>
<body>
  <jsp:include page="sidebar.jsp"></jsp:include>
  <div id="contentDiv">
    <h1><a href="./myPage">${user.userName}</a>님 환영합니다^^</h1>
    <div id="totalBar">
      <c:forEach var="status" items="${statusList}">
        <input type="text" class="hidden ${status.type}" value="${status.num}">
        <div class="totalList">
          <c:choose>
            <c:when test="${status.type eq 'all'}">
              <h3>전체인원</h3>
            </c:when>
            <c:when test="${status.type eq 'love'}">
              <h3>사랑목장</h3>
            </c:when>
            <c:when test="${status.type eq 'none'}">
              <h3>미연결 인원</h3>
            </c:when>
            <c:otherwise>
              <h3>${status.type}인원</h3>
            </c:otherwise>
          </c:choose>
          <h4>${status.num}명</h4>
        </div>
      </c:forEach>
    </div>
    
    <div id="graph">
      <p id="graphTitle">사회봉사부 대상자 인원 분포 그래프</p>
      <canvas id="canvas" width="600" height="400">
        No Love for HTML5 eh?
      </canvas>
      <p>성경 구절 하나 넣으면 좋을거 같아요 아빠</p>
    </div>
    
  </div>
  
  <script src="https://code.jquery.com/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="resources/js/btnInterface.js"></script>
  <script type="text/javascript" src="resources/js/main.js"></script>
  <script type="text/javascript" src="resources/js/pieGraph.js"></script>
</body>
</html>