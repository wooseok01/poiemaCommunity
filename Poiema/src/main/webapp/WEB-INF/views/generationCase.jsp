<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>생활구분 검색</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.css">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/sidebar.css">
<link rel="stylesheet" href="resources/css/livingCase.css">
</head>
<body>
  <jsp:include page="sidebar.jsp"></jsp:include>
  <div id="contentDiv">
    <div id="header">
      <select id="select">
        <option value="1">독거</option>
        <option value="2">독거노인</option>
        <option value="3">노인부부</option>
        <option value="4">한부모</option>
        <option value="5">조손가정</option>
        <option value="6">다문화</option>
        <option value="7">소년,소녀 가장</option>
        <option value="8">장애인</option>
        <option value="9">일반가정</option>        
      </select>
      <h2>세대구분 검색</h2>
      <input type="button" class="btn btn-danger" value="명단 삭제" onclick="delBtnClick();">
    </div>
    
    <div id="tableDiv">
      <table class="table table-striped">
        <thead>
          <tr>
            <td>#</td>
            <td>No</td>
            <td>상담구분</td>
            <td>유형</td>
            <td>대상자</td>
            <td>봉사자</td>
            <td>성별</td>
            <td>나이</td>
            <td>주소</td>
          </tr>
        </thead>
        <tbody id="tbody">
          <c:choose>
            <c:when test="${consultCase eq null}">
              <tr><td colspan="10" id="noData">구분을 선택하세요.</td></tr>
            </c:when>
          </c:choose>
        </tbody>
      </table>
    </div>
  </div>
  <div id="dialog" style="display : none;"></div>

<script src="https://code.jquery.com/jquery.min.js"></script>
<script type="text/javascript" src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
<script type="text/javascript" src="resources/js/btnInterface.js"></script>
<script type="text/javascript" src="resources/js/generationCase.js"></script>
</body>
</html>