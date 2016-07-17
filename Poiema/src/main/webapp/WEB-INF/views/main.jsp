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
  <link rel="stylesheet" href="community/resources/css/sidebar.css">
  <link rel="stylesheet" href="community/resources/css/main.css">
</head>
<body>
  <jsp:include page="sidebar.jsp"></jsp:include>
  <div id="contentDiv">
    <div>
      <h3><a href="./myPage">${user.userName}</a>님으로 로그인 하셨습니다.</h3>
    </div>
    
    <div id="graph">
      <p id="graphTitle">사랑의 물품 대상자 현황</p>
      <div id="totalBar">
        <c:forEach var="status" items="${statusList}">
          <div class="totalList">
            <input type="text" value="${status.num}" class="${status.type}" style="display : none;">
            <div class="statusType"></div>
            <div class="statusNum">
              <c:choose>
                <c:when test="${status.type eq 'A' }">
                  A유형(${status.num}명)
                </c:when>
                <c:when test="${status.type eq 'B' }">
                  B유형(${status.num}명)
                </c:when>
                <c:when test="${status.type eq 'love'}">
                  사랑목장(${status.num}명)
                </c:when>
                <c:when test="${status.type eq 'all'}">
                  전체명단(${status.num}명)
                </c:when>
              </c:choose>
            </div>
            <div class="headLine"></div>
          </div>
        </c:forEach>
      </div>
      <div>
        <canvas id="canvas" width="600" height="400">
          jquery pie graph플러그인을 지원하지 않습니다.
          chrome혹은 explorer11 이상의 브라우저로 접속 바랍니다.
        </canvas>
      </div>
    </div>
    
  </div>
  
  <script src="https://code.jquery.com/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="community/resources/js/btnInterface.js"></script>
  <script type="text/javascript" src="community/resources/js/main.js"></script>
  <script type="text/javascript" src="community/resources/js/pieGraph.js"></script>
</body>
</html>