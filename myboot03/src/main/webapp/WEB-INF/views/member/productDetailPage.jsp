<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html >
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    
    <style>
        .contents_area{
            width: 1200px;
            margin: auto;
        }

        .productName{
            display: flex;
            align-items: center;
            justify-items: center;
        }

        .text_area{
            width: 700px;
            display: flex;
            float: left;
            font-size: 30px;
            margin-right: 50px;
        }
        
        .step{
            width: 370px;
            display: flex;
            list-style: none;
            float: right;
            font-size: 20px;
            margin-left: 40px;
            
        }
        .step li{
            margin-right: 30px;
            
        }

        
        .step .num{
        position: relative;
        left: 30px;
        text-align: center;
        width: 30px;
        height: 30px;
        border-radius: 50%;
        background: #ccc;
        color: #fff;
       }
    
       .step .active{
        position: relative;
        left: 30px;
        text-align: center;
        width: 30px;
        height: 30px;
        border-radius: 50%;
        background: #000;
        color: #fff;
        
       }

       

        .productDetail{
            display: flex;
          
        }
        
        .main_thumbnail{          
            width: 750px;
            margin-right: 80px;
        }

        .main_thumbnail a img{
            border-radius: 20px;
        }

     

        .contents_item{
            margin-top: 50px;
           font-size: 20px;
           margin-left: 40px;
           
           
          
           
        }
        .contents_item input{
            font-size: 17px;
            width: 250px;
            height: 37px;
            margin-top: 20px;
            

        }
        
        .product_btn{
            font-size: 17px;
            width: 150px;
            height: 40px;
            background: #007ac9;
            border-radius: 5px;
            color: #fff;
            border: none;
        }

        .hotel_name p{
            font-size: 18px;
            color: gray;
        }

        .review_sub .rate{
            font-size: 18px;
            padding: 5px;
            width: 70px;
            height: 30px;
            border-radius: 5px;
            background:#007ac9;
            color: #fff;
            text-align: center;        
        }
        .review_sub .txt{
            font-size: 18px;
            color: #007ac9;
        }
        .indexBar {
    width: 1200px;
    display : flex;
     margin : 10px 0;
}

.indexButton {
    width: 300px;
    height: 30px;
    justify-items: center;
    text-align: center;
    margin : auto;
    border-radius: 10px ;
    border: 1px solid black;
}

.indexButton:hover {
    background-color: aliceblue;
}

.indexButton a, a:visited {
    text-decoration: none;
    line-height: 30px;
    color : black;
}

#hotelNearInfo {
    width: 1200px;
    display : flex;
    border : 1px solid black;
    margin : 10px 0;
}

#mapwrap{position:relative;overflow:hidden;}
.category, .category *{margin:0;padding:0;color:#000;}   
.category {position:absolute;overflow:hidden;top:10px;left:10px;width:150px;height:50px;z-index:10;border:1px solid black;font-family:'Malgun Gothic','맑은 고딕',sans-serif;font-size:12px;text-align:center;background-color:#fff;}
.category .menu_selected {background:#FF5F4A;color:#fff;border-left:1px solid #915B2F;border-right:1px solid #915B2F;margin:0 -1px;} 
.category li{list-style:none;float:left;width:50px;height:45px;padding-top:5px;cursor:pointer;} 
.category .ico_comm {display:block;margin:0 auto 2px;width:22px;height:26px;background:url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/category.png') no-repeat;} 
.category .ico_coffee {background-position:-10px 0;}  
.category .ico_store {background-position:-10px -36px;}   
.category .ico_carpark {background-position:-10px -72px;} 

.mapInfo {
    width: 500px;
}

#hotelInfo {
    width : 1200px;
    background-color: rgb(220, 232, 243);
    border-radius: 10px 10px;
    padding : 10px;
    margin : 10px 0;
}

.hotelDetailInfo li {
    list-style : none;
    margin : 20px auto;
}

.title {
    font-size: 16px;
    color: black;
}

.txt {
    font-size : 14px;
    color : grey;
}

#review {
    width : 1200px;
}

#reviewHotelScore {
    width: 100%;
    text-align: center;
    margin : 10px 0;
}

.scoreWrap {
    width : 150px;
    overflow: hidden;
    text-align: center;
    margin : 0 auto;
}

.score {
    display: inline-block;
    width: 130px;
    height: 24px;
    background: url(//image.goodchoice.kr/images/web_v3/bg_score.png) 0 0 no-repeat;
    background-size: 120px auto;
}

.score .star_40 {
    background-position: 0 -69px;
}

.reviewInputWrap {
    display : flex;
    padding : 10px;
    margin : 20px 0;
    border-bottom: 1px solid grey;
}

.reviewInput {
    width: 100%;
}

.reviewInput input {
    width: 98%;
    height: 80%;
}

.userInfo {
    display: inline-block;
    margin : 0 10px;
}

.reviewButtonWrap {
    height: 80%;
}

.reviewInputWrap {
    height: 50px;
}

.reviewButtonWrap {
    height: 100%;
}

.reviewButton {
    width : 100%;
    height: 80%;
    border: 1px solid grey;
    border-radius: 5px;
    margin : auto;
}

.review {
    margin : 10px 0;
}

.reviews ul {
    list-style: none;
}

.reviews li {
    padding : 10px;
    border-bottom: 1px solid grey;
}

    </style>
</head>

<body>
    <div class="contents_area">
        <div class="productName">
            <div class="text_area">
                <div>선택하신 숙소의 옵션을 선택하세요.</div>
            </div>
            <ul class="step">
                <li><p class="num">1</p><p class="text">숙소선택</p></li>
                <li><p class="active">2</p><p class="text">객실선택</p></li>
                <li><p class="num">3</p><p class="text">예약하기</p></li>
            </ul>
        </div>
       <div class="contents">
            <div class="productDetail">
            <div class="main_thumbnail">
                <a style="background:url()"><img src="/img/jeju.JPG" width="750px" alt=""></a>
            </div>
            <div class="contents_item">
                <h2>객실 선택</h2>
                <form action="">
                    <div class="peopleNum ">
                        <input type="text" value="객실 1, 성인2"/>
                    </div>
                    
                    <div class="hotel_type">
                        <input type="text" value="객실 타입"/>
                    </div>
                    <div class="day">
                        <input type="date" placeholder="날짜"/>
                    </div>

                    <div class="price">
                        <p>
                            <b>150000원</b>
                        </p>
                    </div>
                    <button class="product_btn product_cart">장바구니</button>
                    <button class="product_btn product_reservation">예약하기</button>
                    
                </form>
            </div>
          </div>

        
        <div class="hotel_title">
            <div class="hotel_name">
                <h2><strong>신라스테이 제주</strong></h2>
                <p>Shilla Stay Jeju</p>
            </div>
            <div class="review_sub">
                <strong class="rate">4.5/5</strong>
                <span class="txt">많이 좋아요</span>
                <span class="cnt">(후기 1개)</span>
            </div>
        </div>
        </div>
        <div class="indexBar">
            <div class="indexButton">
                <a href="#hotelNearInfo">주변 정보</a>
            </div>
            <div class="indexButton">
                <a href="#hotelInfo">숙소 정보</a>
            </div>
            <div class="indexButton">
                <a href="#review">후기</a>
            </div>
        </div>
        <div id="mapwrap"> 
        <!-- 지도가 표시될 div -->
        	<div id="map" style="width:700px;height:300px;"></div>
        <!-- 지도 위에 표시될 마커 카테고리 -->
        	<div class="category">
        	    <ul>
        	        <li id="coffeeMenu" onclick="changeMarker('coffee')">
        	            <span class="ico_comm ico_coffee"></span>
        	            커피숍
        	        </li>
        	        <li id="storeMenu" onclick="changeMarker('store')">
        	            <span class="ico_comm ico_store"></span>
        	            편의점
        	        </li>
        	        <li id="carparkMenu" onclick="changeMarker('carpark')">
        	            <span class="ico_comm ico_carpark"></span>
        	            주차장
        	        </li>
        	    </ul>
            </div>
        </div>
        <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=9fdcadf32f7a781b43f14d2f91977aea&libraries=services"></script>
	<script>
	var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 2 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

// 주소로 좌표를 검색합니다
geocoder.addressSearch('서울 서초구 서초대로78길 24', function(result, status) {

    // 정상적으로 검색이 완료됐으면 
     if (status === kakao.maps.services.Status.OK) {

        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

        // 결과값으로 받은 위치를 마커로 표시합니다
        var marker = new kakao.maps.Marker({
            map: map,
            position: coords
        });

        // 인포윈도우로 장소에 대한 설명을 표시합니다
        var infowindow = new kakao.maps.InfoWindow({
            content: '<div style="width:150px;text-align:center;padding:6px 0;">날잡아 프로젝트</div>'
        });
        infowindow.open(map, marker);

        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
        map.setCenter(coords);
    } 
});    
var mapContainer = document.getElementById('map'), // 지도를 표시할 div  
mapOption = { 
    center: new kakao.maps.LatLng(37.498004414546934, 127.02770621963765), // 지도의 중심좌표 
    level: 3 // 지도의 확대 레벨 
}; 

var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

//커피숍 마커가 표시될 좌표 배열입니다
var coffeePositions = [ 
new kakao.maps.LatLng(37.499590490909185, 127.0263723554437),
new kakao.maps.LatLng(37.499427948430814, 127.02794423197847),
new kakao.maps.LatLng(37.498553760499505, 127.02882598822454),
new kakao.maps.LatLng(37.497625593121384, 127.02935713582038),
new kakao.maps.LatLng(37.49646391248451, 127.02675574250912),
new kakao.maps.LatLng(37.49629291770947, 127.02587362608637),
new kakao.maps.LatLng(37.49754540521486, 127.02546694890695)                
];

//편의점 마커가 표시될 좌표 배열입니다
var storePositions = [
new kakao.maps.LatLng(37.497535461505684, 127.02948149502778),
new kakao.maps.LatLng(37.49671536281186, 127.03020491448352),
new kakao.maps.LatLng(37.496201943633714, 127.02959405469642),
new kakao.maps.LatLng(37.49640072567703, 127.02726459882308),
new kakao.maps.LatLng(37.49640098874988, 127.02609983175294),
new kakao.maps.LatLng(37.49932849491523, 127.02935780247945),
new kakao.maps.LatLng(37.49996818951873, 127.02943721562295)
];

//주차장 마커가 표시될 좌표 배열입니다
var carparkPositions = [
new kakao.maps.LatLng(37.49966168796031, 127.03007039430118),
new kakao.maps.LatLng(37.499463762912974, 127.0288828824399),
new kakao.maps.LatLng(37.49896834100913, 127.02833986892401),
new kakao.maps.LatLng(37.49893267508434, 127.02673400572665),
new kakao.maps.LatLng(37.49872543597439, 127.02676785815386),
new kakao.maps.LatLng(37.49813096097184, 127.02591949495914),
new kakao.maps.LatLng(37.497680616783086, 127.02518427952202)                       
];    

var markerImageSrc = 'https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/category.png';  // 마커이미지의 주소입니다. 스프라이트 이미지 입니다
coffeeMarkers = [], // 커피숍 마커 객체를 가지고 있을 배열입니다
storeMarkers = [], // 편의점 마커 객체를 가지고 있을 배열입니다
carparkMarkers = []; // 주차장 마커 객체를 가지고 있을 배열입니다


createCoffeeMarkers(); // 커피숍 마커를 생성하고 커피숍 마커 배열에 추가합니다
createStoreMarkers(); // 편의점 마커를 생성하고 편의점 마커 배열에 추가합니다
createCarparkMarkers(); // 주차장 마커를 생성하고 주차장 마커 배열에 추가합니다

changeMarker('coffee'); // 지도에 커피숍 마커가 보이도록 설정합니다    


//마커이미지의 주소와, 크기, 옵션으로 마커 이미지를 생성하여 리턴하는 함수입니다
function createMarkerImage(src, size, options) {
var markerImage = new kakao.maps.MarkerImage(src, size, options);
return markerImage;            
}

//좌표와 마커이미지를 받아 마커를 생성하여 리턴하는 함수입니다
function createMarker(position, image) {
var marker = new kakao.maps.Marker({
    position: position,
    image: image
});

return marker;  
}   

//커피숍 마커를 생성하고 커피숍 마커 배열에 추가하는 함수입니다
function createCoffeeMarkers() {

for (var i = 0; i < coffeePositions.length; i++) {  
    
    var imageSize = new kakao.maps.Size(22, 26),
        imageOptions = {  
            spriteOrigin: new kakao.maps.Point(10, 0),    
            spriteSize: new kakao.maps.Size(36, 98)  
        };     
    
    // 마커이미지와 마커를 생성합니다
    var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
        marker = createMarker(coffeePositions[i], markerImage);  
    
    // 생성된 마커를 커피숍 마커 배열에 추가합니다
    coffeeMarkers.push(marker);
}     
}

//커피숍 마커들의 지도 표시 여부를 설정하는 함수입니다
function setCoffeeMarkers(map) {        
for (var i = 0; i < coffeeMarkers.length; i++) {  
    coffeeMarkers[i].setMap(map);
}        
}

//편의점 마커를 생성하고 편의점 마커 배열에 추가하는 함수입니다
function createStoreMarkers() {
for (var i = 0; i < storePositions.length; i++) {
    
    var imageSize = new kakao.maps.Size(22, 26),
        imageOptions = {   
            spriteOrigin: new kakao.maps.Point(10, 36),    
            spriteSize: new kakao.maps.Size(36, 98)  
        };       
 
    // 마커이미지와 마커를 생성합니다
    var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
        marker = createMarker(storePositions[i], markerImage);  

    // 생성된 마커를 편의점 마커 배열에 추가합니다
    storeMarkers.push(marker);    
}        
}

//편의점 마커들의 지도 표시 여부를 설정하는 함수입니다
function setStoreMarkers(map) {        
for (var i = 0; i < storeMarkers.length; i++) {  
    storeMarkers[i].setMap(map);
}        
}

//주차장 마커를 생성하고 주차장 마커 배열에 추가하는 함수입니다
function createCarparkMarkers() {
for (var i = 0; i < carparkPositions.length; i++) {
    
    var imageSize = new kakao.maps.Size(22, 26),
        imageOptions = {   
            spriteOrigin: new kakao.maps.Point(10, 72),    
            spriteSize: new kakao.maps.Size(36, 98)  
        };       
 
    // 마커이미지와 마커를 생성합니다
    var markerImage = createMarkerImage(markerImageSrc, imageSize, imageOptions),    
        marker = createMarker(carparkPositions[i], markerImage);  

    // 생성된 마커를 주차장 마커 배열에 추가합니다
    carparkMarkers.push(marker);        
}                
}

//주차장 마커들의 지도 표시 여부를 설정하는 함수입니다
function setCarparkMarkers(map) {        
for (var i = 0; i < carparkMarkers.length; i++) {  
    carparkMarkers[i].setMap(map);
}        
}

//카테고리를 클릭했을 때 type에 따라 카테고리의 스타일과 지도에 표시되는 마커를 변경합니다
function changeMarker(type){

var coffeeMenu = document.getElementById('coffeeMenu');
var storeMenu = document.getElementById('storeMenu');
var carparkMenu = document.getElementById('carparkMenu');

// 커피숍 카테고리가 클릭됐을 때
if (type === 'coffee') {

    // 커피숍 카테고리를 선택된 스타일로 변경하고
    coffeeMenu.className = 'menu_selected';
    
    // 편의점과 주차장 카테고리는 선택되지 않은 스타일로 바꿉니다
    storeMenu.className = '';
    carparkMenu.className = '';
    
    // 커피숍 마커들만 지도에 표시하도록 설정합니다
    setCoffeeMarkers(map);
    setStoreMarkers(null);
    setCarparkMarkers(null);
    
} else if (type === 'store') { // 편의점 카테고리가 클릭됐을 때

    // 편의점 카테고리를 선택된 스타일로 변경하고
    coffeeMenu.className = '';
    storeMenu.className = 'menu_selected';
    carparkMenu.className = '';
    
    // 편의점 마커들만 지도에 표시하도록 설정합니다
    setCoffeeMarkers(null);
    setStoreMarkers(map);
    setCarparkMarkers(null);
    
} else if (type === 'carpark') { // 주차장 카테고리가 클릭됐을 때
 
    // 주차장 카테고리를 선택된 스타일로 변경하고
    coffeeMenu.className = '';
    storeMenu.className = '';
    carparkMenu.className = 'menu_selected';
    
    // 주차장 마커들만 지도에 표시하도록 설정합니다
    setCoffeeMarkers(null);
    setStoreMarkers(null);
    setCarparkMarkers(map);  
}    
} 
	</script>
        <div id="hotelInfo">
            <div class="hotelDetailInfo">
                <ul class="detail-info-list">
                    <li>
                        <span class="title">주소</span>
                        <span class="txt">100, Noyeon-ro  Korea</span>
                    </li>
                    <li>
                        <span class="title">전화</span>
                        <span class="txt">82-2-2230-0700</span>
                        <span class="title">팩스</span>
                        <span class="txt">82-2-2230-0725</span>
                    </li>
                    <li>
                        <span class="title">호텔 소개</span>
                        <span class="txt">제주시 중심에 자리한 신라스테이 제주의 경우 Nuwemaru Street에서 아주 가까우며 걸어서 11분 거리에는 제주한라병원 등이 있습니다.  
                        이 4성급 호텔에서 함덕 해수욕장까지는 19.7km 떨어져 있으며, 6km 거리에는 동문시장도 있습니다.</span></li>
                    <li>
                        <span class="title">객실</span>
                        <span class="txt">에어컨이 설치된 301개의 객실에는 냉장고 및 평면 TV도 갖추어져 있어 편하게 머무실 수 있습니다. 
                        필로우탑 침대에는 오리/거위털 이불 및 고급 침구 등이 갖추어져 있습니다. 무료 유선 및 무선 인터넷이 지원되며 디지털 프로그램도 시청하실 수 있습니다. 
                        샤워기가 달린 욕조 시설을 갖춘 전용 욕실에는 전신 욕조 및 고급 세면용품도 마련되어 있습니다.</span></li>
                    <li>
                        <span class="title">편의시설</span>
                        <span class="txt">루프탑 테라스 전망을 감상하고 무료 무선 인터넷 및 콘시어지 서비스 등의 편의 시설/서비스를 이용하실 수 있습니다.</span>
                    </li>
                    <li >
                        <span class="title">유의사항</span>
                        <span>
                            <ul> 
                                <li class="txt">뷔페 아침 식사 요금: 성인 KRW 23000, 어린이 KRW 15000(대략적인 금액)</li>
                            </ul>
                        </span>
                    </li>
                </ul>
            </div>
        </div>
        <div id="review">
            <div class="reviewHotelScore">
                <div class="scoreWrap">
                    <h3> 만족해요 </h3>
                    <div class="score start_40"></div>
                    <div class="num">8.6</div>
                </div>
            </div>
            <form class="reviewInputWrap" action="#">
                <div class="userInfo">
                    <div class="user"> 사용자 </div>
                    <div class="score start_40"></div>
                </div>
                <div class="reviewInput">
                    <input type="text" name="reviewInput" value="리뷰를 입력해주세요"/>
                </div>
                <div class="reviewButtonWrap">
                    <input type="submit" class="reviewButton" value="리뷰 작성"/>
                </div>
            </form>
            <div class="reviews">
                <ul>
                    <li>
                        <div class="user">사용자</div>
                        <div class="score start_40"></div>
                        <div class="orderProduct">디럭스 더블 객식 이용</div>
                        <div class="result">
                            근처에 약속이 있었어서 호텔 찾다가 아무래도 신라스테이가 제일 괜찮은 것 같아서 예약했어용 신라스테이 삼성도 같이 봤었는데 서초가 가격이 더 저렴하더라고요👍 위치가 양재역이랑 강남역 사이라 지하철로도 이동할 수 있어서 접근성도 좋고 인근에도 뭐가 많아서 좋았네용 객실도 깨끗하고 직원분들도 친절하셨어요! 감사합니당 혹시 다음에도 근처에서 일정 있으면 예약할게요☺️
                        </div>
                    </li>
                </ul>
            </div>
        </div>
            

    </div>
    
</body>
</html>