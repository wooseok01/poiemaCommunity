<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사랑의물품 대상자 신상명세</title>
<link rel="stylesheet" href="../css/information.css">
</head>
<body>
  <form action="/save" method="post">
    <div id="firstTable">
      <div>
        <table id="headerTable">
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
    <table id="firstLine">
      <tr>
        <td class="label colorTd blue">신청인</td>
        <td class="whiteTd"><input type="text" name="servePerson"></td>
        <td class="label colorTd blue">연락처</td>
        <td class="whiteTd"><input type="tel" name="servePhone"></td>
        <td class="label colorTd blue">봉사자</td>
        <td class="whiteTd"><input type="text" name="deliverPerson"></td>
        <td class="label colorTd blue">연락처</td>
        <td class="whiteTd"><input type="tel" name="deliverPhone"></td>
      </tr>
    </table>
  </div>
  
  <table id="thirdTable">
    <tr>
      <td class="label colorTd blue">대상자</td>
      <td class="whiteTd"><input type="text" name="receivePerson"></td>
      <td class="label colorTd blue">연락처</td>
      <td class="whiteTd"><input type="text" name="receivePhone"></td>
      <td class="label colorTd blue">주 소</td>
      <td class="secondWhiteTd"><input type="text" name="receiveAddress"></td>
    </tr>
  </table>
  
  <table id="fourthTable">
    <tr>
      <td class="colorTd blue">분류번호</td>
      <td class="thirdWhiteTd">
        <select>
          <option value="1">1</option>
          <option value="2">2</option>
          <option value="3">3</option>
        </select>
      </td>
      <td class="colorTd blue">성별</td>
      <td class="thirdWhiteTd">
        <select>
          <option value="F">여자</option>
          <option value="M">남자</option>
        </select>
      </td>
      <td class="colorTd blue">나이</td>
      <td class="thirdWhiteTd"><input type="text"></td>
      <td class="colorTd blue">신청월</td>
      <td class="thirdWhiteTd"></td>
      <td class="colorTd blue">지급월</td>
      <td class="thirdWhiteTd"></td>
    </tr>
    <tr>
      <td class="colorTd blue">수입</td>
      <td class="thirdWhiteTd"><input type="text" id="pay">만원</td>
      <td class="colorTd blue">주거사항</td>
      <td class="thirdWhiteTd">
        <select>
          <option value="month">월세</option>
          <option value="year">전세</option>
          <option value="own">자가</option>
        </select>
      </td>
      <td class="colorTd blue">보호구분</td>
      <td colspan="2" class="collspanTd"><input type="text"></td>
      <td class="colorTd blue">세대구분</td>
      <td colspan="2" class="collspanTd"><input type="text"></td>
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
      <td><input type="text"></td>
      <td><input type="text"></td>
      <td><input type="text"></td>
      <td><input type="text"></td>
      <td><input type="text"></td>
      <td><input type="text"></td>
    </tr>
    <tr>
      <td><input type="text"></td>
      <td><input type="text"></td>
      <td><input type="text"></td>
      <td><input type="text"></td>
      <td><input type="text"></td>
      <td><input type="text"></td>
    </tr>
    <tr>
      <td><input type="text"></td>
      <td><input type="text"></td>
      <td><input type="text"></td>
      <td><input type="text"></td>
      <td><input type="text"></td>
      <td><input type="text"></td>
    </tr>
    <tr>
      <td><input type="text"></td>
      <td><input type="text"></td>
      <td><input type="text"></td>
      <td><input type="text"></td>
      <td><input type="text"></td>
      <td><input type="text"></td>
    </tr>
    <tr>
      <td><input type="text"></td>
      <td><input type="text"></td>
      <td><input type="text"></td>
      <td><input type="text"></td>
      <td><input type="text"></td>
      <td><input type="text"></td>
    </tr>
  </table>
  
  <table id="sixthTable">
    <tr>
      <td class="colorTd pink">생 활 사</td>
      <td class="textAreaTd"><textarea></textarea></td>
    </tr>
  </table>
  
  <table id="seventhTable">
    <tr>
      <td class="colorTd pink">중   점 <br>관리사항</td>
      <td><textarea ></textarea></td>
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