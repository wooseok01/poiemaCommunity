<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사랑의물품 대상자 신상명세</title>
<link rel="stylesheet" href="../css/indexStyle.css">
</head>
<body>
  <form action="" method="post">
    <div id="firstTable">
      <div>
        <table border="1px solid black" id="headerTable">
          <tr>
            <td class="colorTd red">유형</td>
            <td class="secondTd">
              <select>
                <option value="A">A</option>
                <option value="B">B</option>
              </select>
            </td>
          </tr>
        </table>
        <h1 id="title">사랑의물품 대상자 신상명세</h1>
      </div>
    </div>
    
  <div id="secondTable">
    <table id="firstLine" border="1px solid black">
      <tr>
        <td class="label colorTd blue">신청인</td>
        <td class="whiteTd"><input type="text" name="servePerson"></td>
        <td class="label colorTd blue">연락처</td>
        <td class="whiteTd"><input type="tel" name="servePhone"></td>
        <td class="label colorTd blue">봉사자</td>
        <td><input type="text" name="deliverPerson"></td>
        <td class="label colorTd blue">연락처</td>
        <td><input type="tel" name="deliverPhone"></td>
      </tr>
    </table>
  </div>
  
  <table id="thirdTable" border="1px solid black">
    <tr>
      <td class="label colorTd blue">대상자</td>
      <td class="whiteTd"><input type="text" name="receivePerson"></td>
      <td class="label colorTd blue">연락처</td>
      <td class="whiteTd"><input type="text" name="receivePhone"></td>
      <td class="label colorTd blue">주 소</td>
      <td><input type="text" name="receiveAddress"></td>
    </tr>
  </table>
  
  <table border="1px solid black" id="fourthTable">
    <tr>
      <td class="colorTd blue">분류번호</td>
      <td class="whiteTd">
        <select>
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
        </select>
      </td>
      <td class="colorTd blue">성별</td>
      <td class="colorTd">
        <select>
          <option value="F">여자</option>
          <option value="M">남자</option>
        </select>
      </td>
      <td class="colorTd blue">나이</td>
      <td class="colorTd"><input type="text"></td>
      <td class="colorTd blue">신청월</td>
      <td class="colorTdSecond"></td>
      <td class="colorTd blue">지급월</td>
      <td></td>
    </tr>
    <tr>
      <td class="colorTd blue">수입</td>
      <td><input type="text" id="pay"><lable>만원</lable></td>
      <td class="colorTd blue">주거사항</td>
      <td class="colorTd">
        <select>
          <option value="month">월세</option>
          <option value="year">전세</option>
          <option value="own">자가</option>
        </select>
      </td>
      <td class="blue">보호구분</td>
      <td colspan="2"><input type="text"></td>
      <td class="blue">세대구분</td>
      <td colspan="2"><input type="text"></td>
    </tr>
  </table>
  
  <table border="1px solid black" id="fifthTable">
    <tr>
      <td rowspan="6" class="colorTd blue hTd">가족사항</td>
      <td class="blue hTd">관 계</td>
      <td class="blue hTd">성 명</td>
      <td class="blue hTd">나 이</td>
      <td class="blue hTd">직 업</td>
      <td class="blue hTd">동거여부</td>
      <td class="blue hTd">기 타(건강상태, 장애 등)</td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
    <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
    <tr>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
      <td></td>
    </tr>
  </table>
  
  <table id="sixthTable" border="1px solid black">
    <tr>
      <td class="colorTd pink">생 활 사</td>
      <td><textarea></textarea></td>
    </tr>
  </table>
  
  <table border="1px solid black" id="seventhTable">
    <tr>
      <td class="colorTd pink">중   점 관리사항</td>
      <td><textarea></textarea></td>
    </tr>
  </table>
  
  <div id="buttonContainer">
    <div>
      <div id="submitButton">
        <input type="submit" value="저 장">
      </div>
      <div id="deleteButton">
        <input type="button" value="삭 제">
      </div>
      <div id="printButton">
        <input type="button" value="인 쇄">
      </div>
    </div>
  </div>
  </form>
</body>
</html>