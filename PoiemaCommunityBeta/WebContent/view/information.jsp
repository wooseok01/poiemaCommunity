<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%request.setCharacterEncoding("UTF-8"); %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사랑의물품 대상자 신상명세</title>

<link rel="stylesheet" href="../css/information.css">
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css">
</head>
<body>
  <c:if test="${helpList ne null}">
    <input type="text" class="hidden" id="type" value="${helpList.type}">
    <input type="text" class="hidden" id="livingCase" value="${helpList.livingCase}">  
  </c:if>
  
  <form action="../main/save" method="post">
    <div id="firstTable">
      <div>
        <table id="headerTable">
          <tr>
            <td class="colorTd red">유형</td>
            <td class="secondTd">
              <select name="type">
                <option value="A">A</option>
                <option value="B">B</option>
                <option value="C">C</option>
              </select>
            </td>
          </tr>
        </table>
        <h1 id="title">사랑의물품 대상자 신상명세</h1>
      </div>
    </div>
    
  <div id="secondTable">
    <table id="firstLine">
      <tr>
        <td class="label colorTd blue">전달봉사자</td>
        <td class="whiteTd">
          <c:choose>
            <c:when test="${helpList ne null}">
              <input type="text" name="volunteer" value="${helpList.volunteer}">
            </c:when>
            <c:otherwise>
              <input type="text" name="volunteer">
            </c:otherwise>
          </c:choose>
        </td>
        <td class="label colorTd blue">연락처</td>
        <td class="whiteTd">
          <c:choose>
            <c:when test="${helpList ne null}">
              <input type="text" name="volunteerTel" value="${helpList.volunteerTel}">
            </c:when>
            <c:otherwise>
              <input type="text" name="volunteerTel">
            </c:otherwise>
          </c:choose>
        </td>
        <td class="label colorTd blue">신청인</td>
        <td class="whiteTd">
          <c:choose>
            <c:when test="${helpList ne null}">
              <input type="text" name="applicant" value="${helpList.applicant}">
            </c:when>
            <c:otherwise>
              <input type="text" name="applicant">
            </c:otherwise>
          </c:choose>
        </td>
        <td class="label colorTd blue">연락처</td>
        <td class="whiteTd">
          <c:choose>
            <c:when test="${helpList ne null}">
              <input type="tel" name="applicantTel" value="${helpList.applicantTel}">
            </c:when>
            <c:otherwise>
              <input type="tel" name="applicantTel">
            </c:otherwise>
          </c:choose>
        </td>
      </tr>
    </table>
  </div>
  
  <table id="thirdTable">
    <tr>
      <td class="label colorTd blue">대상자</td>
      <td class="whiteTd">
        <c:choose>
          <c:when test="${helpList ne null}">
            <input type="text" name="target" value="${helpList.target}">
          </c:when>
          <c:otherwise>
            <input type="text" name="target">
          </c:otherwise>
        </c:choose>
      </td>
      <td class="label colorTd blue">연락처</td>
      <td class="whiteTd">
        <c:choose>
          <c:when test="${helpList ne null}">
            <input type="text" name="targetTel" value="${helpList.targetTel}">
          </c:when>
          <c:otherwise>
            <input type="text" name="targetTel">
          </c:otherwise>
        </c:choose>
        
      </td>
      <td class="label colorTd blue">주 소</td>
      <td class="secondWhiteTd">
        <c:choose>
          <c:when test="${helpList ne null}">
            <input type="text" name="address" value="${helpList.address}">
          </c:when>
          <c:otherwise>
            <input type="text" name="address">
          </c:otherwise>
        </c:choose>
      </td>
    </tr>
  </table>
  
  <table id="fourthTable">
    <tr>
      <td class="colorTd blue">생활구분</td>
      <td class="thirdWhiteTd">
        <select name="livingCase">
          <option value="high">상</option>
          <option value="mid">중</option>
          <option value="low">하</option>
        </select>
      </td>
      <td class="colorTd blue">성별</td>
      <td class="thirdWhiteTd">
        <select name="sex">
          <option value="F">여자</option>
          <option value="M">남자</option>
        </select>
      </td>
      <td class="colorTd blue">나이</td>
      <td class="thirdWhiteTd"><input type="text" name="age"></td>
      <td class="colorTd blue">신청월</td>
      <td class="thirdWhiteTd"><input type="text" class="datePicker" name="startMonth"></td>
      <td class="colorTd blue">지급월</td>
      <td class="thirdWhiteTd"><input type="text" class="datePicker" name="payMonth"></td>
    </tr>
    <tr>
      <td class="colorTd blue">수입</td>
      <td class="thirdWhiteTd"><input type="text" id="pay" name="pay">만원</td>
      <td class="colorTd blue">주거사항</td>
      <td class="thirdWhiteTd">
        <select name="house">
          <option value="month">월세</option>
          <option value="year">전세</option>
          <option value="free">무상임대</option>
          <option value="own">자가</option>
        </select>
      </td>
      <td class="colorTd blue">보호구분</td>
      <td colspan="2" class="collspanTd">
        <select name="protection">
          <option value="1">수급권</option>
          <option value="2">차상위</option>
          <option value="3">장애인</option>
          <option value="4">저소득</option>
          <option value="5">기 타</option>
        </select>
      </td>
      <td class="colorTd blue">세대구분</td>
      <td colspan="2" class="collspanTd">
        <select name="generation">
          <option value="1">독거</option>
          <option value="2">독거노인</option>
          <option value="3">노인부부</option>
          <option value="4">한부모</option>
          <option value="5">조손가정</option>
          <option value="6">다문화</option>
          <option value="7">소년,소녀 가장</option>
          <option value="8">새터민</option>
          <option value="9">일반가정</option>
        </select>
      </td>
    </tr>
  </table>
  
  <table id="fifthTable">
    <tr>
      <td rowspan="6" class="colorTd blue hTd">가족사항</td>
      <td class="blue hTd">관 계</td>
      <td class="blue hTd">성 명</td>
      <td class="blue hTd">나 이</td>
      <td class="blue hTd">직 업</td>
      <td class="blue hTd">동거여부</td>
      <td class="blue hTd">기 타<br>(건강상태, 장애 등)</td>
    </tr>
    <tr>
      <td><input type="text" name="relation1"></td>
      <td><input type="text" name="famName1"></td>
      <td><input type="text" name="age1"></td>
      <td><input type="text" name="job1"></td>
      <td>
        <select name="liveWith1">
          <option value="1">동거</option>
          <option value="2">비동거</option>
        </select>
      </td>
      <td><input type="text" name="etc1"></td>
    </tr>
    <tr>
      <td><input type="text" name="relation2"></td>
      <td><input type="text" name="famName2"></td>
      <td><input type="text" name="age2"></td>
      <td><input type="text" name="job2"></td>
      <td>
        <select name="liveWith2">
          <option value="1">동거</option>
          <option value="2">비동거</option>
        </select>
      </td>
      <td><input type="text" name="etc2"></td>
    </tr>
    <tr>
      <td><input type="text" name="relation3"></td>
      <td><input type="text" name="famName3"></td>
      <td><input type="text" name="age3"></td>
      <td><input type="text" name="job3"></td>
      <td>
        <select name="liveWith3">
          <option value="1">동거</option>
          <option value="2">비동거</option>
        </select>
      </td>
      <td><input type="text" name="etc3"></td>
    </tr>
    <tr>
      <td><input type="text" name="relation4"></td>
      <td><input type="text" name="famName4"></td>
      <td><input type="text" name="age4"></td>
      <td><input type="text" name="job4"></td>
      <td>
        <select name="liveWith4">
          <option value="1">동거</option>
          <option value="2">비동거</option>
        </select>
      </td>
      <td><input type="text" name="etc4"></td>
    </tr>
    <tr>
      <td><input type="text" name="relation5"></td>
      <td><input type="text" name="famName5"></td>
      <td><input type="text" name="age5"></td>
      <td><input type="text" name="job5"></td>
      <td>
        <select name="liveWith5">
          <option value="1">동거</option>
          <option value="2">비동거</option>
        </select>
      </td>
      <td><input type="text" name="etc5"></td>
    </tr>
  </table>
  
  <table id="sixthTable">
    <tr>
      <td class="colorTd pink">생 활 사</td>
      <td class="textAreaTd"><textarea name="houseDescription"></textarea></td>
    </tr>
  </table>
  
  <table id="seventhTable">
    <tr>
      <td class="colorTd pink">상담내역</td>
      <td><textarea name="consultDescription"></textarea></td>
    </tr>
  </table>
  
  <div id="buttonContainer">
    <div>
      <div id="submitButton">
        <input type="submit" value="저 장">
      </div>
      <div id="cancelButton">
        <input type="button" value="취 소">
      </div>
      <div id="printButton">
        <input type="button" value="인 쇄">
      </div>
    </div>
  </div>
  </form>
  
  <script src="//code.jquery.com/jquery.min.js"></script>
  <script src="//code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>
  <script type="text/javascript" src="../js/information.js"></script>
</body>
</html>