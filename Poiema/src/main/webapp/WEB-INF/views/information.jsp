<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%request.setCharacterEncoding("UTF-8");%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>명단 추가 페이지</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/3.0.3/normalize.css">
<link rel="stylesheet" href="https://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/sidebar.css">
<link rel="stylesheet" href="resources/css/information.css">
<link rel="stylesheet" href="resources/header.css">
</head>
<body>
  <jsp:include page="sidebar.jsp"></jsp:include>
  <div id="contentDiv">
    <c:if test="${helpList ne null}">
      <input type="text" class="hidden" id="type" value="${helpList.type}">
      <input type="text" class="hidden" id="livingCase" value="${helpList.livingCase}">  
      <input type="text" class="hidden" id="sex" value="${helpList.sex}">  
      <input type="text" class="hidden" id="house" value="${helpList.house}">  
      <input type="text" class="hidden" id="protection" value="${helpList.protection}">  
      <input type="text" class="hidden" id="generation" value="${helpList.generation}">
    </c:if>
    <form action="./save" method="post">
      <input type="text" class="hidden" id="id" name="seq">
      <div>
        <h1>사랑의물품 대상자 신상명세</h1>
      </div>
      
      <div class="dataField">
        <fieldset>
          <legend>대상 및 봉사자 정보</legend>
        </fieldset>
        <label id="typeList">유형 : 
          <select name="type">
            <option value="A">A</option>
            <option value="B">B</option>
            <option value="love">사랑</option>
            <option value="none">미연결</option>
          </select>
        </label><br>
        
        <label>
          봉사자 : 
          <c:choose>
            <c:when test="${helpList ne null}">
              <input type="text" name="volunteer" value="${helpList.volunteer}" tableIndex="1" class="keyPressEvent">
            </c:when>
            <c:otherwise>
              <input type="text" name="volunteer" tableIndex="1" class="keyPressEvent">
            </c:otherwise>
          </c:choose>
        </label>
        
        <label>
          봉사자 연락처 : 
          <c:choose>
            <c:when test="${helpList ne null}">
              <input type="text" name="volunteerTel" value="${helpList.volunteerTel}" class="phone keyPressEvent" tableIndex="2">
            </c:when>
            <c:otherwise>
              <input type="text" name="volunteerTel" class="phone keyPressEvent" tableIndex="2">
            </c:otherwise>
          </c:choose>
        </label>
        
        <label>
          신청인 : 
          <c:choose>
            <c:when test="${helpList ne null}">
              <input type="text" name="applicant" value="${helpList.applicant}" tableIndex="3" class="keyPressEvent">
            </c:when>
            <c:otherwise>
              <input type="text" name="applicant" tableIndex="3" class="keyPressEvent">
            </c:otherwise>
          </c:choose>
        </label>
        
        <label>
          신청인 연락처 : 
          <c:choose>
            <c:when test="${helpList ne null}">
              <input type="tel" name="applicantTel" value="${helpList.applicantTel}" class="phone keyPressEvent" tableIndex="4">
            </c:when>
            <c:otherwise>
              <input type="tel" name="applicantTel" class="phone keyPressEvent" tableIndex="4">
            </c:otherwise>
          </c:choose>
        </label><br>
        
        <label>
          대상자 : 
          <c:choose>
            <c:when test="${helpList ne null}">
              <input type="text" name="target" value="${helpList.target}" tableIndex="5" class="keyPressEvent">
            </c:when>
            <c:otherwise>
              <input type="text" name="target" tableIndex="5" class="keyPressEvent">
            </c:otherwise>
          </c:choose>
        </label>
        
        <label>
          대상자 연락처 : 
          <c:choose>
            <c:when test="${helpList ne null}">
              <input type="text" name="targetTel" value="${helpList.targetTel}" class="phone keyPressEvent" tableIndex="6">
            </c:when>
            <c:otherwise>
              <input type="text" name="targetTel" class="phone keyPressEvent" tableIndex="6">
            </c:otherwise>
          </c:choose>
        </label>
        
        <label>
          주&nbsp;&nbsp;&nbsp;소 : 
          <c:choose>
            <c:when test="${helpList ne null}">
              <input type="text" name="address" value="${helpList.address}" id="addressBox" class="keyPressEvent" tableIndex="7">
            </c:when>
            <c:otherwise>
              <input type="text" name="address" id="addressBox" class="keyPressEvent" tableIndex="7">
            </c:otherwise>
          </c:choose>
        </label>
      </div>
      <div class="dataField">
        <fieldset>
          <legend>대상자 생활 정보 입력</legend>
        </fieldset>
        
        <label>
          생활 구분 : 
          <select name="livingCase">
            <option value="high">상</option>
            <option value="mid">중</option>
            <option value="low">하</option>
          </select>
        </label>
        
        <label>
          성별 : 
          <select name="sex">
            <option value="M">남자</option>
            <option value="F">여자</option>
          </select>
        </label>
        
        <label>
          나이 : 
          <c:choose>
            <c:when test="${helpList ne null}">
              <input type="text" name="age" value="${helpList.age}" class="keyPressEvent" tableIndex="8">
            </c:when>
            <c:otherwise>
              <input type="text" name="age" class="keyPressEvent" tableIndex="8">
            </c:otherwise>
          </c:choose>
        </label>
        <br/><br/>
        <label>
          주거사항 : 
          <select name="house">
            <option value="month">월세</option> 
            <option value="year">전세</option>
            <option value="free">무상임대</option>
            <option value="own">자가</option>
          </select>
        </label>
        
        <label>
          보호구분 : 
          <select name="protection">
            <option value="1">수급권</option>
            <option value="2">차상위</option>
            <option value="3">장애인</option>
            <option value="4">저소득</option>
            <option value="5">기 타</option>
          </select>
        </label>
        
        <label>
          세대구분 : 
          <select name="generation">
            <option value="1">독거</option>
            <option value="2">독거노인</option>
            <option value="3">노인부부</option>
            <option value="4">한부모</option>
            <option value="5">조손가정</option>
            <option value="6">다문화</option>
            <option value="7">소년,소녀 가장</option>
            <option value="8">장애우가정</option>
            <option value="9">일반가정</option>
          </select>
        </label>
        
        <br/><br/>
        <label>
          신청월 : 
          <c:choose>
            <c:when test="${helpList ne null}">
              <input type="text" name="startMonth" value='${helpList.startMonth}' class="keyPressEvent" tableIndex="9">
            </c:when>
            <c:otherwise>
              <input type="text" name="startMonth" placeholder="ex)2016.03" class="keyPressEvent" tableIndex="9">
            </c:otherwise>
          </c:choose>
        </label>
        
        <label>
          지급월 : 
          <c:choose>
            <c:when test="${helpList ne null}">
              <input type="text" name="startMonth" value='${helpList.payMonth}' class="keyPressEvent" tableIndex="10">
            </c:when>
            <c:otherwise>
              <input type="text" name="payMonth" placeholder="ex)2016.03" class="keyPressEvent" tableIndex="10">
            </c:otherwise>
          </c:choose>
        </label>
        
        <label>
          수입 : 
          <c:choose>
            <c:when test="${helpList ne null}">
              <input type="text" id="pay" name="pay" value="${helpList.pay}" class="keyPressEvent" tableIndex="11">
            </c:when>
            <c:otherwise>
              <input type="text" id="pay" name="pay" class="keyPressEvent" tableIndex="11">
            </c:otherwise>
          </c:choose>
        </label><br>
        
        
      </div>
      
      <div class="dataFieldMore">
        <fieldset>
          <legend>
            대상자 가족사항 입력
          </legend>
        </fieldset>
        <c:forEach var="i" begin="1" end="5">
          <label>관계 : 
            <input type="text" name="relation${i}" class="relation keyPressEvent" id="relation${i}" tableIndex="${12+5*(i-1)}">
          </label>
          <label>성명 : 
            <input type="text" name="famName${i}" class="relation keyPressEvent" id="famName${i}" tableIndex="${13+5*(i-1)}">
          </label>
          <label>나이 : 
            <input type="text" name="age${i}" class="relation keyPressEvent" id="age${i}" tableIndex="${14+5*(i-1)}">
          </label>
          <label>직업 : 
            <input type="text" name="job${i}" class="relation keyPressEvent" id="job${i}" tableIndex="${15+5*(i-1)}">
          </label>
          <label>동거여부 : 
            <select name="liveWith${i}">
              <option value="1">동거</option>
              <option value="2">비동거</option>
            </select>
          </label>
          <label>
            기타 : <input type="text" name="etc${i}" id="etc${i}" class="etc keyPressEvent" tableIndex="${16+5*(i-1)}">
          </label><br>
        </c:forEach>
      </div>
      
      <div class="dataFieldMore" id="houseDescript">
        <fieldset>
          <legend>생활사 입력란</legend>
        </fieldset>
        <textarea name="houseDescription" placeholder="생활사를 입력하세요.">${houseDescription}</textarea>
      </div>
      
      <div class="dataFieldMore">
        <fieldset>
          <legend>상담내역 입력란</legend>
        </fieldset>
        <textarea name="consultDescription" placeholder="상담내역을 입력하세요.">${consultDescription}</textarea>
      </div>
      
      <center id="btnContainer">
        <input type="submit" class="btn btn-primary" value="저 장">
        <input type="button" class="btn btn-danger" id="cancelButton" value="취 소" >
        <input type="button" class="btn btn-success" id="printButton" value="인 쇄">
      </center>
    </form>
  </div>
  
  
  
<script src="https://code.jquery.com/jquery.min.js"></script>
  <script src="https://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
  <script type="text/javascript" src="resources/js/information.js"></script>
  <script type="text/javascript" src="resources/js/btnInterface.js"></script>
</body>
</html>