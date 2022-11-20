<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
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

    <title>Youtube Modal</title>
</head>


<style>
    .btn:focus, .btn:active {
        outline: none !important;
        box-shadow: none !important;
        background-color: black;
    !important;
    }

    .col {
        overflow-y: hidden;
        overflow-x: hidden;
        position: relative;
        padding-right: 8px;
        padding-left: 8px;
    }


    /* 검색 */

    .top_layout {
        display: flex;
        align-items: center;
        justify-content: center;
        background-color: white;
        z-index: 5;
        position: relative;
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
        display: flex;
        flex-direction: row;
        align-items: center;
        justify-content: space-between;
        background-color: white;
    }

    .input-group-text {
        height: 40px;
    }


    .form-control {
        height: 40px;
    }

    /* 카테고리 */

    .category_layout {
        position: fixed;
        top: 56px;
        background-color: white;
        display: flex;
        z-index: 5;
        padding-left: 15%;
        width: 1680px;
        border: 1px solid rgba(0, 0, 0, .125);
        border-right: none;
        border-left: none;
        height: 60px;
    }

    .categoryContainner {
        margin-left: auto;
        margin-right: auto;
    }

    .categoryContainner > .list-group {
        position: relative;
        z-index: 5;
        width: 100%;
    }

    .list-group-item {
        border: none;
        z-index: 5;
    }

    li > .btn-primary {
        border: 0px solid darkgray;
        border-radius: 8px;
        background-color: #ECECEC;
        color: black;
        font-size: 12px;
        height: 32px;
    }

    .carousel slide {
        position: relative;
        left: 100px;
        top: 100px;
    }

    .left-side-bar {
        position: fixed;
        top: 56px;
        left: 0;
        z-index: 5;
        width: 240px;
        min-height: 100vh;
        height: 100%;

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

    .leftSideBarFooter {
        margin-top: 10px;
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

    .videoTime {
        position: absolute;
        top: 5px;
        left: 6px;
        z-index: 3;
        line-height: 0.5;
        font-size: 11px;
    }

    .videoTimeBackGround {
        position: absolute;
        top: 185px;
        left: 232px;
        background-color: black;
        width: 40px;
        height: 14px;
        /*z-index: 2;*/
        /*border: 1px solid #000;*/

    }

    .videoMore {
        transition: .1s ease;
        opacity: 0;
        position: absolute;
        top: 1050px;
        left: 250px;

        text-align: center;
    }

    .media-body:hover .videoMore {
        opacity: 1;
    }

    .videoMore1 {

        transition: .1s ease;
        opacity: 0;
        position: relative;
        left: 0px;
        text-align: center;

    }

    .videoMore1:hover {
        opacity: 1;
    }

    .dropdown {
        transition: .1s ease;
    }

    .video_dropdown {

        width: 25px;
    }


    .media_body_more {
        display: flex;
        width: 100%;
    }

    .card-body {
        margin: 0;
        padding-top: 10px;
    }

    .video_info {
        margin: 0;
        padding: 0;
    }


    .main_viedo2 {
        padding-left: 250px;
        margin-top: 160px;
    }

    .main_video_container {
        position: relative;
    }

    .media {
        left: -20px;
        width: 270px;
        height: 94px;
        position: relative;
        display: flex;

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

    .row-cols-5 {
        overflow: auto;
        overflow-x: hidden;
        margin-top: -20px;
        margin-bottom: 30px;

    }

    .left-side-bar-sub {
        margin-left: 20px;
    }

    /*모달*/

    .modal {
        z-index: 51;
    }

    .make_video {
        position: absolute;
        left: 1050px;
        z-index: 5;
        background: none;
        border: none;
    }


    .modal-content {
        width: 1100px;
        height: 650px;
        top: 50px;
        left: -290px;
    }

    .btn-close {
        background: none;
        border: none;
        font-size: 25px;
    }

    .modal-title {
        font-size: 20px;
        font-weight: 500;
        width: 680px;
        text-overflow: ellipsis;
        white-space: nowrap;
        overflow: hidden
    }

    .announce {
        font-size: 14px;
        margin-top: 10px;
        margin-left: auto;
        margin-right: 10px;
        width: 110px;
        height: 24px;
        background-color: #ECECEC;
        text-align: center;
        padding-top: 2px;
    }

    .modal-body {
        display: flex;
        flex-direction: column;
    }

    /*.modal_body_header {*/
    /*  display: flex;*/
    /*  width: 103%;*/
    /*  height: 80px;*/
    /*}*/

    /*.modal_fixed_contents {*/
    /*  height: 64px;*/
    /*  align-items: center;*/
    /*  text-align: center;*/
    /*}*/

    .modal_body_contents_containner {
        top: 0;
        left: 0;
        width: 99%;
        height: 450px;
        /*max-height: 100%;*/
        /*background-color: #f1b0b7;*/

        overflow-y: scroll;
        overflow-x: hidden;
        margin-left: 15px;


        position: relative;
        display: flex;
        flex-direction: row;
    }

    .modal_body_contents_containner::-webkit-scrollbar {
        width: 10px;
    }

    .modal_body_contents_containner::-webkit-scrollbar,
    .modal_body_contents_containner::-webkit-scrollbar-thumb {
        overflow: visible;
        border-radius: 4px;
        background: rgba(0, 0, 0, .2);
    }

    .information {
        height: 32px;
        width: 640px;
        display: flex;
        flex-direction: row;
        position: absolute;
    }

    .contents_left {
        width: 640px;
        height: 750px;
        margin-top: 50px;
    }

    .contents_right {
        top: 0;
        left: 0;
        width: 370px;
        height: 370px;
        margin-left: 10px;
        margin-top: 50px;
        position: sticky;
        align-self: flex-start;

        display: flex;
        flex-direction: column;


        /*left: 1000px;*/
    }


    .title {
        position: absolute;
        width: 640px;
        height: 110px;
        top: 0;
        left: 0;
        resize: none;
    }

    .count_title {
        position: absolute;
        top: 80px;
        left: 466px;
        width: 150px;
        height: 20px;
        text-align: right;
        z-index: 50;
    }

    .desc {
        position: absolute;
        margin-top: 10px;
        width: 640px;
        height: 160px;
        top: 0;
        left: 0;
        resize: none;
    }

    .count_desc {
        position: absolute;
        top: 135px;
        left: 466px;
        width: 150px;
        height: 20px;
        text-align: right;
        z-index: 50;
    }

    .img {
        height: 70px;
        align-items: center;
        text-align: center;
        margin-left: -10px;

    }

    .contents-img {
        width: 160px;
        height: 70px;
        padding-left: 15px;
    }

    .playlist_select {
        width: 260px;
        height: 48px;
        margin-top: 15px;
    }

    .playlist_select_btn:hover, .playlist_select_btn:focus, .playlist_select_btn:active {
        background-color: #00000000;
        color: black;
        box-shadow: none;
    }

    .playlist_select_btn {
        background-color: #00000000;
        color: black;
    }

    .modal_thumbnail {
        width: 165px;
        height: 70px;
        margin-left: 20px;
        margin-right: -10px;
        border: none;
    }

    .modal_thumbnail:hover {
        background: none;
    }

    .modal_video_desc {
        display: flex;
        flex-direction: column;
        width: 360px;
        margin-left: 20px;
        height: 430px;
        background-color: #f9f9f9;
    }

    .modal_video_select {
        width: 85px;
        height: 30px;
    }

    .modal_background {
        position: fixed;
        top: 0;
        left: 0;
        background-color: rgba(0, 0, 0, .2);
        width: 100%;
        height: 100%;
        z-index: 50;
        display: none;
    }

    .card-img-top {

        height: 200px;
    }

    .mt-0 {
        width: 210px;
    }

    media-body {
        width: 100%;
    }

    .loadingBox > .dim {
        position: absolute;
        left: 0;
        top: 0;
        width: 100%;
        height: 100%;
        background: rgba(0, 0, 0, .1);
    }

    .loadingBox > .circle {
        position: absolute;
        left: 50%;
        top: 50%;
        transform: translate(-50%, -50%);
        width: 40px;
        height: 40px;
        border: 10px solid #fff;
        border-top: 10px solid black;
        border-radius: 50em;
        animation-name: spinCircle;
        animation-duration: .8s;
        animation-iteration-count: infinite;
    }

    @keyframes spinCircle {
        from {
            transform: translate(-50%, -50%) rotate(0);
        }
        to {
            transform: translate(-50%, -50%) rotate(360deg);
        }
    }

    .list-group-horizontal > li > input {

    }


</style>


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
            <button class="make_video"><i class="fa-solid fa-video"></i></button>

        </div>
        <!-- account and alarm -->
        <div>

        </div>
        <div class="row category_layout">
            <div class="categoryContainner">
                <ul class="list-group list-group-horizontal">
                    <li class="list-group-item"><input class="btn btn-primary" type="button" value="전체"></li>
                    <li class="list-group-item"><input class="btn btn-primary" type="button" value="동영상"></li>
                    <li class="list-group-item"><input class="btn btn-primary" type="button" value="게임"></li>
                    <li class="list-group-item"><input class="btn btn-primary" type="button" value="믹스"></li>
                    <li class="list-group-item"><input class="btn btn-primary" type="button" value="실시간"></li>
                    <li class="list-group-item"><input class="btn btn-primary" type="button" value="영화"></li>
                    <li class="list-group-item"><input class="btn btn-primary" type="button" value="요리"></li>
                    <li class="list-group-item"><input class="btn btn-primary" type="button" value="스포츠"></li>
                    <li class="list-group-item"><input class="btn btn-primary" type="button" value="축구"></li>
                    <li class="list-group-item"><input class="btn btn-primary" type="button" value="최근에 업로드된 영상"></li>
                    <li class="list-group-item"><input class="btn btn-primary" type="button" value="감상한 동영상"></li>
                </ul>
            </div>
        </div>
    </div>
</header>

<body>



<!--    모달 background-->

<div class="modal_background"></div>

<div class="left-side-bar">

    <div class="one">
        <div class="scrolls">
            <div class="container_bar">
                <div class="left-side-bar-1">
                    <div class="hoverTest" >
                        <div class="left_icon"><i class="fa-solid fa-house"></i></div>
                        <div class="left_component">홈</div>
                    </div>
                </div>
                <div class="hoverTest">
                    <div class="left_icon"><i class="fa-solid fa-magnifying-glass"></i></div>
                    <div class="left_component">탐색</div>
                </div>
                <div class="hoverTest">
                    <div class="left_icon"><i class="fa-solid fa-clapperboard"></i></div>
                    <div class="left_component">구독</div>
                </div>
            </div>

            <div class="container_bar">
                <div class="hoverTest">
                    <div class="left_icon"><i class="fa-sharp fa-solid fa-file-video"></i></div>
                    <div class="left_component">보관함</div>
                </div>
                <div class="hoverTest">
                    <div class="left_icon"><i class="fa-solid fa-folder"></i></div>
                    <div class="left_component">시청 기록</div>
                </div>
                <div class="hoverTest">
                    <div class="left_icon"><i class="fa-solid fa-address-book"></i></div>
                    <div class="left_component">내 동영상</div>
                </div>
                <div class="hoverTest">
                    <div class="left_icon"><i class="fa-solid fa-file-export"></i></div>
                    <div class="left_component">나중에 볼 동영상</div>
                </div>
                <div class="hoverTest">
                    <div class="left_icon"><i class="fa-solid fa-heart-circle-plus"></i></div>
                    <div class="left_component">좋아요 표시한 동영상</div>
                </div>
                <div class="hoverTest">
                    <div class="left_icon"><i class="fa-solid fa-music"></i></div>
                    <div class="left_component">노래</div>
                </div>
            </div>

            <div class="container_bar">
                <div class="left-side-bar-sub">구독</div>
                <div class="hoverTest">
                    <div class="left_icon"><i class="fa-solid fa-user"></i></div>
                    <div class="left_component">유튜버1</div>
                    <a class="badge badge-primary sub">·</a>
                </div>
                <div class="hoverTest">
                    <div class="left_icon"><i class="fa-solid fa-user"></i></div>
                    <div class="left_component">유튜버2</div>
                    <a class="badge badge-primary sub">·</a>
                </div>
                <div class="hoverTest">
                    <div class="left_icon"><i class="fa-solid fa-user"></i></div>
                    <div class="left_component">유튜버3</div>
                    <a class="badge badge-primary sub">·</a>
                </div>
                <div class="hoverTest">
                    <div class="left_icon"><i class="fa-solid fa-user"></i></div>
                    <div class="left_component">유튜버4</div>
                    <a class="badge badge-primary sub">·</a>
                </div>
                <div class="hoverTest">
                    <div class="left_icon"><i class="fa-solid fa-user"></i></div>
                    <div class="left_component">유튜버5</div>
                    <a class="badge badge-primary sub">·</a>
                </div>
                <div class="hoverTest">
                    <div class="left-side-bar-view">
                        <div class="left_icon"><i class="fa-solid fa-plus"></i></div>
                        <div class="left_component">20개 더보기</div> <!--드랍다운이면서 페이징 원리인거같은데 일단은 패스-->

                    </div>
                </div>

            </div>
            <div class="container_bar">
                <div class="left-side-bar-sub">YOUTUBE 더보기</div>
                <div class="hoverTest">
                    <div class="left_icon"><i class="fa-regular fa-address-card"></i></div>
                    <div class="left_component">YouTube Premium</div>
                </div>
                <div class="hoverTest">
                    <div class="left_icon"><i class="fa-regular fa-file-video"></i></div>
                    <div class="left_component">영화</div>
                </div>
                <div class="hoverTest">
                    <div class="left_icon"><i class="fa-solid fa-dice"></i></div>
                    <div class="left_component">게임</div>
                </div>
                <div class="hoverTest">
                    <div class="left_icon"><i class="fa-solid fa-truck-fast"></i></div>
                    <div class="left_component">실시간</div>
                </div>
                <div class="hoverTest">
                    <div class="left_icon"><i class="fa-solid fa-graduation-cap"></i></div>
                    <div class="left_component">학습</div>
                </div>
                <div class="hoverTest">
                    <div class="left_icon"><i class="fa-solid fa-volleyball"></i></div>
                    <div class="left_component">스포츠</div>
                </div>
            </div>

            <div class="container_bar">

                <div class="hoverTest">
                    <div class="left_icon"><i class="fa-solid fa-gears"></i></div>
                    <div class="left_component">설정</div>
                </div>
                <div class="hoverTest">
                    <div class="left_icon"><i class="fa-solid fa-circle-exclamation"></i></div>
                    <div class="left_component">신고 기록</div>
                </div>
                <div class="hoverTest">
                    <div class="left_icon"><i class="fa-solid fa-house"></i></div>
                    <div class="left_component">고객 센터</div>
                </div>
                <div class="hoverTest">
                    <div class="left_icon"><i class="fa-regular fa-envelope"></i></div>
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
<form action="mainVideo.do" method="get">
    <div class="content-wrapper container-fluid main_viedo2">

        <div class="row row-cols-5">
            <c:forEach items="${videoList}" var="item" begin="0" end="14" varStatus="status">
                <div class="col">
                    <div class="card-container">
                        <div class="main_video_container">
                            <img src="${item.thumbnail_mfile.url}" class="card-img-top" alt="...">
                            <div class="videoTimeBackGround">
                                <span class="videoTime" style="color: white;">${item.time}</span>
                                <span class="videoHover" style="font-size:10px;"></span>
                            </div>
                        </div>
                        <div class="card-body">
                            <div class="media">
                                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                                <div class="media-body">
                                    <div class="media_body_more">
                                        <h6 class="mt-0">${item.title}&nbsp;</h6>
                                        <div class="videoMore1">
                                            <div>
                                                <div class="dropdown dropleft">
                                                    <div class="dropdown video_dropdown dropdownMenuButton "
                                                         data-toggle="dropdown" aria-haspopup="false"
                                                         aria-expanded="false">
                                                        <i class="fa fa-ellipsis-vertical fa-lg"></i>
                                                    </div>
                                                    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                        <a class="dropdown-item" href="javascript: void(0)"><i
                                                                class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                        <a class="dropdown-item" href="javascript: void(0)"><i
                                                                class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                        <%--채널이름 필요할거같음--%>
                                    <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                                    <p class="video_info" style="font-size: 14px;"> 조회수 ${item.views}
                                        ·${item.compare_reg_datetime}</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </c:forEach>
<%--            <div class="col">--%>
<%--                <div class="card-container">--%>
<%--                    <div class="main_video_container">--%>
<%--                        <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">--%>
<%--                        <div class="videoTimeBackGround">--%>
<%--                            <span class="videoTime" style="color: white;">20:00</span>--%>
<%--                            <span class="videoHover" style="font-size:10px;"></span>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                    <div class="card-body">--%>
<%--                        <div class="media">--%>
<%--                            <a onclick="video_select('${item.no}');" class="video_select">--%>
<%--                                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."--%>
<%--                                     style="width: 36px; height: 36px; position: relative; z-index: 1;">--%>
<%--                            </a>--%>
<%--                            <div class="media-body">--%>
<%--                                <div class="media_body_more">--%>
<%--                                    <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>--%>
<%--                                    <div class="videoMore1">--%>
<%--                                        <div>--%>
<%--                                            <div class="dropdown">--%>
<%--                                                <div class="dropdown video_dropdown dropdownMenuButton"--%>
<%--                                                     data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">--%>
<%--                                                    <i class="fa fa-ellipsis-vertical fa-lg"></i>--%>
<%--                                                </div>--%>
<%--                                                <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">--%>
<%--                                                    <a class="dropdown-item" href="javascript: void(0)"><i--%>
<%--                                                            class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>--%>
<%--                                                    <a class="dropdown-item" href="javascript: void(0)"><i--%>
<%--                                                            class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>--%>
<%--                                                </div>--%>
<%--                                            </div>--%>
<%--                                        </div>--%>
<%--                                    </div>--%>
<%--                                </div>--%>
<%--                                <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>--%>
<%--                                <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>--%>
<%--                            </div>--%>
<%--                        </div>--%>
<%--                    </div>--%>
<%--                </div>--%>
<%--            </div>--%>
        </div>
        <%--    <div class="loadingBox" style="width: 100%; height: 60px; overflow: hidden; margin-bottom: 100px; position: relative; display: none">--%>
        <%--      <div class="dim"></div>--%>
        <%--      <div class="circle"></div>--%>
        <%--    </div>--%>
    </div>
</form>

<!--      모달1-->
<form action="videoInsert.do" method="post" enctype="multipart/form-data" id="insertModalForm">
    <input type="hidden" name="userNo" value="1">

    <div class="modal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">sample1</h5>
                    <div class="announce">비공개로 저장됨</div>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close">X</button>
                </div>
                <div class="modal-body">
                    <div class="modal_body_contents_containner">
                        <div class="information">
                            <h1 style="font-size: 24px;">세부정보</h1>
                            <a style="font-size: 13px; margin-left: auto; margin-top: 5px;">세부정보 재사용</a>
                        </div>

                        <div class="contents_left">
                            <div style="position: relative">
                                <textarea class="title" placeholder="제목 (필수항목)" type="text" name="title"></textarea>
                                <div class="count_title"></div>
                            </div>
                            <div style="position: relative; margin-top: 120px;">
                                <textarea class="desc" placeholder="설명" type="text" name="description"></textarea>
                                <div class="count_desc"></div>
                            </div>
                            <div>
                                <select style="position: relative; margin-top: 180px;" id="type" name="type"
                                        onchange="typeSelect(this)">
                                    <option value="게임">게임</option>
                                    <option value="과학기술">과학기술</option>
                                    <option value="교육">교육</option>
                                    <option value="노하우/스타일">노하우/스타일</option>
                                    <option value="뉴스/정치">뉴스/정치</option>
                                    <option value="비영리/사회활동">비영리/사회활동</option>
                                    <option value="스포츠">스포츠</option>
                                    <option value="애완동물/동물">애완동물/동물</option>
                                    <option value="엔터테이먼트">엔터테이먼트</option>
                                    <option value="여행/이벤트">여행/이벤트</option>
                                    <option value="영화/애니메이션">영화/애니메이션</option>
                                    <option value="음악">음악</option>
                                    <option value="인물/블로그">인물/블로그</option>
                                </select>
                            </div>
                            <div style="margin-top: 10px; font-size: 15px;">미리보기 이미지</div>
                            <div style="margin-top: 6px; position:relative;">
                                <div style="font-size: 13px">동영상의 내용을 알려주는 사진을 선택하거나 업로드하세요. 시청자의 시선을 사로잡을만한 이미지를 사용해
                                    보세요.
                                </div>
                                <a style="position: absolute; font-size: 13px; margin-left: 36px; top: 19px;">자세히
                                    알아보기</a>
                            </div>
                            <div class="row img_input" style="margin-top: 20px;">
                                <input type="file" accept="image/jpeg,.txt" class="modal_thumbnail"
                                       name="thumbnail_file" onchange="imgPreview()" multiple/>
                                <div class="img col-3 thumbnail_1"><img src="/resources/css/img/dog.png"
                                                                        class="contents-img" alt="..."></div>
                                <div class="img col-3 thumbnail_2"><img src="/resources/css/img/dog.png"
                                                                        class="contents-img" alt="..."></div>
                                <div class="img col-3 thumbnail_3"><img src="/resources/css/img/dog.png"
                                                                        class="contents-img" alt="..."></div>
                            </div>

                            <div style="margin-top: 30px; font-size: 15px;">재생목록</div>
                            <div style="margin-top: 6px; position:relative;">
                                <div style="font-size: 13px">동영상의 내용을 알려주는 사진을 선택하거나 업로드하세요. 시청자의 시선을 사로잡을만한 이미지를 사용해
                                    보세요.
                                </div>
                                <a style="position: absolute; font-size: 13px; margin-left: 36px; top: 19px;">자세히
                                    알아보기</a>
                            </div>
                            <div class="dropdown playlist_select">
                                <button class="btn btn-secondary dropdown-toggle playlist_select_btn" type="button"
                                        id="dropdownMenu2" data-bs-auto-close="outside" data-bs-toggle="dropdown"
                                        aria-expanded="false">
                                    선택
                                </button>
                                <ul class="dropdown-menu" aria-labelledby="dropdownMenu2">
                                    <li>
                                        <button class="dropdown-item" type="button">재생목록1</button>
                                    </li>
                                    <li>
                                        <button class="dropdown-item" type="button">재생목록2</button>
                                    </li>
                                    <li>
                                        <button class="dropdown-item" type="button">재생목록3</button>
                                    </li>
                                </ul>
                            </div>
                        </div>


                        <div class="contents_right">
                            <video style="width: 360px; margin-left: 20px;" controls>
                                <source class="contents_right_video" src="/resources/css/img/sample.mp4"
                                        type="video/mp4">
                            </video>
                            <div class="modal_video_desc">
                                <div style="margin-top: 20px; margin-left: 15px;">
                                    <input type="file" accept="video/mp4,video/mkv, video/x-m4v,video/*"
                                           class="modal_video_select" name="video_file" onchange="videoPreview()"/>
                                </div>
                                <div style="display:flex; flex-direction: row">
                                    <div style="display:flex; flex-direction: column; margin-left: 15px; margin-top: 20px;">
                                        <div style=" font-size: 12px;">동영상 링크</div>
                                        <a class="video_link">https://youtu.be/frc4JDgZZKk</a>
                                    </div>
                                    <i class="fa-solid fa-copy fa-2x"
                                       style="margin-left: auto; margin-right: 25px; margin-top: 20px;"></i>
                                </div>
                                <div style=" font-size: 12px; margin-left: 15px; margin-top: 20px;">파일 이름</div>
                                <div class="video_name" style=" font-size: 15px; margin-left: 15px; font-weight: 500;">
                                    sample.mp4
                                </div>
                            </div>
                        </div>


                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-primary" id="saveBtn">저장</button>
                </div>
            </div>
        </div>
    </div>
</form>


</div>

<script src="https://unpkg.com/@api.video/video-uploader" defer></script>
<script>

    var postData = {
        lastNo: 123
    }

    $(document).ready(function () {
        console.log('document ready');

    });


    function video_select(no) {

        document.querySelector('video_select');

        //action = "value='/videoView/selectVideoDetail.do'/>";
    }

    let text = '';
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


    // var count = 14

    var isScroll = true

    function delay(ms) {
        // console.log("delay 중 !!!")
        return new Promise(resolve => setTimeout(resolve, ms))
    }


    // window.onscroll = function () {

    window.addEventListener('scroll', function () {


        if (postData.lastNo == 999) {

            // alert("끝끝끝끝끝끝끝끝끝끝끝")

        } else {
            // if (isScroll) {
            //
            if ((isScroll && window.innerHeight + window.scrollY) >= document.body.offsetHeight - 10) {

                isScroll = false

                fetch("/getLastNo", {
                    method: "POST",
                    headers: {
                        "Content-Type": "application/json",
                        "Accept": "application/json"
                    },
                    body: JSON.stringify(postData),
                }).then(async function (response) {


                    // console.log("getLastNo 시작 : " + postData.lastNo)
                     await delay(500);

                })

                getInfinity()

                async function getInfinity() {

                    // waitEle()
                    await delay(100);
                    // deleteWait()

                    fetch("/getinfinity")
                        .then(function (response) {
                            return response.json()
                        }).then(function (data) {

                        if (data.data.videoList.length < 5) {
                            postData.lastNo = 999;
                        } else {
                            postData.lastNo = data.data.videoList[4].no
                        }

                        // console.log(data)

                        createEle()
                        isScroll = true
                        // setTimeout(() => {

                            // deleteWait()

                            //
                        // }, 1000)


                        function createEle() {

                            var toAdd = document.createElement('div')
                            toAdd.classList.add('row')
                            toAdd.classList.add('row-cols-5')

                            // console.log(postData.lastNo)

                            for (let i = 0; i < 5; i++) {
                                var a = document.createElement('div')
                                a.classList.add('col')
                                rendering(data.data.videoList[i])
                                toAdd.appendChild(a)

                            }

                            function rendering(videoList) {

                                a.innerHTML = `


        <div class="card-container">
          <div class="main_video_container">
            <img src="` + videoList.thumbnail_mfile.url + `" class="card-img-top" alt="...">
            <div class="videoTimeBackGround">
              <span class="videoTime" style="color: white;">` + videoList.time + `</span>
              <span class="videoHover" style="font-size:10px;"></span>
            </div>
          </div>
          <div class="card-body">
            <div class="media">
              <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                   style="width: 36px; height: 36px; position: relative; z-index: 1;">
              <div class="media-body">
                <div class="media_body_more">
                  <h6 class="mt-0"> ` + videoList.title + `&nbsp;</h6>
                  <div class="videoMore1">
                    <div>
                      <div class="dropdown">
                        <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="fa fa-ellipsis-vertical fa-lg"></i>
                        </div>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                          <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                          <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <%--채널이름 필요할거같음--%>
                <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                <p class="video_info" style="font-size: 14px;"> 조회수 ` + videoList.views + ` · ` + videoList.reg_datetime + `</p>
              </div>
            </div>
          </div>
        </div>

        `
                                document.querySelector('.content-wrapper').append(toAdd)


                            }
                        }


                    }).catch((error) => {
                        console.error('실패:', error);
                    });

                    return false;
                }
            }
            // } isScroll
        }
    })

    // function waitEle() {
    //   document.querySelector('.loadingBox').style.display = "block"
    //
    // }
    //
    // function deleteWait() {
    //   document.querySelector('.loadingBox').style.display = "none"
    //   document.querySelector('.content-wrapper').append(document.querySelector('.loadingBox'))
    // }


    // 모달

    const modalBtn = document.querySelector('.make_video')
    const modalBtnClose = document.querySelector('.btn-close')


    modalBtn.addEventListener('click', function () {

        // 모달 뒷배경
        $(`.modal_background`).css('display', 'block')

        // 모달

        $('.modal').css('display', 'block')

        $('html, body').css({'overflow': 'hidden', 'height': '100%'}); // 모달팝업 중 html,body의 scroll을 hidden시킴
        $('#element').on('scroll touchmove mousewheel', function (event) { // 터치무브와 마우스휠 스크롤 방지
            event.preventDefault();
            event.stopPropagation();

            return false;
        });
    })


    modalBtnClose.addEventListener('click', function close() {
        $('.modal').css('display', 'none')
        $('html, body').css({'overflow': 'auto', 'height': '100%'}); //scroll hidden 해제
        $('#element').off('scroll touchmove mousewheel'); // 터치무브 및 마우스휠 스크롤 가능
        $(`.modal_background`).css('display', 'none')
    })


    // 제목 적을때마다 헤더 바꾸기

    var titleEle = document.querySelector(`.title`)

    titleEle.addEventListener(`input`, function (e) {
        document.querySelector(`.modal-title`).innerHTML = ''
        document.querySelector(`.modal-title`).innerHTML = e.target.value

        if (e.target.value === '') {
            document.querySelector(`.modal-title`).innerHTML = 'sample1'
        }

    })

    // 글자수 표시

    titleEle.addEventListener(`keyup`, function () {
        var countTitleEle = this.value.length;

        document.querySelector(`.count_title`).innerHTML = countTitleEle + "/100";


        // 글자수 넘어가면 못적게
        if (countTitleEle > 100) {
            $(this).val($(this).val().substring(0, 100))
            $('.count_title').html("100/100")
        }
    })

    // 글자수 표시

    var descEle = document.querySelector(`.desc`)

    descEle.addEventListener(`keyup`, function () {
        var countDescEle = this.value.length;

        document.querySelector(`.count_desc`).innerHTML = countDescEle + "/5000";

        // 글자수 넘어가면 못적게
        if (countDescEle > 5000) {
            $(this).val($(this).val().substring(0, 5000))
            $('.count_desc').html("5000/5000")
        }
    })

    function typeSelect(e) {

    }

    $('#saveBtn').click(function () {
        alert('hi');

        let form = document.getElementById('insertModalForm');
        const formData = new FormData(form);
        // const fileField = document.querySelector('input[type="file"]');

        // formData.append('username', 'abc123');
        // formData.append('avatar', fileField.files[0]);

        fetch("/test/main", {
            method: 'POST',
            body: formData,
        })
            .then((response) => response.json())
            .then((result) => {
                console.log('성공:', result);
            })
            .catch((error) => {
                console.error('실패:', error);
            });


    })


    function imgPreview() {

        let input = document.querySelector('.modal_thumbnail');
        let multipleContainer = document.querySelector('.img_input');

        document.querySelector('.thumbnail_1').remove();
        document.querySelector('.thumbnail_2').remove();
        document.querySelector('.thumbnail_3').remove();


        if (input.files && input.files.length < 4) {

            // 이미지 파일 검사 (생략)
            console.log(input.files)
            // 유사배열을 배열로 변환 (forEach문으로 처리하기 위해)
            const fileArr = Array.from(input.files)
            // const $colDiv1 = document.createElement("div")
            // const $colDiv2 = document.createElement("div")
            // $colDiv1.classList.add("column")
            // $colDiv2.classList.add("column")
            fileArr.forEach((file, index) => {


                const reader = new FileReader()

                const $imgDiv = document.createElement("div")
                const $img = document.createElement("img")

                $imgDiv.classList.add("img")
                $imgDiv.classList.add("col-3")
                $img.classList.add("contents-img")


                $imgDiv.appendChild($img)
                reader.onload = e => {
                    $img.src = e.target.result

                    $imgDiv.style.width = ($img.naturalWidth) * 0.2 + "px"
                }

                reader.readAsDataURL(file)
                multipleContainer.appendChild($imgDiv)


            })

        } else {
            alert("알맞은 이미지의 개수를 반영하세요")
        }

    }


    function videoPreview() {

        let input = document.querySelector('.modal_video_select');
        let file = input.files[0];
        let formData = new FormData();
        formData.append('video_file', file);
        fetch("/testPreview", {
            method: 'POST',
            body: formData,
        })
            .then((response) => response.json())
            .then((result) => {
                console.log('성공:', result.valueOf());

                document.querySelector('.contents_right > video').remove();

                let previewVideo = document.createElement('video')
                previewVideo.setAttribute('style', 'width:360px; margin-left:20px;')
                previewVideo.setAttribute('controls', '')

                let previewContents = `
                <source class="contents_right_video" src="` + result.data.file.url + `" type="video/mp4">
              `

                previewVideo.innerHTML = previewContents;
                document.querySelector('.contents_right').prepend(previewVideo);

                // 동영상 링크
                document.querySelector('.video_link').innerHTML = ''
                document.querySelector('.video_link').innerHTML = result.data.file.url;

                console.log(result.data.file.name)

                document.querySelector('.video_name').innerHTML = ''
                document.querySelector('.video_name').innerHTML = result.data.file.name;

            })
            .catch((error) => {
                console.error('실패:', error);
            })


    }


    window.onkeydown = function (event) {

        if (event.keyCode == 27) {

            if ($('.modal').hide() == true) {
                close()
                // $(`.modal_background`).css('display', 'none')
                // $('.modal').hide()
                location.reload()
            }

        }

    };


</script>
</body>
</html>