<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
  request.setCharacterEncoding("utf-8");
  int index = 0;  
%>
<!DOCTYPE HTML>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>유형별 인원 보기</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.css">
<link rel="stylesheet" href="../css/typeList.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
</head>
<body>
  <c:if test="${type ne null}">
    <input type="text" class="hidden" id="type" value="${type.type}">
  </c:if>
  
  <div id="header">
    <div>
      <select id="selectType">
        <option value="A">A유형</option>
        <option value="B">B유형</option>
        <option value="love">사랑목장</option>
        <option value="none">미연결</option>
        <option value="all">전체 명단</option>
      </select>
    </div>
    
    <div>
      <c:choose>
        <c:when test="${type ne null}">
          <c:choose>
            <c:when test="${type.type eq 'love'}">
              <label>사랑목장 사랑의 물품 대상자 명단</label>
            </c:when>
            <c:when test="${type.type eq 'none'}">
              <label>미연결 사랑의 물품 대상자 명단</label>
            </c:when>
            <c:when test="${type.type eq 'all'}">
              <label>전체 사랑의 물품 대상자 명단</label>
            </c:when>
            <c:otherwise>
              <label>${type.type} 사랑의 물품 대상자 명단</label>
            </c:otherwise>
          </c:choose>
        </c:when>
        <c:otherwise>
          <label>유형을 선택하세요!!</label>
        </c:otherwise>
      </c:choose>
    </div>
    
    <div id="statusDiv">
      <c:forEach var="status" items="${statusList}">
        <c:choose>
          <c:when test="${status.type eq 'love'}">
            <b>사랑목장</b> : ${status.num}명 <br>
          </c:when>
          <c:when test="${status.type eq 'none'}">
            <b>미연결</b> : ${status.num}명 <br>
          </c:when>
          <c:when test="${status.type eq 'all' }">
            <b>전체</b> : ${status.num}명 <br>
          </c:when>
          <c:otherwise>
            <b>${status.type}</b> : ${status.num}명 <br>
          </c:otherwise>
        </c:choose>
      </c:forEach>
    </div>
    
    <c:if test="${type ne null}">
      <c:choose>
          <c:when test="${type.type eq 'love'}">
            <h2>사랑목장 Total : ${type.total}명</h2>
          </c:when>
          <c:when test="${type.type eq 'none'}">
            <h2>미연결 Total : ${type.total}명</h2>
          </c:when>
          <c:when test="${type.type eq 'all'}">
            <h2>모든 유형 Total : ${type.total}명</h2>
          </c:when>
          <c:otherwise>
            <h2>${type.type} Total : ${type.total}명</h2>
          </c:otherwise>
        </c:choose>
    </c:if>
    
    <div id="btnContainer">
      <input type="button" value="+추가" id="addBtn" onclick="addBtnClick();">
      <input type="button" value="-삭제" id="delBtn" onclick="delBtnClick();">
      <input type="button" value="검색 페이지로" id="goToList">      
    </div>
  </div>
  
  <table>
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
        <tr><td colspan="9">유형을 선택하세요!!</td></tr>
      </c:otherwise>
    </c:choose>
  </table>
  
  <div id="dialog"></div>
  
<script type="text/javascript" src="//code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script type="text/javascript" src="../js/btnInterface.js"></script>
<script type="text/javascript" src="../js/listType.js"></script>
</body>
</html>