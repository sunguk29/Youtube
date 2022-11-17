<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport"
          content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!--      드롭다운 안되서 추가 추가하니 됨 -->
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
            integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
            integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
            crossorigin="anonymous"></script>


    <link rel="shortcut icon" href="/favicon.ico" type="image/x-icon">
    <link rel="icon" href="/favicon.ico" type="image/x-icon">


    <!-- Bootstrap CSS -->
    <link rel="stylesheet"
          href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css"
          integrity="sha384-xOolHFLEh07PJGoPkLv1IbcEPTNtaed2xpHsD9ESMhqIYd0nLMwNLD69Npy4HI+N"
          crossorigin="anonymous">

    <script src="https://kit.fontawesome.com/22437c0385.js" crossorigin="anonymous"></script>

    <!-- Optional JavaScript; choose one of the two! -->

    <!-- Option 1: jQuery and Bootstrap Bundle (includes Popper) -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js"
            integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj"
            crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.0.js"
            integrity="sha256-H+K7U5CnXl1h5ywQfKtSj8PCmoN9aaq30gDh27Xc0jk="
            crossorigin="anonymous"></script>
    <!--      <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"-->
    <!--              integrity="sha384-Fy6S3B9q64WdZWQUiU+q4/2Lc9npb8tCaSX9FK7E8HnRr0Jz8D6OP9dO5Vg3Q9ct"-->
    <!--              crossorigin="anonymous"></script>-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-fQybjgWLrvvRgtW6bFlB7jaZrFsaBXjsOMm/tB9LTS58ONXgqbR9W8oWht/amnpF"
            crossorigin="anonymous"></script>
    <!-- Option 2: Separate Popper and Bootstrap JS -->
    <!--
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js" integrity="sha384-9/reFTGAW83EW2RDu2S0VKaIzap3H66lZH81PoYlFhbGU+6BZp6G7niu735Sk7lN" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.min.js" integrity="sha384-+sLIOodYLS7CIrQpBjl+C7nPvqq+FbNUBDunl/OZv93DB7Ln/533i8e/mZXLi/P+" crossorigin="anonymous"></script>
    -->


</head>

<style>
    .top_layout {
        display: flex;
        align-items: center;
        justify-content: center;
        background-color: white;
        z-index: 5;
    }

    .input-group {
        position: relative;
        width: 572px;
        max-width: 572px;
        min-width: 572px;
        height: 40px;
        z-index: 5;
        padding-top: 8px;
    }

    .header_layout {
        position: fixed;
        width: 100%;
        padding: 0 16px;
        z-index: 5;
        height: 56px;
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: space-between;
        background-color: white;
    }
    /* 사이드바 */

    .left-side-bar {
        position: fixed; top: 56px; left: 0; z-index: 5; width: 240px; min-height: 100vh; height: 100%;

    }

    .container_bar {
        width: 100%;
        margin-top: 10px;
        border-bottom: 1px solid #d3d3d3;
        font-size: 12px;
    }

    .left-side-bar-1 {
        display: flex;
    }

    .hoverTest {
        cursor: pointer;
        width: 240px;
        height: 40px;
        display: flex;
    }

    .left_icon {
        margin-left: 20px;
        width: 24px;
        height: 24px;
        margin-top: auto;
        margin-bottom: auto;
    }

    .left_component {
        width: 140px;
        height: 24px;
        margin-left: 10px;
        font-size: 14px;
        font-weight: 500;
        margin-top: auto;
        margin-bottom: auto
    }

    .hoverTest:hover {
        background-color: #d3d3d3;
    }

    .badge badge-primary {
        background-color: white;
    }

    .leftSideBarFooter{
        margin-top:10px;
        margin-left: 20px;
    }

    .leftSideBarFooter a {
        font-size: 12px;
        color: black;
    }

    .leftSideBarFooterInformation {
        margin-left: 20px;
        font-size: 10px;
        color: grey;
    }


    .scrolls {
        height: 800px;
        width: 100%;
        overflow-y: scroll;
        overflow-x: hidden;
    }

    .one {
        background-color: white;
        width: 100%;
        margin: 0 auto;
        /* 스크롤바가 absolute로 들어가기 때문에
           여기다가 relative를 준다 */
        position: relative;

    }

    .scrolls::-webkit-scrollbar {
        /* 스크롤바 너비 조절하는 부분 */
        width: 10px;
    }

    .scrolls::-webkit-scrollbar,
    .scrolls::-webkit-scrollbar-thumb {
        overflow: visible;
        border-radius: 4px;
        background: rgba(0, 0, 0, .2);
    }

    .cover-bar {
        width: 10px;
        height: 100%;
        position: absolute;
        top: 0;
        right: 0;
        -webkit-transition: all .1s;
        opacity: 1;
        /* 배경색을 상자색과 똑같이 맞춰준다 */
        background-color: white;
    }

    /* 중요한 부분 */
    .one:hover .cover-bar {
        opacity: 0;
        -webkit-transition: all .1s;
    }

    .left-side-bar-view {
        display: flex;
    }

    .badge-primary {
        border: 1px solid #6610f2;
        margin-top: auto;
        margin-bottom: auto;
        background-color: blue;
        color: blue;
        font-size: 2px;
    }


    .left-side-bar-sub{
        margin-left: 20px;
    }

    .top_container {
        position: relative;
        display: flex;
        margin-top: auto;
        margin-bottom: auto;

    }

/*    .top_container > img {
        height: 100px;
        width: 100px;
        border-radius: 75px;
        margin-top:auto;
        margin-bottom:auto;
    }*/

    top_container > .media-body {
        top: 10px;
        left: 10px;
    }

    .top_container > .media-body > .mt-0 {
        font-weight: 400;
    }

    .media-body {
        margin-left: 10px;
    }

    .videoTimeBackGround {
        position: absolute;
        top: 166px;
        left: 288px;
        background-color: black;
        width: 40px;
        height: 14px;
        z-index: 2;
        border: 1px solid #000;


    }




</style>
<body style="overflow: auto; overflow-x: hidden;">
<header style="position: fixed; top: 0; left: 0; width: 100%; z-index: 4;">
    <div class="container-fluid header_layout">
        <!-- rogo -->
        <div>

        </div>
        <div class="row top_layout">
            <div class="input-group mb-3 ">
                <input type="text" class="form-control" placeholder="검색">
                <span class="btn input-group-text"><i class="fa-solid fa-magnifying-glass"></i></span>
            </div>

        </div>
        <!-- account and alarm -->
        <div>

        </div>

    </div>
</header>
    <div class="left-side-bar">

        <div class="one">
            <div class="scrolls">
                <div class="container_bar">
                    <div class="left-side-bar-1">
                        <div class="hoverTest" style="background-color: #a9a9a9;">
                            <div class="left_icon"><i class="fa-solid fa-house"></i></div>
                            <div class="left_component">홈</div>
                        </div>
                    </div>
                    <div class="hoverTest">
                        <div class="left_icon"><i class="fa-solid fa-house"></i></div>
                        <div class="left_component">탐색</div>
                    </div>
                    <div class="hoverTest">
                        <div class="left_icon"><i class="fa-solid fa-house"></i></div>
                        <div class="left_component">구독</div>
                    </div>
                </div>

                <div class="container_bar">
                    <div class="hoverTest">
                        <div class="left_icon"><i class="fa-solid fa-house"></i></div>
                        <div class="left_component">보관함</div>
                    </div>
                    <div class="hoverTest">
                        <div class="left_icon"><i class="fa-solid fa-house"></i></div>
                        <div class="left_component">시청 기록</div>
                    </div>
                    <div class="hoverTest">
                        <div class="left_icon"><i class="fa-solid fa-house"></i></div>
                        <div class="left_component">내 동영상</div>
                    </div>
                    <div class="hoverTest">
                        <div class="left_icon"><i class="fa-solid fa-house"></i></div>
                        <div class="left_component">나중에 볼 동영상</div>
                    </div>
                    <div class="hoverTest">
                        <div class="left_icon"><i class="fa-solid fa-house"></i></div>
                        <div class="left_component">좋아요 표시한 동영상</div>
                    </div>
                    <div class="hoverTest">
                        <div class="left_icon"><i class="fa-solid fa-house"></i></div>
                        <div class="left_component">노래</div>
                    </div>
                </div>

                <div class="container_bar">
                    <div class="left-side-bar-sub">구독</div>
                    <div class="hoverTest">
                        <div class="left_icon"><i class="fa-solid fa-house"></i></div>
                        <div class="left_component">유튜버1</div>
                        <a class="badge badge-primary sub">·</a>
                    </div>
                    <div class="hoverTest">
                        <div class="left_icon"><i class="fa-solid fa-house"></i></div>
                        <div class="left_component">유튜버2</div>
                        <a class="badge badge-primary sub">·</a>
                    </div>
                    <div class="hoverTest">
                        <div class="left_icon"><i class="fa-solid fa-house"></i></div>
                        <div class="left_component">유튜버3</div>
                        <a class="badge badge-primary sub">·</a>
                    </div>
                    <div class="hoverTest">
                        <div class="left_icon"><i class="fa-solid fa-house"></i></div>
                        <div class="left_component">유튜버4</div>
                        <a class="badge badge-primary sub">·</a>
                    </div>
                    <div class="hoverTest">
                        <div class="left_icon"><i class="fa-solid fa-house"></i></div>
                        <div class="left_component">유튜버5</div>
                        <a class="badge badge-primary sub">·</a>
                    </div>
                    <div class="hoverTest">
                        <div class="left-side-bar-view">
                            <div class="left_icon"><i class="fa-solid fa-house"></i></div>
                            <div class="left_component">20개 더보기</div> <!--드랍다운이면서 페이징 원리인거같은데 일단은 패스-->

                        </div>
                    </div>

                </div>
                <div class="container_bar">
                    <div class="left-side-bar-sub">YOUTUBE 더보기</div>
                    <div class="hoverTest">
                        <div class="left_icon"><i class="fa-solid fa-house"></i></div>
                        <div class="left_component">YouTube Premium</div>
                    </div>
                    <div class="hoverTest">
                        <div class="left_icon"><i class="fa-solid fa-house"></i></div>
                        <div class="left_component">영화</div>
                    </div>
                    <div class="hoverTest">
                        <div class="left_icon"><i class="fa-solid fa-house"></i></div>
                        <div class="left_component">게임</div>
                    </div>
                    <div class="hoverTest">
                        <div class="left_icon"><i class="fa-solid fa-house"></i></div>
                        <div class="left_component">실시간</div>
                    </div>
                    <div class="hoverTest">
                        <div class="left_icon"><i class="fa-solid fa-house"></i></div>
                        <div class="left_component">학슴</div>
                    </div>
                    <div class="hoverTest">
                        <div class="left_icon"><i class="fa-solid fa-house"></i></div>
                        <div class="left_component">스포츠</div>
                    </div>
                </div>

                <div class="container_bar">

                    <div class="hoverTest">
                        <div class="left_icon"><i class="fa-solid fa-house"></i></div>
                        <div class="left_component">설정</div>
                    </div>
                    <div class="hoverTest">
                        <div class="left_icon"><i class="fa-solid fa-house"></i></div>
                        <div class="left_component">신고 기록</div>
                    </div>
                    <div class="hoverTest">
                        <div class="left_icon"><i class="fa-solid fa-house"></i></div>
                        <div class="left_component">고객 센터</div>
                    </div>
                    <div class="hoverTest">
                        <div class="left_icon"><i class="fa-solid fa-house"></i></div>
                        <div class="left_component">의견 보내기</div>
                    </div>
                </div>
                <div>
                    <div class="leftSideBarFooter">
                        <a href="#">정보</a>
                        <a href="#">보도자료</a>
                        <a href="#">저작권</a>
                        <br>
                        <a href="#">문의하기</a>
                        <a href="#">크리에이터</a>
                        <a href="#">광고</a>
                        <br>
                        <a href="#">개발자</a>
                        <br/>
                        <br/>
                    </div>
                </div>
                <div>
                    <div class="leftSideBarFooter">
                        <a href="#">약관</a>
                        <a href="#">개인정보처리방침</a>
                        <br/>
                        <a href="#">정책 및 안전</a>
                        <br>
                        <a href="#">YouTube 작동의 원리</a>
                        <br/>
                        <a href="#">새로운 기능 테스트하기</a>
                        <br/>
                        <br/>
                    </div>
                </div>
                <div class="leftSideBarFooterInformation">
                    ⓒ 2022 Google LLC
                    <br>
                    CEO: 선다 피차이
                    <br>
                    주소: 1600 Amphitheatre Parkway,
                    <br>
                    Mountain View, CA 94043, USA
                    <br>
                    전화 080-822-1450(무료)
                </div>
            </div>
            <div class="cover-bar"></div>
        </div>

    </div>
    <div style="width: 100%; height: 100%;  display: inline-block; position: relative; margin-top:20px;">
        <div style="width: 1000px; height: 1000px;  margin-top:20px; margin-left: 450px; position: relative; ">
            <div style="  z-index: 5; width: 100%; height: 30px;  margin-top: 50px;  border-bottom: 1px solid #e2e6ea;">
                <i class="fa-regular fa-bell" role="button"></i>
                 <label>필터</label>
            </div>


<%--            <div style="width: 100%; height: 136px; display: flex; border-bottom: 1px solid #e2e6ea; border-top: 1px solid #e2e6ea">--%>
<%--                <div class="top_container">--%>
<%--                    <div style="width: 300px; height: 136px; display: flex;">--%>
<%--                        <img class="mr-3" src="../../resources/css//img/capture.png" alt="Generic placeholder image" style="width: 100px; height: 100px; border-radius: 75px; margin-top: auto; margin-bottom: auto; margin-left: 100px;">--%>
<%--                    </div>--%>

<%--                    <div style="display: flex; width: 450px;">--%>
<%--                    <div class="media-body" style="margin-top: auto; margin-bottom: auto;">--%>
<%--                        <div class="mt-0">김조우식의 벗방</div>--%>
<%--                        <div>--%>
<%--                        <span>구독자 56.5만명 ·</span>--%>
<%--                        <span>동영상 180개</span>--%>
<%--                        </div>--%>
<%--                        <div>제 채널은 이것저것 많이하고 이러한 유튜브입니다.</div>--%>
<%--                    </div>--%>
<%--                    </div>--%>
<%--                    <div style="display: flex">--%>
<%--                    <div class="subcribeAlarm" style="margin-top: auto; margin-bottom: auto;">--%>
<%--                        <button class="subscribe-state">구독중</button>&ensp;--%>
<%--                        <i class="fa-regular fa-bell" role="button"></i>--%>
<%--                    </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>

            <form action="search.jsp" method="get">

            <div style="margin-top: 10px;">
<%--                <h6>김조우식의 벗방의 최신 동영상</h6>--%>
<%--                <div>--%>
<%--                    <div style="width: 100%; height: 136px; display: flex;">--%>
<%--                        <div class="top_container">--%>
<%--                                <img class="mr-3" src="../../resources/css//img/dog.png" alt="dog image" style="width: 300px; height: 134px;">--%>
<%--                            <div style="display: flex; width: 450px;">--%>
<%--                                <div class="media-body" style="margin-top: auto; margin-bottom: auto;">--%>
<%--                                    <div class="mt-0">김조우식의과 홍게이의 야릇한 금요일 밤</div>--%>
<%--                                    <div>조회수 10억회·1달전</div>--%>
<%--                                    <div>--%>
<%--                                    <img class="mr-3" src="../../resources/css//img/capture.png" alt="Generic placeholder image" style="width: 20px; height: 20px; border-radius: 75px; margin-top: auto; margin-bottom: auto; ">--%>
<%--                                    <span style="font-size: 12px;">김조우식의 벗방</span>--%>
<%--                                    </div>--%>
<%--                                    <div>--%>
<%--                                        <span style="font-size: 12px;">야릇한 금요일 저녁 외로운 사람은 김조우식한테 문의하세요</span>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--                <div style="margin-top:10px;">--%>
<%--                    <div style="width: 100%; height: 136px; display: flex;">--%>
<%--                        <div class="top_container">--%>
<%--                            <img class="mr-3" src="../../resources/css//img/thumbnail.png" alt="dog image" style="width: 300px; height: 134px;">--%>
<%--                            <div style="display: flex; width: 450px;">--%>
<%--                                <div class="media-body" style="margin-top: auto; margin-bottom: auto;">--%>
<%--                                    <div class="mt-0">특별초대게스트: 오랑이</div>--%>
<%--                                    <div>조회수 10억회·1달전</div>--%>
<%--                                    <div>--%>
<%--                                        <img class="mr-3" src="../../resources/css//img/capture.png" alt="Generic placeholder image" style="width: 20px; height: 20px; border-radius: 75px; margin-top: auto; margin-bottom: auto; ">--%>
<%--                                        <span style="font-size: 12px;">김조우식의 벗방</span>--%>
<%--                                    </div>--%>
<%--                                    <div>--%>
<%--                                        <span style="font-size: 12px;">야릇한 금요일 저녁 외로운 사람은 김조우식한테 문의하세요</span>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>

<%--                <div style="width: 100%; height: 50px; display: flex; border-bottom: 1px solid #000;">--%>
<%--                    <span style="margin: auto;">+8개 더보기</span>--%>
<%--                </div>--%>
                <div style=" border-bottom: 1px solid #e2e6ea;">
                    <c:forEach items="${videoList}" var="item" begin="0" end="3" varStatus="status">
                    <div style="width: 100%; height: 186px; display: flex; margin-bottom: 10px; margin-top: 10px;">
                        <div class="top_container">
                            <div style="width: 335px; height: 184px; margin-right: 16px;">
                                <img class="mr-3" src="${item.thumbnail_mfile.url}" alt="dog image" style="width: 100%; height: 100%; border-radius: 10px;">
                                <div class="videoTimeBackGround">
                                    <span class="videoTime" style="position: absolute;  color: white; font-size: 11px; margin-left: 7px; top: -1px; left: -1px;  ">${item.time}</span>
                                    <span class="videoHover" style="font-size:10px;"></span>
                                </div>
                            </div>
                            <div style="display: flex; width: 450px; height: 100%; margin-bottom: 10px;">
                                <div class="media-body" style="margin-top: auto; margin-bottom: auto;">
                                    <div class="mt-0" style="margin-bottom: 3px; font-weight: 400;">${item.title}</div>
                                    <div style="font-size: 11px;">조회수 10억회·1달전</div>
                                    <div style="margin-top: 5px; margin-bottom: 5px;">
                                        <img class="mr-3" src="/resources/css/img/human.jpg" alt="Generic placeholder image" style="width: 20px; height: 20px; border-radius: 75px; margin-top: auto; margin-bottom: auto; ">
                                        <span style="font-size: 12px;">김조우식의 벗방</span>
                                    </div>
                                    <div>
                                        <span style="font-size: 13px;">${item.description}</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    </c:forEach>
                </div>

                <div style="margin-top: 10px;">
                    <span style="font-size: 15px; margin-top: 15px; margin-bottom: 15px;">관련 동영상</span>
                </div>
    <c:forEach items="${videoList}" var="item" begin="4" varStatus="status">
        <div style="width: 100%; height: 186px; display: flex; margin-bottom: 10px; margin-top: 10px;">
            <div class="top_container">
                <div style="width: 335px; height: 184px; margin-right: 16px;">
                    <img class="mr-3" src="${item.thumbnail_mfile.url}" alt="dog image" style="width: 100%; height: 100%; border-radius: 10px;">
                    <div class="videoTimeBackGround">
                        <span class="videoTime" style="position: absolute;  color: white; font-size: 11px; margin-left: 7px; top: -1px; left: -1px; ">${item.time}</span>
                        <span class="videoHover" style="font-size:10px;"></span>
                    </div>
                </div>
                <div style="display: flex; width: 450px; height: 100%; margin-bottom: 10px;">
                    <div class="media-body" style="margin-top: auto; margin-bottom: auto;">
                        <div class="mt-0" style="margin-bottom: 3px; font-weight: 400;">${item.title}</div>
                        <div style="font-size: 11px;">조회수 10억회·1달전</div>
                        <div style="margin-top: 5px; margin-bottom: 5px;">
                            <img class="mr-3" src="/resources/css/img/human.jpg" alt="Generic placeholder image" style="width: 20px; height: 20px; border-radius: 75px; margin-top: auto; margin-bottom: auto; ">
                            <span style="font-size: 12px;">김조우식의 벗방</span>
                        </div>
                        <div>
                            <span style="font-size: 13px;">${item.description}</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </c:forEach>
            </div>
            </form>
        </div>

    </div>

<script src="https://unpkg.com/@api.video/video-uploader" defer></script>
<script>



    $(document).ready(function () {
        console.log('document ready');

    });

    const btn = document.querySelector('.input-group-text')
    const a_element = document.querySelector('.form-control')

    btn.addEventListener('click', function (event) {
        console.log(a_element.value + '를 검색했습니다')

        var searchData = {
            word: a_element.value
        }

        // location.href = "search.jsp"


        fetch("/postSearchWord", {
            method: "POST",
            headers: {
                "Content-Type": "application/json",
                "Accept": "application/json"
            },
            body: JSON.stringify(searchData),
        }).then((response) => {
            console.log("word 전송")
            location.href = "search.do"
        })

    });


</script>


</body>

</html>