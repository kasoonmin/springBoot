<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
	isELIgnored="false"
%>

<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%
	request.setCharacterEncoding("UTF-8");
%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html lang="ko">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
        <meta name="description" content="" />
        <meta name="author" content="" />
       
        <title>메인</title>
        
       <!-- <link type="text/css" rel="stylesheet" href="css/bootstrap.css"/>
        <script src="js/bootstrap.js"></script>  --> 
        
        
        

    </head>
    <body>
    

       <div style="width: 100%; margin: auto;">
       
        <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
            <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
              <div class="carousel-item active" style="width: 100%; height: 500px;">
                <img src="/img/mainslider1.jpg" class="d-block w-100" alt="...">
               <!-- <div class="carousel-caption d-none d-md-block">
                  <h5>First slide label</h5>
                  <p>Some representative placeholder content for the first slide.</p>
                </div> -->
              </div>
              <div class="carousel-item">
                <img src="/img/mainslider2.jpg" width="100%" height="500px" class="d-block w-100" alt="...">
               <!-- <div class="carousel-caption d-none d-md-block">
                  <h5>Second slide label</h5>
                  <p>Some representative placeholder content for the second slide.</p>
                </div> -->
              </div>
              <div class="carousel-item">
                <img src="/img/mainslider3.jpg" width="100%" height="500px" class="d-block w-100" alt="...">
               <!-- <div class="carousel-caption d-none d-md-block">
                  <h5>Third slide label</h5>
                  <p>Some representative placeholder content for the third slide.</p>
                </div> -->
              </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
            </button>
          </div>
    <br>
    <br>
    
        <div class="container marketing" style="width: 1200px; margin: auto;">

           								 <!-- 5개 대표 지역 -->
            <div style="display: flex;">
                <div class="col-lg-4">
                   <a href="#"><img src="/img/seoul.JPG" width="140" height="140" role="img" style="border-radius: 90px;"></a>
    
                  </div><!-- /.col-lg-4 -->
                <div class="col-lg-4">
                    <a href="#"><img src="/img/jeju.JPG" width="140" height="140" role="img" style="border-radius: 90px;"></a>

              </div><!-- /.col-lg-4 -->
              <div class="col-lg-4">
                <a href="#"><img src="/img/busan.JPG" width="140" height="140" role="img" style="border-radius: 90px;"></a>

              </div><!-- /.col-lg-4 -->
              <div class="col-lg-4">
                <a href="#"><img src="/img/jeonju1.JPG" width="140" height="140" role="img" style="border-radius: 90px;"></a>

              </div><!-- /.col-lg-4 -->
              <div class="col-lg-4">
                <a href="#"><img src="/img/deajeon.JPG" width="140" height="140" role="img" style="border-radius: 90px;"></a>

              </div><!-- /.col-lg-4 -->
            </div><!-- /.row -->
        </div>

            <div style="width:100%; background-color: azure;">
            <div class="row gx-4 gx-lg-5 align-items-center my-5" style="width: 1200px; margin: auto; ">
                <div class="col-lg-5" style="width: 400px; height: 400px;">
                    <h1 class="font-weight-light" >패키지 투어 핫딜!</h1> <br> <br>
                    <h4>맛집 탐방은 물론
                    <br>
                    국내 핫플레이스에서의 <br>
                    특별한 모먼트까지 
                    담은 여행을 만나보세요!</h4>
                    <br>
                    <a class="btn btn-outline-dark" href="#!">패키지 투어 보러가기</a>
                </div>
                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="/img/jeju_package1.JPG"  alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name-->
                                <h6 class="fw-bolder">3박 4일 제주 패키지 여행</h6>
                                <!-- Product price-->
                                300,000 원
                            </div>
                        </div>
                        <!-- Product actions-->
                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">보러가기</a></div>
                        </div>
                    </div>
                </div>

                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="/img/gangwon_package1.JPG"  alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name-->
                                <h6 class="fw-bolder">2박 3일 강원 패키지 여행</h6>
                                <!-- Product price-->
                                120,000 원
                            </div>
                        </div>
                        <!-- Product actions-->
                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">보러가기</a></div>
                        </div>
                    </div>
                </div>

                <div class="col mb-5">
                    <div class="card h-100">
                        <!-- Product image-->
                        <img class="card-img-top" src="/img/busan_package1.JPG"  alt="..." />
                        <!-- Product details-->
                        <div class="card-body p-4">
                            <div class="text-center">
                                <!-- Product name-->
                                <h6 class="fw-bolder">2박 3일 부산 패키지 여행</h6>
                                <!-- Product price-->
                                200,000 원
                            </div>
                        </div>
                        <!-- Product actions-->
                        <div class="card-footer p-4 pt-0 border-top-0 bg-transparent">
                            <div class="text-center"><a class="btn btn-outline-dark mt-auto" href="#">보러가기</a></div>
                        </div>
                    </div>
                </div>
                
                <!--<div class="col-lg-7"><img class="img-fluid rounded mb-4 mb-lg-0" src="https://dummyimage.com/900x400/dee2e6/6c757d.jpg" alt="..."></div> -->
            
            </div>

            </div>

            <!--인기글-->

            <div class="row gx-4 gx-lg-5" style="text-align: center; width: 1200px; margin: auto;">
                
                <h4>이번주의 인기글</h4>
                <div class="col-md-4 mb-5">
                    <div class="card h-100">
                        <div class="card-body">
                            <h6 class="fw-bolder">인기글 title연결2</h6>
                            <img src="/img/hotboard1.JPG" alt="" width="300px" height="200px">
                        </div>
                        <div class="card-footer"><a class="btn btn-outline-dark" href="#!">보러가기</a></div>
                    </div>
                </div>
                <div class="col-md-4 mb-5">
                    <div class="card h-100">
                        <div class="card-body">
                            <h6 class="fw-bolder">인기글 title연결2</h6>
                            <img src="/img/hotboard2.JPG" alt="" width="300px" height="200px">
                        </div>
                        <div class="card-footer"><a class="btn btn-outline-dark" href="#!">보러가기</a></div>
                    </div>
                </div>
                <div class="col-md-4 mb-5">
                    <div class="card h-100">
                        <div class="card-body">
                            <h6 class="fw-bolder">인기글 title연결2</h6>
                            <img src="/img/hotboard3.JPG" alt="" width="300px" height="200px">
                        </div>
                        <div class="card-footer"><a class="btn btn-outline-dark" href="#!">보러가기</a></div>
                    </div>
                </div>
            </div>
    </div>
    </body>
</html>
