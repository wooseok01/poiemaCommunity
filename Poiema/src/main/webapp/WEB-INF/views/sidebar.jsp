<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>포이에마 사회봉사부 메인</title>
</head>
<body>
  <div id="page-wrapper">
    <!-- 사이드바 -->
    <div id="sidebar-wrapper">
      <ul class="sidebar-nav">
        <li id ="mainList" class="sidebar-brand">
          <a href="./main" id="mainListA"><img alt="poiemaLogo" src="resources/img/poiema_logo.jpg"></a>
        </li>
        <li><a href="./information" class="li">명단 추가</a></li>
        <li><a href="./list" class="li">성명 검색</a></li>
        <li>
          <a class="li" id="slideDownLi" onclick="slideDownClick(this);">
            Type별 명단 &nbsp; &nbsp; +
          </a>
          <div id="slideDown">
            <a class="li" href="./findListType?type=A">&nbsp; A유형 명단</a>
            <a class="li" href="./findListType?type=B">&nbsp; B유형 명단</a>
            <a class="li" href="./findListType?type=love">&nbsp; 사랑목장 명단</a>
            <a class="li" href="./findListType?type=none">&nbsp; 관리대상 명단</a>
            <a class="li" href="./findListType?type=boucher">&nbsp; 바우처 명단</a>
            <a class="li" href="./findListType?type=all">&nbsp; 전체 명단</a>
          </div>
        </li>
        <li>
          <a class="li" href="./findConsultCase">상담구분 검색</a>
        </li>
        <li>
          <a class="li" href="./findGeneration">세대구분 검색</a>
        </li>
        <li>
          <a class="li" href="./logout" id="logoutBtn">로그아웃!</a>
        </li>
      </ul>
    </div>
  </div>
</body>
</html>