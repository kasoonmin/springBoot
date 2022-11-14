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
	<title>헤더</title>

</head>
<body>
<header>
<section id="top">
    <nav id="top_menu">   
            <ul>
                <li><a href="#">로그인</a></li>
                <li><a href="#">회원가입</a></li>
                <li><a href="#">예약확인</a></li>
                <li><a href="#">장바구니</a></li>
                <li class="revise"><a href="#">고객센터</a></li>
            </ul>
    </nav>
    <!--top_menu-->
    <div class="clear"></div>
</section>
<!--section top-->
<nav id="main_menu">
    <ul>
        <li><a id="logo" href="#"><img src="/img/logo.png"></a></li>
        <li><a href="#" class="main_menu_nav"><strong>숙소</strong></a></li>
        <li><a href="#" class="main_menu_nav"><strong>투어 & 티켓</strong></a></li>
        <li><a href="#" class="main_menu_nav"><strong>항공</strong></a></li>
        <li><a href="#" class="main_menu_nav"><strong>즐길거리</strong></a></li>
        <li><a href="#" class="main_menu_nav"><strong>커뮤니티</strong></a></li>
        <li><a href="#" class="main_menu_nav"><strong>이벤트</strong></a></li>
        <li>
            <button type="button" class="btn_total_search" value="search"><a href="#"><img src="/img/searching.png" alt=""></a></button>
        </li>
        <li>
            <button type="button" class="btn_all_categrory" value="search"><a href="#"><img src="/img/menu.png" alt=""></a></button>
        </li>
    </ul>
</nav>
</header>
</body>
</html>