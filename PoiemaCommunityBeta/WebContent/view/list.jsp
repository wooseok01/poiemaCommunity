<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>사회봉사부 명단</title>
<link rel="stylesheet" href="../css/list.css">
</head>
<body>
  <form action="/find" method="post">
    <select>
      <option>봉사자</option>
      <option>대상자</option>
    </select>
    <input type="text" placeholder="봉사자나 대상자를 검색하세요." id="searchBox" name="name">
    <input type="submit" value="검 색" id="submitBtn">
  </form>
  
  <div id="btnContainer">
    <input type="button" value="+추가">
    <input type="button" value="-삭제">
  </div>
  
  <table>
    <thead>
      <tr>
        <td>봉사자</td>
        <td>전달자 연락처</td>
        <td>대상자</td>
        <td>대상자 연락처</td>
        <td>성별</td>
        <td>나이</td>
        <td>생활구분</td>
      </tr>
    </thead>
    <tbody>
      <tr>
        <td>고석광</td>
        <td>010-7177-7153</td>
        <td>김차한</td>
        <td></td>
        <td>남</td>
        <td>74</td>
        <td>불우가정</td>
      </tr>
    </tbody>
  </table>
</body>
</html>