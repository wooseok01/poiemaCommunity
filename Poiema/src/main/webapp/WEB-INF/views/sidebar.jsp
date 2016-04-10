<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
          <a href="./main" id="mainListA">Poiema Main</a>
        </li>
        <li><a href="./information">명단 추가</a></li>
        <li><a href="./list">성명 검색</a></li>
        <li>
          <a id="slideDownLi" onclick="slideDownClick(this);">
            Type별 명단 &nbsp; &nbsp; +
          </a>
          <div id="slideDown">
            <a href="./findListType?type=A">&nbsp; A유형 명단</a>
            <a href="./findListType?type=B">&nbsp; B유형 명단</a>
            <a href="./findListType?type=love">&nbsp; 사랑목장 명단</a>
            <a href="./findListType?type=all">&nbsp; 전체 명단</a>
          </div>
          <a href="./logout">로그아웃!</a>
        </li>
      </ul>
    </div>
  </div>
</body>
</html>