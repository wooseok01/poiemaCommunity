<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%request.setCharacterEncoding("UTF-8");
  int index = 0;%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Type별 명단 검색</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.css">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/sidebar.css">
<link rel="stylesheet" href="resources/css/listType.css">
</head>
<body>
  <jsp:include page="sidebar.jsp"></jsp:include>
  
  <div id="contentDiv">
    <c:if test="${type ne null}">
      <input type="text" class="hidden" id="type" value="${type.type}">
    </c:if>
    
    <c:choose>
      <c:when test="${type ne null}">
        <c:choose>
          <c:when test="${type.type eq 'love'}">
            <h1>사랑목장 사랑의 물품 대상자 명단</h1>
          </c:when>
          <c:when test="${type.type eq 'none'}">
            <h1>미연결 사랑의 물품 대상자 명단</h1>
          </c:when>
          <c:when test="${type.type eq 'all'}">
            <h1>전체 사랑의 물품 대상자 명단</h1>
          </c:when>
          <c:otherwise>
            <h1>${type.type}유형 사랑의 물품 대상자 명단</h1>
          </c:otherwise>
        </c:choose>
      </c:when>
      <c:otherwise>
        <h1>유형을 선택하세요!!</h1>
      </c:otherwise>
    </c:choose>
    
    <div id="statusDiv">
      <c:if test="${type ne null}">
        <h2>Total : ${type.num}명</h2>
      </c:if>
    </div>
    
    <div id="btnContainer">
      <input type="button" class="btn btn-danger" value="삭제" onclick="delBtnClick();">
    </div>
    
    <div id="tableContent">
      <table class="table table-striped">
        <thead>
          <tr>
            <td class="low">체크</td>
            <td class="low">No</td>
            <td class="sixty">유형</td>
            <td class="sixty">봉사자</td>
            <td class="mid">대상자</td>
            <td class="low">성별</td>
            <td class="low">나이</td>
            <td class="mid">세대구분</td>
            <td class="high">주소</td>
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
                  <td class="target"><b>${person.target}</b></td>
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
                      <td>장애루 가정</td>
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
              <tr><td colspan="9">유형을 선택하세요!!</td></tr>
            </c:otherwise>
          </c:choose>
        </tbody>
      </table>
    </div>
  </div>
  <div id="dialog" style="display: none;"></div>
<script type="text/javascript" src="https://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script type="text/javascript" src="resources/js/btnInterface.js"></script>
<script type="text/javascript" src="resources/js/listType.js"></script>
</body>
</html>