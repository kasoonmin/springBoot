<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>body</title>
	
</head>
<body>
<div>
<div class="backgroundImg" > 
</div>
<div class="searchBox" style="width:1300px; margin:auto;"> 
    <div class="iconBar">
        <ul>
            <li>
                <a href="#">
                    <p class="iconHotel">
                        <img src="/img/hotel.png"/>
                    </p>
                    <p class="iconFont">숙소</p>
                </a>
            </li>
            <li>
                <a href="#">
                    <p class="iconTourism">
                        <img src="/img/tourism.png"/>
                    </p>
                    <p class="iconFont">투어&티켓</p>
                </a>
            </li>
            <li>
                <a href="#">
                    <p class="iconAirpalne">
                        <img src="/img/airplane.png"/>
                    </p>
                    <p class="iconFont">항공</p>   
                </a>
            </li>
            <li>
                <a href="#">
                    <p class="iconFestival">
                        <img src="/img/festival.png"/>
                    </p>
                </a>
                <p class="iconFont">즐길거리</p>
            </li>
            <li> <a href="#">
                <p class="iconCommunity">
                    <img src="/img/community.png"/>
                </p>
                <p class="iconFont">커뮤니티</p>
            </a>
            </li>
            <li>
                <a href="#">
                    <p class="iconEvent">
                        <img src="/img/event.png"/>
                    </p>
                    <p class="iconFont">이벤트</p>
                </a>
                
            </li>
        </ul>
    </div>
    <form id="search" action="#">
        <div class="destination">
            <p>목적지</p>
            <input type="text" name="des" id="searchDes" placeholder="도시명 또는 호텔명"/>
        </div>
        <div class="day">
            <p>여행일정</p>
            <input type="date" placeholder="날짜"/>
        </div>
        <div class="peopleNum">
            <p>여행인원</p>
            <input type="text" value="객실 1, 성인2"/>
        </div>
        <div class="searchFormButton">
            <input type="submit" value="검색">
        </div>
    </form>
</div>
</div> 

<div class="product_container" style="width:1300px; margin:auto;">

<div class="container px-4 px-lg-5 mt-5">
<div class="row gx-4 gx-lg-5 row-cols-2 row-cols-md-3 row-cols-xl-4 justify-content-center">
    <div class="col mb-5">
        <div class="card h-100">
            <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="/img/airplane.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="/img/hotel.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="/img/community.png" class="d-block w-100" alt="...">
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
              </div>
              <div class="text-center">
                <!-- Product name-->
                <h5 class="fw-bolder">Special Item</h5>
                <!-- Product reviews-->
                <div class="d-flex justify-content-center small text-warning mb-2">
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                </div>
                <!-- Product price-->
                <span class="text-muted text-decoration-line-through">$20.00</span>
                $18.00
            </div>
            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
             </div>
        </div>
    </div>
    <div class="col mb-5">
        <div class="card h-100">
            <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="/img/airplane.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="/img/hotel.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="/img/community.png" class="d-block w-100" alt="...">
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
              </div>
              <div class="text-center">
                <!-- Product name-->
                <h5 class="fw-bolder">Special Item</h5>
                <!-- Product reviews-->
                <div class="d-flex justify-content-center small text-warning mb-2">
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                </div>
                <!-- Product price-->
                <span class="text-muted text-decoration-line-through">$20.00</span>
                $18.00
            </div>
            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
             </div>
        </div>
    </div>
    <div class="col mb-5">
        <div class="card h-100">
            <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="/img/airplane.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="/img/hotel.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="/img/community.png" class="d-block w-100" alt="...">
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
              </div>
              <div class="text-center">
                <!-- Product name-->
                <h5 class="fw-bolder">Special Item</h5>
                <!-- Product reviews-->
                <div class="d-flex justify-content-center small text-warning mb-2">
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                </div>
                <!-- Product price-->
                <span class="text-muted text-decoration-line-through">$20.00</span>
                $18.00
            </div>
            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
             </div>
        </div>
    </div>
    <div class="col mb-5">
        <div class="card h-100">
            <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="/img/airplane.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="/img/hotel.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="/img/community.png" class="d-block w-100" alt="...">
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
              </div>
              <div class="text-center">
                <!-- Product name-->
                <h5 class="fw-bolder">Special Item</h5>
                <!-- Product reviews-->
                <div class="d-flex justify-content-center small text-warning mb-2">
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                </div>
                <!-- Product price-->
                <span class="text-muted text-decoration-line-through">$20.00</span>
                $18.00
            </div>
            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
             </div>
        </div>
    </div>
    <div class="col mb-5">
        <div class="card h-100">
            <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="/img/airplane.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="/img/hotel.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="/img/community.png" class="d-block w-100" alt="...">
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
              </div>
              <div class="text-center">
                <!-- Product name-->
                <h5 class="fw-bolder">Special Item</h5>
                <!-- Product reviews-->
                <div class="d-flex justify-content-center small text-warning mb-2">
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                </div>
                <!-- Product price-->
                <span class="text-muted text-decoration-line-through">$20.00</span>
                $18.00
            </div>
            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
             </div>
        </div>
    </div>
    <div class="col mb-5">
        <div class="card h-100">
            <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="/img/airplane.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="/img/hotel.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="/img/community.png" class="d-block w-100" alt="...">
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
              </div>
              <div class="text-center">
                <!-- Product name-->
                <h5 class="fw-bolder">Special Item</h5>
                <!-- Product reviews-->
                <div class="d-flex justify-content-center small text-warning mb-2">
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                </div>
                <!-- Product price-->
                <span class="text-muted text-decoration-line-through">$20.00</span>
                $18.00
            </div>
            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
             </div>
        </div>
    </div>
    <div class="col mb-5">
        <div class="card h-100">
            <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="/img/airplane.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="/img/hotel.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="/img/community.png" class="d-block w-100" alt="...">
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
              </div>
              <div class="text-center">
                <!-- Product name-->
                <h5 class="fw-bolder">Special Item</h5>
                <!-- Product reviews-->
                <div class="d-flex justify-content-center small text-warning mb-2">
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                </div>
                <!-- Product price-->
                <span class="text-muted text-decoration-line-through">$20.00</span>
                $18.00
            </div>
            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
             </div>
        </div>
    </div>
    <div class="col mb-5">
        <div class="card h-100">
            <div id="carouselExampleFade" class="carousel slide carousel-fade" data-bs-ride="carousel">
                <div class="carousel-inner">
                  <div class="carousel-item active">
                    <img src="/img/airplane.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="/img/hotel.png" class="d-block w-100" alt="...">
                  </div>
                  <div class="carousel-item">
                    <img src="/img/community.png" class="d-block w-100" alt="...">
                  </div>
                </div>
                <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="prev">
                  <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Previous</span>
                </button>
                <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade" data-bs-slide="next">
                  <span class="carousel-control-next-icon" aria-hidden="true"></span>
                  <span class="visually-hidden">Next</span>
                </button>
              </div>
              <div class="text-center">
                <!-- Product name-->
                <h5 class="fw-bolder">Special Item</h5>
                <!-- Product reviews-->
                <div class="d-flex justify-content-center small text-warning mb-2">
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                    <div class="bi-star-fill"></div>
                </div>
                <!-- Product price-->
                <span class="text-muted text-decoration-line-through">$20.00</span>
                $18.00
            </div>
            <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">Add to cart</a></div>
             </div>
        </div>
    </div>
</div>
</div>
    
</div>
<div class="area_info">
<div class="container px-lg-5">
<div class="area_cs_info">
    <div class="cs_info">
    <ul>
        <li><h1 class="area_cs_number"><img src="img/csicon1.png"  alt=""><br>상담전화 <br>1999-1999</h1></li>
        <li><h2 class="area_cs_time">평  일  09:00 ~ 19:00 <br>주말 및 공휴일 휴무</h2></li>
    </ul>
    </div>
    <div class="mypage_info">
        <ul>
                <li><button class="mypage_info_btn">예약안내</button> </li>
                <li><button class="mypage_info_btn">결제방법</button> </li>
                <li><button class="mypage_info_btn">포인트</button> </li>
                <li><button class="mypage_info_btn">마이페이지</button> </li>
                <li><button class="mypage_info_btn">공지사항</button> </li>
                <li><button class="mypage_info_btn">1:1문의</button> </li>
     
        </ul>
    </div>


</div>

</div>
</div>
</div>

</body>
</html>