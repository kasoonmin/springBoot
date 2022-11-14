<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>하단 부분</title>
	<style>
//		<link type="text/css" rel="stylesheet" href="/css/bootstrap.css"/>
//		<script src="js/bootstrap.js"></script>
	</style>
</head>
<body>
<!--nav-->
<nav class="navbar navbar-expand-lg navbar-dark bg-dark" aria-label="Tenth navbar example">
  <div class="container-fluid">
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarsExample08" aria-controls="navbarsExample08" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>

    <div class="collapse navbar-collapse justify-content-md-center" id="navbarsExample08">
      <ul class="navbar-nav">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">날잡아</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">공지사항</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">1대1 문의</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">이벤트</a>
        </li>
        <li class="nav-item dropdown">
          <a class="nav-link dropdown-toggle" href="#" id="dropdown08" data-bs-toggle="dropdown" aria-expanded="false">비지니스 센터</a>
          <ul class="dropdown-menu" aria-labelledby="dropdown08">
            <li><a class="dropdown-item" href="#">비지니스파트너 로그인</a></li>
          </ul>
        </li>
      </ul>
    </div>
  </div>
</nav>

<footer class="py-3 my-4" style="width: 1200px; margin: auto;">
  <ul class="nav justify-content-center border-bottom pb-3 mb-3">
    <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">회사소개</a></li>
    <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">개인정보처리방침</a></li>
    <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">이용약관</a></li>
    <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">여행약관</a></li>
    <li class="nav-item"><a href="#" class="nav-link px-2 text-muted">오시는길</a></li>
  </ul>
  <p class="text-center text-muted">© 2022 Dobbys Company, Inc</p>
</footer>

<!-- Optional JavaScript; choose one of the two! -->

<!-- Option 1: Bootstrap Bundle with Popper -->


<!-- Option 2: Separate Popper and Bootstrap JS -->
<!--
<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.10.2/dist/umd/popper.min.js" integrity="sha384-7+zCNj/IqJ95wo16oMtfsKbZ9ccEh31eOz1HGyDuCQ6wgnyJNSYdrPa03rtR1zdB" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.min.js" integrity="sha384-QJHtvGhmr9XOIpI6YVutG+2QOK9T+ZnN4kzFN1RtK3zEFEIsxhlmWl5/YESvpZ13" crossorigin="anonymous"></script>
-->
</body>
</html>