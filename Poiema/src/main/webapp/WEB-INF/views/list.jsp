<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%request.setCharacterEncoding("UTF-8");
  int index = 0;%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>성명 검색 페이지</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.css">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/sidebar.css">
<link rel="stylesheet" href="resources/css/list.css">
<link rel="stylesheet" href="resources/header.css">
</head>
<body>
  <jsp:include page="sidebar.jsp"></jsp:include>
  <div id="contentDiv">
      <form action="./find" method="post">
        <div id="searchContainer">
          <select name="who" class="form-control">
            <option value="volunteer">봉사자</option>
            <option value="target">대상자</option>
          </select>
        </div>
        <input type="text" name="name" value="${query}" id="searchBox" class="form-control" placeholder="봉사자 혹은 대상자를 검색하세요.">
        <input type="submit" class="btn btn-primary" value="검 색">
        <input type="button" class="btn btn-danger" id="delBtn" value="명단 삭제" onclick="delBtnClick();">
      </form>
      
      <div id="tableContent">
        <table class="table table-striped">
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
            <c:choose>
              <c:when test="${personList ne null}">
                <c:forEach var="person" items="${personList}">
                <tr>
                  <td class="hidden">${person.seq}</td>
                  <td class="check"><input type="checkbox"></td>
                  <td><%=++index%></td>
                  <c:choose>
                    <c:when test="${person.type eq 'A'}">
                      <td>A</td>
                    </c:when>
                    <c:when test="${person.type eq 'B'}">
                      <td>B</td>
                    </c:when>
                    <c:when test="${person.type eq 'love'}">
                      <td>사랑</td>
                    </c:when>
                    <c:when test="${person.type eq 'none'}">
                      <td>미연결</td>
                    </c:when>
                  </c:choose>
                  <td>${person.volunteer}</td>
                  <td class="target">${person.target}</td>
                  <c:choose>
                    <c:when test="${person.sex eq 'M'}">
                      <td>남자</td>
                    </c:when>
                    <c:otherwise>
                      <td>여자</td>
                    </c:otherwise>
                  </c:choose>
                  <td>${person.age}</td>
                  <c:choose>
                    <c:when test="${person.generation eq 1}">
                      <td>독거</td>
                    </c:when>
                    <c:when test="${person.generation eq 2}">
                      <td>독거노인</td>
                    </c:when>
                    <c:when test="${person.generation eq 3}">
                      <td>노인부부</td>
                    </c:when>
                    <c:when test="${person.generation eq 4}">
                      <td>한부모</td>
                    </c:when>
                    <c:when test="${person.generation eq 5}">
                      <td>조손가정</td>
                    </c:when>
                    <c:when test="${person.generation eq 6}">
                      <td>다문화</td>
                    </c:when>
                    <c:when test="${person.generation eq 7}">
                      <td>소년,소녀 가장</td>
                    </c:when>
                    <c:when test="${person.generation eq 8}">
                      <td>새터민</td>
                    </c:when>
                    <c:when test="${person.generation eq 9}">
                      <td>일반가정</td>
                    </c:when>
                    <c:otherwise>
                      <td>${person.generation}</td>
                    </c:otherwise>
                  </c:choose>
                  <td>${person.address}</td>
                </tr>
              </c:forEach>
              </c:when>
              <c:otherwise>
                <tr>
                  <td colspan="9" id="noData">전달자나 봉사자를 검색해 주세요.</td>
                </tr>
              </c:otherwise>
            </c:choose>
          </tbody>
        </table>
      </div>
  </div>
  <div id="dialog"></div>
  
  <script src="https://code.jquery.com/jquery.min.js"></script>
  <script type="text/javascript" src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
  <script type="text/javascript" src="resources/js/btnInterface.js"></script>
  <script type="text/javascript" src="resources/js/list.js"></script>
</body>
</html>