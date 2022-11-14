<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>

<html>
<head>
	<meta charset="UTF-8">
	
	<title><tiles:insertAttribute name="title"/></title>
	<link type="text/css" rel="stylesheet" href="/css/hearder.css"/>
	<link type="text/css" rel="stylesheet" href="/css/searchTool.css"/>
	<script src="/js/bootstrap.js"></script>
	<style>
	body{
		margin:0px;
		padding:0px;
	}
	
	#container {
		padding:0px;
		margin:0px;
	}
	#header{
	padding:0px;
	margin:0px;
	} 

	#sidebar-left{
	
	}
	#content{
		margin: auto;
	}
	
	#footer{

	}
	</style>
</head>
<body>
	<div id="container">
		<div id="header">
			<tiles:insertAttribute name="header"/>
		</div>
		<div id="content">
			<tiles:insertAttribute name="body"/>
		</div>
		
		<div id="sidebar-left">
		<tiles:insertAttribute name="side"/>
	    </div>
		
	</div>
</body>
</html>