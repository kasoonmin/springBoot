<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <style>

body{
        display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0px; 
               
        }
        
        div li{
            list-style: none;
        }

        .input_row input{
            margin-top: 12px;
        
        }
        
        .item_lft{
            width: 51%;
            font-weight: normal;
            outline-style: none;
            padding: 10px;
            height: 50px;
            appearance: none;
            box-shadow: none;
            border-radius: 0;
            box-sizing: border-box;
            border: 1px solid #ddd;
            background: #fff;
            font-size: 16px;   
            color: #555;
            position: relative;
            flex-wrap: wrap;
            flex: 1;
            word-break: break-all;
            
            
          
        }

        .inp_pw{
            width: 67%;
            font-weight: normal;
            outline-style: none;
            padding: 10px;
            height: 50px;
            appearance: none;
            box-shadow: none;
            border-radius: 0;
            box-sizing: border-box;
            border: 1px solid #ddd;
            background: #fff;
            font-size: 16px;   
            color: #555;
            position: relative;
            flex-wrap: wrap;
            flex: 1;
            word-break: break-all;
            display: block;
      
        }
        
        .txt{
            width: 67%;
            font-weight: normal;
            outline-style: none;
            padding: 10px;
            height: 50px;
            appearance: none;
            box-shadow: none;
            border-radius: 0;
            box-sizing: border-box;
            border: 1px solid #ddd;
            background: #fff;
            font-size: 16px;   
            color: #555;
            position: relative;
            flex-wrap: wrap;
            flex: 1;
            word-break: break-all;
            display: block;

        }
        .item_phone{
            width: 46%;
            font-weight: normal;
            outline-style: none;
            padding: 10px;
            height: 50px;
            appearance: none;
            box-shadow: none;
            border-radius: 0;
            box-sizing: border-box;
            border: 1px solid #ddd;
            background: #fff;
            font-size: 16px;   
            color: #555;
            position: relative;
            flex-wrap: wrap;
            flex: 1;
            word-break: break-all;
        }
        
        
        .btn_nor{
            margin: 0px;
            border: 0 none;
            box-sizing: border-box;
            cursor: pointer;
            padding: 0 15px;
            background: #007ac9;
            color: #fff;
            text-align: center;
            height: 50px;
            font-size: 16px;
           
            
            
           
        }
        .form_align {
            width: 200px;
            margin: 0px;
            padding: 10px;
            display: inline;
           
        }

        .form_align li{
            display: inline;
            margin: 2px;
            
        }
        
        .btn_block button{
            margin-top: 20px;
           
            width: 67%;
            padding: 0px;
            border: 0 none;
            box-sizing: border-box;
            cursor: pointer;
            background: #007ac9;
            color: #fff;
            text-align: center;
            height: 60px;
            font-size: 18px;
        }
    </style>

</head>
<body>
    <div id="wrap">        
            <div class="container">
                <div class="top_block">
                    <a href="/"><img src="/images/logo.png" alt="?????????" class="top_logo"></a>
                </div>
                <h1 class="tit_head"><strong>????????????</strong></h1>
                <hr>
                <div class="content">			
                <input type="hidden" id="custPassChk">
                <input type="hidden" id="smsCertChk">
                <input type="hidden" id="smsCertChkVal">
                    <div class="block">
                  
                        <form id="frm" method="post" action="" autocomplete="on">
                            <input type="hidden" id="custId" name="custId" value="" required="">
                            <input type="hidden" id="joinType" name="joinType" value="">
                            <input type="hidden" id="webCustNo" name="webCustNo" value="">
                            <input type="hidden" name="returnUrl" value="">
                            <input type="hidden" name="snsId" value="">
                            <input type="hidden" name="snsType" value="">
                            <input type="hidden" name="snsName" value="">
                            <input type="hidden" name="snsEmail" value="">
                            <input type="hidden" name="oldId" value="">
                            <input type="hidden" name="agreePointYN" value="">


        
                        <span class="input_row">
                            <span class="input_grp_item">
                            <input type="text" class="item_lft" title="????????? ?????????" placeholder="?????????" id="txtId" value="" tabindex="1" autocomplete="email" autofocus="autofocus" minlength="2" required="">
                             </span>
                             <button type="button" class="btn_nor item_last" id="" tabindex="3">????????????</button> 
                        </span>
                        
        
                        
                        <span class="input_row">
                            <span class="input_grp">
                                <input type="password" class="inp_pw" name="custPw1" id="custPw1" placeholder="????????????(?????? ?????? ???????????? ??????, 8~16??????)" title="???????????? ??????" tabindex="4">                            
                            </span>
                        </span>
                        <span class="input_row">
                            <span class="input_grp">
                                <input type="password" class="inp_pw" name="custPw2" id="custPw2" placeholder="???????????? ??????" title="????????????  ?????????" tabindex="5">
                            </span>
                        </span>
                        
                        <span class="input_row">
                            <span class="input_grp">
                                <input type="text" class="txt" placeholder="??????(??????)" title="?????? ??????" id="custNmKor" name="custNmKor" tabindex="6" value="" maxlength="13" required="">
                            </span>
                        </span>
                        <!-- ??????????????? ??? ?????? ??????????????? wrong ????????? ??????-->
                        <span class="input_row">
                            <span class="input_grp item">
                                <input type="number" class="item_phone" placeholder="???????????????(????????? ??????)" name="custTel" id="custTel" tabindex="7" maxlength="11">
                            </span>
                            <button type="button" class="btn_nor item_last" tabindex="8" onclick="smsEachCertNum()">???????????? ??????</button>                 	
                        </span>
                        <!-- ???????????? ?????? ???????????? 
                        <span class="input_row">
                            <span class="input_grp">                   
                                <input type="tel" class="txt" placeholder="???????????????(????????? ??????)">  
                            </span>	               	
                        </span>
                      //???????????? ?????? ????????????-->
                        <span class="input_row" style="display:none;" id="inputCert">
                            <span class="input_grp item">
                                <input type="tel" class="count" placeholder="????????????(????????? ??????)" id="btnWrite" tabindex="9" maxlength="6">
                                <span class="count_num">03:00</span>
                            </span>
                            <button type="button" class="btn_nor item_last" id="smsCheckBtn" tabindex="10">??????</button> 
                        </span>
                        
                        <span class="input_row">
                            <span class="input_grp birth_grp">
                                <input type="number" class="item_lft" id="birthDt" name="birthDt" placeholder="???????????? (??? : 19900101)" title="???????????? ??????" maxlength="8">
                                <ul class="form_align item_last">
                                    <li><span class="rio_circle"><input type="radio" id="sex1" name="sex" value="M"><label for="sex1"><span></span>???</label></span></li>
                                    <li><span class="rio_circle"><input type="radio" id="sex2" name="sex" value="F"><label for="sex2"><span></span>???</label></span></li>							
                                    <input type="hidden" id="genderCd" name="genderCd">
                                </ul>
                            </span>
                        </span>
                        
                        </div>
                        <!-- <div class="agree_block">
                            <span class="chk_box inline"><input type="checkbox" id="esschk" name="esschk"><label for="esschk"><span></span><strong class="emp_black">(??????)?????? ?????? ??????</strong></label></span>
                            <span class="chk_box inline"><input type="checkbox" id="selchk" name="selchk"><label for="selchk"><span></span><strong class="emp_black">(??????)?????? ?????? ??????</strong></label></span>
                            <div class="box_line">
                                <ul class="list_basic" id="esschklist">
                                    <li>
                                        <span class="inner_block">
                                            <span class="chk_box"><input type="checkbox" id="agreeUse" name="agreeUse"><label for="agreeUse"><span></span>(??????) ????????? ???????????? ??????</label></span>
                                            <span class="btn_right">(<a href="#" class="link" target="_blank">????????????</a>)</span>
                                        </span>
                                    </li>
                                    <li><span class="chk_box"><input type="checkbox" id="agreeTng" name="agreeTng"><label for="agreeTng"><span></span>(??????) ???14??? ?????? ??????</label></span></li>
                                    <li>
                                        <span class="inner_block">
                                            <span class="chk_box"><input type="checkbox" id="agreeSav" name="agreeSav"><label for="agreeSav"><span></span>(??????) ???????????? ?????? ??? ?????? ??????</label></span>
                                            <span class="btn_right">(<a href="#" class="link" target="_blank">????????????</a>)</span>
                                        </span>
                                    </li>
                                </ul>					
                                <ul class="list_basic" id="selchklist">
                                    <li>
                                        <span class="inner_block">
                                            <span class="chk_box"><input type="checkbox" id="agreeSavChoice" name="agreeSavChoice"><label for="agreeSavChoice"><span></span>(??????) ???????????? ?????? ??? ?????? ??????</label></span>
                                            <span class="btn_right">(<a href="#" class="link" target="_blank">????????????</a>)</span>
                                        </span>
                                    </li>
                                    <li><span class="chk_box"><input type="checkbox" id="agreeMkt" name="agreeMkt"><label for="agreeMkt"><span></span>(??????) ????????? ?????? ?????? ??????</label></span>
                                        <span class="chk_box inline pdl mgt"><input type="checkbox" id="emailRcp" name="emailRcp"><label for="emailRcp"><span></span>?????????</label></span>
                                        <span class="chk_box inline mgt"><input type="checkbox" id="mobileRcp" name="mobileRcp"><label for="mobileRcp"><span></span>SMS</label></span>
                                    </li>
                                </ul>
                            </div>
                        </div> -->
                        <div class="btn_block">
                            <button type="button" class="btn_submit" id="btnJoinSubmit">?????? ??????</button>	
                        </div>
                        </form>
                    </div>
                                    
                </div>
            </div>
            
            
        <script>
          
            var _IS_ID_CHECK_TF = false;
            var frmValid = $('#frm').ybValidator({errorTemplate : "<p class='txt_check'>#=message#</p>"});
            
            var _joinObj = {
                    validEmailId : function(){
                        /* ????????? */
                        var $txtEmailId = $('#txtId');
                        frmValid.removeValidMessage($txtEmailId);
        
                        var strEmailId = $txtEmailId.val().trim();
                        $txtEmailId.val(strEmailId);
                        if ($("#selEmailList").val() !== "NONE") {
                            strEmailId += "@"+$("#selEmailList").val();
                        }
        
                        /* ????????? ?????? */
                        if (!$txtEmailId.val() && strEmailId.length <= 0) {
                            frmValid.showValidMessage($('#txtId'), "?????? ?????? ?????????.");
                            return false;
                        }
                        if (!$.isValidEmail(strEmailId)) {
                            frmValid.showValidMessage($('#txtId'), "????????? ????????? ?????????????????????.");
                            return false;
                        }
                        if ( /([A-Z]+[a-z0-9\.\-]*)@/g.test(strEmailId) ) {
                            frmValid.showValidMessage($('#txtId'), "????????? ???????????? ?????? ???????????? ????????? ???????????????.");
                            return false;
                        }
        
                        return true;
                    }
            }
        
            /* ????????? ?????? ????????? */
            $("#txtId").on({
                "change" : function(e){
                    if(!_joinObj.validEmailId()) {
                        e.preventDefault();
                    }
                },
                "keypress" : function(e){
                    if(e.charCode === 64 && $("#selEmailList").val() !== "NONE") e.preventDefault();		// '@' ?????? ??????.
                }
            });
            /* ????????? ????????? ???????????? ?????? ????????? */
            $("#selEmailList").on('change', function(e){
                $(this).val() !== "NONE" && $("#txtId").val().indexOf("@") >= 0 && $("#txtId").val("");
                $("#txtId").trigger('change').focus();
            });
            /* ?????? ?????? ?????? */
            $('#btnDoubleCheck').on("click", function(e){
                e.preventDefault();
                procDoubleCheck();
            });
        
            /* ????????? ?????? ?????? ????????? */
            $('#birthDt').off('keyup').on('keyup', function(e){
                if (!(e.keyCode >= 48 && e.keyCode <= 57)) {
                    $(this).val($(this).val().replace(/[^(0-9)]/gi, ''));
                }
            });
            /* ?????? ?????? ?????? ??? ?????? ????????? */
            $('#custNmKor, #custTel, #btnWrite, #birthDt').off('input').on('input', function(e){
                var maxLength = $(this).attr('maxLength');
                if ($(this).val().length > maxLength){
                    $(this).val($(this).val().slice(0, maxLength));
                }
            });
            
        
            /* ????????? ********** */
            var _regExKoEnOnly = /[^???-???a-zA-Z]/gi;
            if($("#custNmKor").val().length > 0){
                var _$nm = $("#custNmKor");
                _$nm.val(_$nm.val().replace(_regExKoEnOnly, ''));
            }
        
            //????????? ?????? ?????? ??????
            YBmCerti.init({
                elemTime : $('.count_num'), /* ???????????? ?????? Element/selector */
            });
            var result1 ="";
            var message = "";
            
            $(".btn_pw_swich").on('click', function() {
                if ($(this).siblings(".inp_pw").is("[type=password]")) {
                    $(this).siblings(".inp_pw").attr("type", "text");
                    $(this).addClass("on").children("span").text("???????????? ?????????");
                } else {
                    $(this).siblings(".inp_pw").attr("type", "password");
                    $(this).removeClass("on").children("span").text("???????????? ?????????");
                }
            });
            
            $('#esschk, #selchk').on('click', function(){	//????????????
                var id =   $(this).prop('id');
                var list = id+'list';
                var divi = $('#'+id).is(':checked');
                $('#'+list+' > li').each(function(idx,itm){
                    $(itm).find('input[type=checkbox]').prop('checked', divi);
                });
            });
            
            $('#esschklist input[type=checkbox]').on('click', function(){
                var total = $('#esschklist input[type=checkbox]').length;
                var chked = $('#esschklist input[type=checkbox]:checked').length;
                var divi = (total == chked);
                $('#esschk').prop('checked', divi);
            });
            
            $('#selchklist input[type=checkbox]').on('click', function(){
                var id = $(this).prop('id');
                if(id === 'agreeSavChoice' || id === 'agreeMkt') {		//(??????)???????????? ????????? ?????????,?????????,SMS ??????
                    var divi =$(this).is(':checked');
                    $('#selchklist input[type=checkbox]').each(function(idx,itm){
                        if(id === 'agreeMkt' && divi == false && itm.id ==='agreeSavChoice'){
                            $(itm).prop('checked', true);
                        } else {
                            $(itm).prop('checked', divi);
                        }
                    });
                }
                if(id === 'emailRcp' || id === 'mobileRcp'){
                    if(!$('#emailRcp').is(':checked') && !$('#mobileRcp').is(':checked')) $('#agreeMkt').prop('checked', false);
                    if( $('#emailRcp').is(':checked') ||  $('#mobileRcp').is(':checked')) $('#agreeMkt, #agreeSavChoice').prop('checked', true);
                }
                var total = $('#selchklist input[type=checkbox]').length;
                var chked = $('#selchklist input[type=checkbox]:checked').length;
                var divi = (total == chked);
                $('#selchk').prop('checked', divi);
            });
            
            //ID ???????????? ?????? ??????
            $('#txtId').on('keydown', function(){
                if(_IS_ID_CHECK_TF){
                    if(confirm("???????????? ????????? ????????? ?????????????????????????")){
                        _IS_ID_CHECK_TF = false;
                    }else{
                        $('#txtId').val($('#custId').val());
                        return false;
                    }
                }
            });
        
            /*???????????? ??????*/
            $('#custPw1').off('keyup').on('keyup', function(e){
                var $thisVal = $(this).val();
                if ($thisVal.length > 0){
                    var cnt = 0;
                    var format1 = /[0-9]/;
                    if(format1.test($thisVal)){
                        cnt ++ ;
                    }
        
                    var format2 = /[a-zA-Z]/;
                    if(format2.test($thisVal)){
                        cnt ++ ;
                    }
        
                    var format3 = /[~?!@#$%<>^&*\()\-=+_\???\:\;\.\,\"\'\[\]\{\}\/\|\`]/gi;
                    if(format3.test($thisVal)){
                        cnt ++ ;
                    }
        
                    if((cnt >= 2 && $thisVal.length >= 10) || (cnt >= 3 && $thisVal.length >= 8)){
                        frmValid.removeValidMessage($(this));
                        $("#custPassChk").val("Y");
                    } else {
                        message = '-??????,??????,???????????? ??? 2?????? ??????????????? ???????????? 10????????????<br >-??????,??????,???????????? ??? 3?????? ??????????????? ???????????? 8????????????';
                        frmValid.showValidMessage($(this), message);
                        $("#custPassChk").val("N");
                    }
                } else {
                    $("#custPassChk").val("N");
                }
            });
        
            $('#custPw2').off('keyup').on('keyup', function(){
                var thisPW = $(this).val();
                if (thisPW.length > 0){
                    if ($("#custPw1").val() === thisPW){
                        frmValid.removeValidMessage($('#custPw2'));
                    } else {
                        message = '??????????????? ???????????? ????????? ??????????????????.';
                        frmValid.showValidMessage($('#custPw2'), message);
                    }
                }
            });
        
            //??????????????? ??????
            $('#custTel').on('keyup', function(e){
                if($('#smsCertChk').val() == 'Y'){
                    if(confirm("???????????? ?????????????????? ?????????????????????????")){
                        $('#smsCertChk').val("N");
                    }else{
                        $('#custTel').val($('#smsCertChkVal').val());
                        return false;
                    }
                }
                
                if (!(e.keyCode >= 48 && e.keyCode <= 57)) {
                    var inputVal = $(this).val();
                    $(this).val(inputVal.replace(/[^(0-9)]/gi, ''));
                }
                frmValid.removeValidMessage($('#custTel'));
            });
        
            /* ???????????? ?????? */
            $('#smsCheckBtn').on('click', function(){
                smsEachCertApply();
            });
        
            //????????? ?????? ?????????
            $('#custNmKor').on('change', function(e){
                var inputVal = $(this).val();
                if(_regExKoEnOnly.test(inputVal)){
                    message = '????????? ?????? ????????? ?????? ???????????????.';
                    frmValid.showValidMessage($('#custNmKor'), message);
                    $(this).val(inputVal.replace(_regExKoEnOnly, ''));
                    return false;
                } else if($(this).val().length <= 1){
                    message = '????????? 2?????? ?????? ??????????????? ?????????.';
                    frmValid.showValidMessage($('#custNmKor'), message);
                    return false;
                }
                frmValid.removeValidMessage($('#custNmKor'));
            });
            
            //???????????????
            $(".btn_infomore").click(function(){
                $(this).toggleClass("close");
                $(this).closest("#tg_info").siblings("#tg_more").slideToggle("fast");
                
            });
            
            $('#btnJoinSubmit').on('click', function(){
                if(frmValid.isValid() && formValidation()){
                    $.ajax({
                        url: "/accounts/insertMember.ajax"
                        ,type:"POST"
                        ,async: false
                        ,dataType:"json"
                        ,data: $('#frm').serialize()
                        ,success:function(responseData, textStatus, jqXHR){
                            if (responseData.RESULT_CODE === "0000") {
                                if ("Y" === "Y") {
                                    alert(responseData.RESULT_MESSAGE);
                                }
                                if("" ==""){
                                    $('#frm').attr("action", "/accounts/joinMemberComplete.yb");
                                    $('#webCustNo').val(responseData.data.webCustNo);
                                    $('#frm').submit();
                                }else{
                                    $('#frm').attr("action", "");
                                    $('#frm').submit();
                                }
                            } else if (responseData.RESULT_CODE === "9998") {
                                //?????? + ???????????? ?????????
                                if(confirm(responseData.RESULT_MESSAGE)){	
                                    location.href = '/accounts/accountFindMain.yb';
                                }
                            } else if (responseData.RESULT_CODE === "9999") {
                                alert(responseData.RESULT_MESSAGE);
                            } 
                        }
                        , error: function() {
                            alert('????????? ?????????????????????.');
                        }
                    });
                }
            });
            
            /* ???????????? ?????? */
            function procDoubleCheck() {
                /* ????????? */
        // 		frmValid.removeValidMessage($('#txtId'));
        
                /* ???????????? ????????? ?????? */
                if(!_joinObj.validEmailId()) {
                    return false;
                }
        
                /* ????????? ????????? ?????? */
                var finalEmail = $("#txtId").val();
                if ($("#selEmailList").val() !== "NONE") {
                    finalEmail += "@"+$("#selEmailList").val();
                }
        
                /* ???????????? ?????? */
                $.ybAjax({
                    url : "/accounts/selectCustIdDuplicationCheck.ajax",
                    data: {"custId" : finalEmail}
                }).then(
                    function( data, textStatus, jqXHR ) {
                        if(data.cnt == 0){
                            _IS_ID_CHECK_TF = true;
                            $('#custId').val(finalEmail);
                            alert("[ "+finalEmail+" ]\n?????? ????????? ??????????????????.");
                            return;
                        }else{
                            _IS_ID_CHECK_TF = false;
                            alert("[ "+finalEmail+" ]\n????????? ??? ?????? ??????????????????.");
                            return false;
                        }
                    },
                    function( jqXHR, textStatus, errorThrown ) {
                        alert('????????? ?????? ?????? ??? ????????? ?????????????????????.\n?????? ??????????????????.');
                    }
                );
            
            }
            
            // ???????????? ??????
            function smsEachCertNum() {
                if(!$("#custTel").val().match(/^((01[1|6|7|8|9])[1-9]+[0-9]{6,7})|(010[1-9][0-9]{7})$/)){
                    message = '????????? ????????? ????????? ???????????????.';
                    frmValid.showValidMessage($('#custTel'), message);
                    return false;
                }
                
                var rcptTel = $('#custTel').val();
                $('#smsCertChk').val("N");
                var data1 = YBmCerti.sendCertNum(rcptTel);
                if(data1.errorCode == 0){
                    alert("??????????????? ??????????????? ?????????????????????.");
                    result1 = data1.smsCertSeq;
                    $('#inputCert').show();
                    $("#btnWrite").focus();
                    return;
                }else{
                    alert("????????? ?????? ??????(3???)??? ?????? ?????? ?????? ????????? ?????????.");
                    return;
                }
            }
        
            /* ???????????? */
            function smsEachCertApply(){
                if($("#btnWrite").val() == ""){
                    message = '??????????????? ???????????????.';
                    frmValid.showValidMessage($('#btnWrite'), message);
                    return false;
                }
                
                var rcptTel = $('#custTel').val();
                var data = YBmCerti.authNum(rcptTel, $("#btnWrite").val());
                if(data.errorCode == 0){
                    $('#smsCertChk').val("Y");
                    $('#inputCert').hide();
                    $('#smsCertChkVal').val($('#custTel').val());
                    $('#btnWrite').val("");
                    alert("????????? ????????? ?????????????????????.");
                    frmValid.removeValidMessage($('#custTel'));
                }else{
                    alert("???????????? ????????? ???????????? ????????????. ?????? ??? ?????? ???????????????.");
                    $("#btnWrite").focus();
                    return;
                }
            }
        
            /* ?????? ????????? ?????? */
            function formValidation(){
                //????????? ??????
                if(!_IS_ID_CHECK_TF){
                    message = 'ID ?????? ????????? ????????????.';
                    frmValid.showValidMessage($('#txtId'), message);
                    return false;
                }
                
                if($("#joinType").val() == ''){
                    if($("#custPw1").val() == ''){
                        message = '??????????????? ??????????????????.';
                        frmValid.showValidMessage($('#custPw1'), message);
                        return false;
                    }
                    if($("#custPw2").val() == ''){
                        message = '???????????? ????????? ??????????????????.';
                        frmValid.showValidMessage($('#custPw2'), message);
                        return false;
                    }
                    //???????????? ??????
                    if($("#custPw2").val() != $("#custPw1").val()){
                        message = '??????????????? ???????????? ????????????.';
                        frmValid.showValidMessage($('#custPw2'), message);
                        return false;
                    }
                    //???????????? ??????
                    if($("#custPassChk").val() != "Y"){
                        message = '-??????,??????,???????????? ??? 2?????? ??????????????? ???????????? 10????????????<br >-??????,??????,???????????? ??? 3?????? ??????????????? ???????????? 8????????????';
                        frmValid.showValidMessage($('#custPw1'), message);
                        return false;
                    }
                }
                
                // ?????? ????????? ??????
                var _$custNm = $("#custNmKor");
                if(_regExKoEnOnly.test(_$custNm.val())){
                    _$custNm.val(_$custNm.val().replace(_regExKoEnOnly, ''));
                    message = '????????? ?????? ????????? ?????? ???????????????.';
                    frmValid.showValidMessage(_$custNm, message);
                    return false;
                }
                if(_$custNm.val().length <= 1){
                    message = '????????? 2?????? ?????? ??????????????? ?????????.';
                    frmValid.showValidMessage(_$custNm, message);
                    return false;
                }
        
                // ???????????? ??????
                var _strBirthDt = $('#birthDt').val();
                if($.isEmpty(_strBirthDt)){
                    message = '??????????????? ??????????????????.';
                    frmValid.showValidMessage($('#birthDt'), message);
                    return;
                }
                if(!$.ybDate.isBirthDate(_strBirthDt)){
                    message = '??????????????? ???????????? ??????????????????.';
                    frmValid.showValidMessage($('#birthDt'), message);
                    return;
                }
                if($.ybDate.getDateDiff({type:'Y', degree:-14}) < $.ybDate.getDate($('#birthDt').val())){
                    message = '14??? ?????? ??????????????? ???????????? ??? ????????????.';
                    frmValid.showValidMessage($('#birthDt'), message);
                    return;
                }
                frmValid.removeValidMessage($('#birthDt'));
        // 			if(_strBirthDt.length !== 8 || _strBirthDt.substr(0,4) > (new Date()).getFullYear() || _strBirthDt.substr(4,2) > 12 || _strBirthDt.substr(6,2) > 31 ){
        // 				message = '??????????????? ???????????? ??????????????????.';
        // 				frmValid.showValidMessage($('#birthDt'), message);
        // 				return;
        // 			}
        // 			if(_strBirthDt >= $.ybDate.getTodayString("-").replaceAll("-", "")) {
        // 				message = '??????????????? ???????????? ?????? ????????? ??????????????????.';
        // 				frmValid.showValidMessage($('#birthDt'), message);
        // 				return;
        // 			}
                
                // ??????????????? ??????
                if($('#smsCertChk').val() != "Y"){
                    message = '????????? ????????? ??????????????????.';
                    frmValid.showValidMessage($('#custTel'), message);
                    return false;
                }

                if(!$('input[name="reten"]').is(':checked')) {
                    alert('???????????? ??????????????? ?????? ????????????.');
                    return false;
                }
                
                //???????????? ????????????
                if($('input[name="reten"]').is(':checked')){
                    $('input[name="reten"]').each(function(idx, item){
                        if($(this).is(':checked')){
                            $('#memberReten').val($(this).val());
                        }
                    })	
                }
                
                //???????????? ????????????
                var total = $('#esschklist input[type=checkbox]').length;
                var chked = $('#esschklist input[type=checkbox]:checked').length;
                
                if(total !== chked){	//???????????? ??????
                    alert("???????????? ?????? ????????? ????????? ?????????.");
                    $('#esschk').focus();
                    return false;
                }else{
                    $('#esschklist input, #selchklist input').each(function(idx,itm){
                        if($(this).is(':checked')){
                            $('#'+itm.id).val('Y')
                        }
                    })
                }
                
                return true;
            }
        </script>
        
                <!-- T:footer START-->
                 <div id="footer">	
                    
        
    
        <script src="/js/yb.util.ua.js"></script>
        <script>
            ($.UAUtil.IE !== 0 && $.UAUtil.IE >= 10) && $.ybPopup({contents : {url : "/static/views/MAIN/browserUpdate.html"}}).open();
        </script>
                </div>
                <!-- T:footer END -->
            </div>
    
</body>
</html>