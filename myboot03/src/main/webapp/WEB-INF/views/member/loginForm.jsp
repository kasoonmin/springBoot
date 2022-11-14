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
	<title>로그인창</title>
	 <style>
     *{
         margin:0;
         padding: 0;
         box-sizing: border-box;
     }
     
     body{
    	 width:100%;
         display: flex;
         justify-content: center;
         align-items: center;
         height: 100vh;
        
     }
     
    .logo{
     margin-bottom: 20px;
    }

     .login_form{
         position: relative; z-index: 2;
     }
     
     .login_form h1{
         font-size: 32px; color: #000;
         text-align: center;
        
     }
    
     .int_area{
         width:100%; position: relative;           
       
     }
     
     .int_area input{
         width: 100%;
         padding: 20px 10px 10px;
         background-color: transparent;
         
         border: 1px solid #999;
         font-size: 18px; color: #999;
         outline: none;
         
     }
     .int_area label{
         position: absolute; left: 10px; top:15px;
         font-size: 18px; color: #999;
     }

     .btn_area{
        padding-top: 20px;
        margin-bottom: 10px;
         
     }
     .btn_submit{
         height: 60px;
         width: 100%;
         font-size: 20px;
         color: #fff;
         background-color: #007ac9;
         border: none;
         cursor: pointer;
     }
     
     .list_bar li{
         display: inline;
         font-size: 15px;
         color: #555;
         padding: 0;
         box-sizing: border-box;
         margin-left: 20px;
        
     }

     .list_bar li a{
         text-decoration: none;
         color: #000;
              
     }
      .tit_list{
         font-size: 17px;
         text-align: center;
         margin-top: 30px;
         margin-bottom: 10px;
         
     }

     .list_id{
        font-size: 15px;
        color: #555;
        margin: 0;
        padding: 0;
        font-weight: normal;
         list-style: none;
        box-sizing: border-box;
       
     
     }
     
     .btn_naver{
         list-style: none;
         margin: 0;
         padding: 0;
         border: 0 none;
         font-weight: normal;
         text-indent: 0;
         font-size: 15px;
         color: #222;
         cursor: pointer;
         width: 40px;
         height: 40px;
         background: url(/images/content/ico_sns_login.jfif) no-repeat 0 -40px;
         background-size: 40px auto;
         float: left;
         margin-left: 130px;
         margin-top: 10px;
         

     }

     .btn_kakao{
         word-break: break-word;
         -webkit-text-size-adjust: none;
         list-style: none;
         margin: 0;
         padding: 0;
         overflow: visible;
         border: 0 none;
         font-weight: normal;    
         text-indent: 0;
         font-size: 15px;
         color: #222;
         cursor: pointer;
         width: 40px;
         height: 40px;
         background: url(/images/content/ico_sns_login.jfif) no-repeat 0 0;
         background-size: 40px auto;
         margin-left: 50px;
         margin-top: 10px;

     }

     .btn_m{
         height: 60px;
         width: 100%;
         font-size: 20px;
         color: #000;
         background-color: #ffd21b;
         border: none;
         margin-top: 20px;
         cursor: pointer;
     }

    
      
     .list_nj{
         font-size: 12px;
         text-align: center;
         margin-top: 5px;
         list-style-type: none;
     }
     </style>
	<c:choose>
		<c:when test="${result=='loginFailed'}">
			<script>
				window.onload=function() {
					alert("아이디 or 비밀번호가 틀립니다. 다시 로그인 하세요!");
				}
			</script>
		</c:when>
	</c:choose>
</head>
<body>
	<section class="login_form">
	
    <div class="content">
        <h1 class="logo"><a href="/"><img src="/images/logo.png" alt="날잡아"></a></h1>
        
        <form id="frmLogin" class="nj-validation" method="post" action="${contextPath}/member/login.do" autocomplete="off">
            
            <div class="int_area">
                <div class="int_grp">
                    <input type="text" id="id" name="id" class="inp_id" placeholder="아이디" title="아이디 입력" value="" autofocus="autofocus" maxlength="50" required="">
                </div>
            </div>
            <br>
            <div class="int_area">
                <div class="int_grp">
                    <input type="password" id="pwd" name="pwd" class="inp_pw" placeholder="비밀번호" title="비밀번호 입력" required="" minlength="5" maxlength="20">
                  
                </div>
            </div>
        </form>
        <div class="btn_area">
            <button type="submit" id="btnSignIn" class="btn_submit" form="frmLogin">로그인</button>
        </div>
        <ul class="list_bar">
            <li><a href="#">아이디/비밀번호 찾기</a></li>
            <li>|</li>
            <li><a href="#">비회원 예약조회</a></li>
        </ul>	
        <h2 class="tit_list">간편하게 로그인하기</h2>	
        <ul class="list_id">
            <li><button type="button" class="btn_naver" value="naver"></button></li>
            <li><button type="button" class="btn_kakao" value="kakao"></button></li>
                
        </ul>	
       				
        <button type="button" class="btn_m" onclick="location.href='/member/memberForm.do'">회원가입</button>
        <ul class="list_nj">
            <li>날잡아 회원으로 가입을 하시면 더 많은 서비스를 이용하실 수 있습니다.</li>
        </ul>
    </div>
    
</section>
 
</body>
</html>