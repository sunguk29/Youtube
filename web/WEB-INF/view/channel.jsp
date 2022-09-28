<%@ page language="java" contentType="text/html; charset=utf-8"
         pageEncoding="utf-8"%>
    <!doctype html>
    <html lang="en">
    <head>
      <!-- Required meta tags -->
      <meta charset="utf-8">
      <meta name="viewport"
            content="width=device-width, initial-scale=1, shrink-to-fit=no">

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

      <title>Youtube channel</title>
    </head>

    <style>

      .nav-item > a:hover, .nav-item > a:focus {
        outline: none !important;
        border-top: none !important;
        border-left: none !important;
        border-right: none !important;
        box-shadow: none !important;
        color: black !important;
      }

      /*.nav-item > a:hover {*/
      /*  border-bottom: none !important;*/
      /*}*/

      .btn:focus, .btn:active {
        outline: none !important;
        box-shadow: none !important;
      }



      /* 검색 */

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

      .input-group-text {
        height: 40px;
      }

      .form-control {
        height: 40px;
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


      /*채널 사진*/

      .channel_pic {
        position: relative;
        top: 56px;
        left: 240px;
        width: 87%;
        height: 250px;
      }

      .channel_pic_img {
        width: 100%;
        height: 78%;
      }

      /*채널 설명 & 구독*/

      .channel_des {
        position: relative;
        display: flex;
        top: 0px;
        left: 240px;
        width: 1430px;
        height: 100px;
        align-items: center;
      }

      .channel_des_containner {
        display: flex;
        flex-direction: row;
        width: 1284px;
        height: 80px;
        margin: auto;

      }

      .channel_des_contents_containner {
        display: flex;
        flex-direction: column;
        width: 1100px;
      }

      .channel_des_name {
        font-size: 24px;
        margin-right: auto;
        margin-top: auto;
        margin-bottom: auto;
      }

      .fa-circle-check {
        margin-left: 7px;
      }

      .channel_des_contents_sub {
        font-size: 10px;
        margin-left: 3px;
        margin-right: auto;
        margin-bottom: 30px;
      }

      .channel_des_sub_btn {
        border: none;
        background: red;
        color: white;
        width: 70px;
        height: 40px;
        margin-top: auto;
        margin-bottom: auto;
        margin-left: auto;
      }


      /*채널 배너*/

      .channel_banner {
        position: sticky;
        display: flex;
        z-index: 5;
        top: 56px;
        left: 0px;
        width: 1480px;
        height: 48px;
        margin-left: 240px;
        background-color: white;
      }

      .channel_banner_containner {
        display: flex;
        width: 1284px;
        height: 47px;
        margin-right: auto;
        margin-left: auto;
      }

      .nav-tabs {
        height: 47px;
        border-bottom: none;
        width: 100%;
      }

      .nav-item {
        width: 8%;
        display: flex;
      }

      .nav-item > a {
        color: black;
        margin-left: auto;
        margin-right: auto;
        margin-top: auto;
        font-size: 14px;
      }



      /*메인 컨텐츠*/

      .content-wrapper {
        position: relative;
        display: flex;
        top: 0px;
        margin-left: 240px;

        width: 100%;
        height: 900px;
      }

      .channel_contents {
        position: relative;
        top: 0px;
        right: 125px;
        background-color:#f1f1f1;
        width: 88%;
        margin-left: auto;
        margin-right: auto;
        margin-top: 30px;
        height: 1665px;
        min-height: 100%;
        display: flex;
        flex-direction: column;

      }

      .channel_contents_maincontents {
        display: flex;
        flex-direction: row;
        margin-top: 25px;
        width: 1276px;
        height: 278px;
        margin-right: auto;
        margin-left: auto;
        border-bottom: 1px solid rgba(0,0,0,0.1);
      }

      .maincontents_video {
        width: 428px;
        height: 238px;
      }

      .channel_contents_maincontents_desc {
        display: flex;
        flex-direction: column;
        width: 30%;
        height: 238px;
        margin-left: 20px;

      }

      .channel_contents_maincontents_vacuum {
        width: 248px;
        height: 238px;
      }

      .channel_contents_maincontents_desc_title {
        height: 25px;
        margin-bottom: auto;
      }

      .channel_contents_maincontents_desc_viewcounttime {
        font-size: 10px;
        display: flex;
        flex-direction: row;
        height: 18px;
        margin-top: auto;
        margin-bottom: auto;
      }

      .channel_contents_maincontents_desc_time {
        padding-left: 5px;
      }

      .channel_contents_maincontents_desc_p {
        font-size: 14px;
        margin-top: auto;
        margin-bottom: auto;
        word-break: break-word;
        white-space: pre-line;
      }

      .channel_contents_maincontents_desc_seemore {
        font-size: 12px;
        border: none;
        margin-top: -40px;
        margin-right: auto;
        height: 18px;
        color: black;
      }

      .channel_contents_maincontents_desc_seemore:hover {
        color: black;
        text-decoration:none;
        cursor: pointer;
      }

      .channel_contents_uploadvideo {
        width: 1276px;
        height: 300px;
        margin-right: auto;
        margin-left: auto;
          border-bottom: 1px solid #d3d3d3;
      }

      .channel_contents_uploadvideo_play {
        display: flex;
        flex-direction: row;
        width: 248px;
        height: 36px;
        margin-top: 15px;
        align-items: center;
      }

      .channel_contents_uploadvideo_href {
        font-size: 16px;
        color: black;
      }

      .channel_contents_uploadvideo_href:hover {
        color: black;
        text-decoration:none;
        cursor: pointer;
      }

      .channel_contents_uploadvideo_playall {
        font-size: 14px;
        color: black;
        margin-left: 35px;
      }

      .channel_contents_uploadvideo_playall:hover {
        color: black;
        text-decoration:none;
        cursor: pointer;
      }

      .fa-play {
        margin-right: 15px;
      }

      .channel_contents_uploadvideo_maincontents {
        width: 1326px;
        height: 214px;
        margin-top: 5px;
          margin-left: -10px;
      }

      .carousel-inner {
        width: 100%;
        display: flex;
        flex-direction: row;
        margin-right: 20px;
      }

      .carousel-item1 {
        width: 100%;
      }

      .carousel-item2 {
        display: none;
        flex-direction: row;
        width: 100%;

      }

      .carousel {
        display: flex;
        flex-direction: row;
        height: 214px;
      }

      .carousel_contents {
        width: 210px;
        margin-top: 20px;
        padding-left: 24px;
      }

      .carousel_thum {
        width: 210px;
        height: 117px;
      }

      .carousel-control-next {
        width: 40px;
        height: 40px;
        z-index: 5;
        top: 60px;
        background-color: white;
        color: black;
        border-radius: 28px;
      }

      .carousel-control-prev {
        display: none;
        width: 40px;
        height: 40px;
        z-index: 5;
        top: 60px;
          left: -10px;
        background-color: white;
        color: black;
        border-radius: 28px;
     }

      .mt_0 {
          margin-top: 10px;
          margin-bottom: auto;
          font-size: 14px;
          font-weight: 500;
          display: flex;
          flex-direction: row;
          width: 120%;
          margin-right: 10px;
      }

      .relatived_contents_dropdown {
          margin-left: auto;
      }

      .search_list_sub_media {
          display: flex;
          flex-direction: row;
          margin-top: 10px;
      }

      .search_list_view {
          font-size: 12px;
      }

      .search_list_reg_date {
          font-size: 12px;
          padding-left: 5px;
      }

      .dropdown {
          transition: .1s ease;
      }

      .video_dropdown {
          width: 25px;
      }

      .dropdownMenuButton {
          opacity: 0;
      }

      .dropdownMenuButton:hover {
          opacity: inherit;
      }

      .channel_anothercontents1 {
          width: 1326px;
          height: 300px;
          margin-top: 5px;
          margin-left: 90px;
          border-bottom: 1px solid #d3d3d3;
      }

      .channel_anothercontents2 {
          width: 1326px;
          height: 300px;
          margin-top: 5px;
          margin-left: 90px;
          border-bottom: 1px solid #d3d3d3;
      }

      .channel_anothercontents3 {
          width: 1326px;
          height: 300px;
          margin-top: 5px;
          margin-left: 90px;
          border-bottom: 1px solid #d3d3d3;
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


    <div class="channel_pic">
      <img class="channel_pic_img" src="/web/resources/css/img/dog.png">
    </div>
    <div class="channel_des">
      <div class="channel_des_containner">
        <img src="/web/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
             style="width: 80px; height: 80px; border-radius: 45px; margin-right: 10px">
        <div class="channel_des_contents_containner">
          <div class="channel_des_name">김종국 GYM JONG GOOK<i class="fa-regular fa-circle-check fa-xs"></i></div>
          <div class="channel_des_contents_sub">구독자 265만명</div>
        </div>
        <button class="channel_des_sub_btn">구독</button>
      </div>
    </div>
    <div class="channel_banner">
      <div class="channel_banner_containner">
        <ul class="nav nav-tabs">
          <li class="nav-item home">
<!--            active 생략-->
            <a class="nav-link" aria-current="page" href="#">홈</a>
          </li>
          <li class="nav-item video">
            <a class="nav-link" href="#">동영상</a>
          </li>
          <li class="nav-item video_list">
            <a class="nav-link" href="#">재생목록</a>
          </li>
          <li class="nav-item community">
            <a class="nav-link" href="#">커뮤니티</a>
          </li>
          <li class="nav-item channel">
            <a class="nav-link" href="#">채널</a>
          </li>
          <li class="nav-item info">
            <a class="nav-link" href="#">정보</a>
          </li>
        </ul>
      </div>
    </div>
    <div class="content-wrapper container-fluid">
      <div class="channel_contents">
        <div class="channel_contents_maincontents">
          <div><img src="/web/resources/css/img/dog.png" class="maincontents_video" alt="..."></div>
          <div class="channel_contents_maincontents_desc">
            <div class="channel_contents_maincontents_desc_title">운동과 영어는 닮은점이 참 많습니다....</div>
            <div class="channel_contents_maincontents_desc_viewcounttime">
              <div class="channel_contents_maincontents_desc_viewcount">조회수 3.8만회</div>
              <div class="channel_contents_maincontents_desc_time">· 4일전</div>
            </div>
            <div class="channel_contents_maincontents_desc_p">
              <p>짐종국에서 뭔 갑자기 영어? 하시겠지만 ㅎ
                제가 이미지에 안 맞게 부족하지만 방송이나 콘텐츠에서
                영어를 조금 하는 장면을 보시고 영어 공부법 을 궁금해하시는 분들이 많아서
                간단하게 한번 준비해 봤습니다 ㅎ

                기초 1도 없이! 나이 서른 넘어서 시작한 영어! ㅋ</p>
            </div>
            <a class="channel_contents_maincontents_desc_seemore">자세히 알아보기</a>
          </div>
          <div class="channel_contents_maincontents_vacuum"></div>
        </div>
        <div class="channel_contents_uploadvideo">
            <div class="channel_contents_uploadvideo_play">
              <a class="channel_contents_uploadvideo_href">업로드한 동영상</a>
              <a class="channel_contents_uploadvideo_playall"><i class="fa-solid fa-play"></i>모두재생</a>
            </div>
            <!--캐러셀-->
            <div class="channel_contents_uploadvideo_maincontents">
              <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel" data-interval="false">
                <div class="carousel-inner" role="listbox">
                  <div class="row carousel-item1 active">
                      <div class="carousel_contents col-2">
                          <img class="carousel_thum" src="/web/resources/css/img/dog.png">
                          <div class="mt_0">최신영상상상상상상
                              <div class="relatived_contents_dropdown">
                                  <div class="dropdown">
                                      <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                          <i class="fa fa-ellipsis-vertical"></i>
                                      </div>
                                      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                          <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                          <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <div class="search_list_sub_media">
                              <div class="search_list_view">조회수 3.8만회</div>
                              <div class="search_list_reg_date">· 4일전</div>
                          </div>
                      </div>
                      <div class="carousel_contents col-2">
                          <img class="carousel_thum" src="/web/resources/css/img/dog.png">
                          <div class="mt_0">최신영상상상상상상
                              <div class="relatived_contents_dropdown">
                                  <div class="dropdown">
                                      <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                          <i class="fa fa-ellipsis-vertical"></i>
                                      </div>
                                      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                          <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                          <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <div class="search_list_sub_media">
                              <div class="search_list_view">조회수 3.8만회</div>
                              <div class="search_list_reg_date">· 4일전</div>
                          </div>
                      </div>
                      <div class="carousel_contents col-2">
                          <img class="carousel_thum" src="/web/resources/css/img/dog.png">
                          <div class="mt_0">최신영상상상상상상
                              <div class="relatived_contents_dropdown">
                                  <div class="dropdown">
                                      <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                          <i class="fa fa-ellipsis-vertical"></i>
                                      </div>
                                      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                          <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                          <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <div class="search_list_sub_media">
                              <div class="search_list_view">조회수 3.8만회</div>
                              <div class="search_list_reg_date">· 4일전</div>
                          </div>
                      </div>
                      <div class="carousel_contents col-2">
                          <img class="carousel_thum" src="/web/resources/css/img/dog.png">
                          <div class="mt_0">최신영상상상상상상
                              <div class="relatived_contents_dropdown">
                                  <div class="dropdown">
                                      <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                          <i class="fa fa-ellipsis-vertical"></i>
                                      </div>
                                      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                          <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                          <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <div class="search_list_sub_media">
                              <div class="search_list_view">조회수 3.8만회</div>
                              <div class="search_list_reg_date">· 4일전</div>
                          </div>
                      </div>
                      <div class="carousel_contents col-2">
                          <img class="carousel_thum" src="/web/resources/css/img/dog.png">
                          <div class="mt_0">최신영상상상상상상
                              <div class="relatived_contents_dropdown">
                                  <div class="dropdown">
                                      <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                          <i class="fa fa-ellipsis-vertical"></i>
                                      </div>
                                      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                          <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                          <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <div class="search_list_sub_media">
                              <div class="search_list_view">조회수 3.8만회</div>
                              <div class="search_list_reg_date">· 4일전</div>
                          </div>
                      </div>
                      <div class="carousel_contents col-2">
                          <img class="carousel_thum" src="/web/resources/css/img/dog.png">
                          <div class="mt_0">최신영상상상상상상
                              <div class="relatived_contents_dropdown">
                                  <div class="dropdown">
                                      <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                          <i class="fa fa-ellipsis-vertical"></i>
                                      </div>
                                      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                          <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                          <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <div class="search_list_sub_media">
                              <div class="search_list_view">조회수 3.8만회</div>
                              <div class="search_list_reg_date">· 4일전</div>
                          </div>
                      </div>
                  </div>
                  <div class="row carousel-item2">
                      <div class="carousel_contents col-2">
                        <img class="carousel_thum" src="/web/resources/css/img/human.jpg">
                          <div class="mt_0">최신영상상상상상상
                              <div class="relatived_contents_dropdown">
                                  <div class="dropdown">
                                      <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                          <i class="fa fa-ellipsis-vertical"></i>
                                      </div>
                                      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                          <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                          <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <div class="search_list_sub_media">
                              <div class="search_list_view">조회수 3.8만회</div>
                              <div class="search_list_reg_date">· 4일전</div>
                          </div>
                      </div>
                      <div class="carousel_contents col-2">
                        <img class="carousel_thum" src="/web/resources/css/img/human.jpg">
                          <div class="mt_0">최신영상상상상상상
                              <div class="relatived_contents_dropdown">
                                  <div class="dropdown">
                                      <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                          <i class="fa fa-ellipsis-vertical"></i>
                                      </div>
                                      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                          <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                          <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <div class="search_list_sub_media">
                              <div class="search_list_view">조회수 3.8만회</div>
                              <div class="search_list_reg_date">· 4일전</div>
                          </div>
                      </div>
                      <div class="carousel_contents col-2">
                        <img class="carousel_thum" src="/web/resources/css/img/human.jpg">
                          <div class="mt_0">최신영상상상상상상
                              <div class="relatived_contents_dropdown">
                                  <div class="dropdown">
                                      <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                          <i class="fa fa-ellipsis-vertical"></i>
                                      </div>
                                      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                          <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                          <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <div class="search_list_sub_media">
                              <div class="search_list_view">조회수 3.8만회</div>
                              <div class="search_list_reg_date">· 4일전</div>
                          </div>
                      </div>
                      <div class="carousel_contents col-2">
                        <img class="carousel_thum" src="/web/resources/css/img/human.jpg">
                          <div class="mt_0">최신영상상상상상상
                              <div class="relatived_contents_dropdown">
                                  <div class="dropdown">
                                      <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                          <i class="fa fa-ellipsis-vertical"></i>
                                      </div>
                                      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                          <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                          <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <div class="search_list_sub_media">
                              <div class="search_list_view">조회수 3.8만회</div>
                              <div class="search_list_reg_date">· 4일전</div>
                          </div>
                      </div>
                      <div class="carousel_contents col-2">
                        <img class="carousel_thum" src="/web/resources/css/img/human.jpg">
                          <div class="mt_0">최신영상상상상상상
                              <div class="relatived_contents_dropdown">
                                  <div class="dropdown">
                                      <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                          <i class="fa fa-ellipsis-vertical"></i>
                                      </div>
                                      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                          <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                          <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <div class="search_list_sub_media">
                              <div class="search_list_view">조회수 3.8만회</div>
                              <div class="search_list_reg_date">· 4일전</div>
                          </div>
                      </div>
                      <div class="carousel_contents col-2">
                        <img class="carousel_thum" src="/web/resources/css/img/human.jpg">
                          <div class="mt_0">최신영상상상상상상
                              <div class="relatived_contents_dropdown">
                                  <div class="dropdown">
                                      <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                          <i class="fa fa-ellipsis-vertical"></i>
                                      </div>
                                      <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                          <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                          <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                      </div>
                                  </div>
                              </div>
                          </div>
                          <div class="search_list_sub_media">
                              <div class="search_list_view">조회수 3.8만회</div>
                              <div class="search_list_reg_date">· 4일전</div>
                          </div>
                      </div>
                  </div>
                </div>
                <button class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                  <i class="fa-solid fa-angle-left"></i>
                </button>
                <button class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                  <i class="fa-solid fa-angle-right"></i>
                </button>
              </div>
              <!--              캐러셀 끝-->
            </div>

         </div>
          <div class="channel_anothercontents1">
              <div class="channel_contents_uploadvideo_play">
                  <a class="channel_contents_uploadvideo_href">업로드한 동영상</a>
                  <a class="channel_contents_uploadvideo_playall"><i class="fa-solid fa-play"></i>모두재생</a>
              </div>
              <div class="channel_contents_uploadvideo_maincontents">
                  <div class="carousel slide" data-ride="carousel" data-interval="false">
                      <div class="carousel-inner" role="listbox">
                          <div class="row carousel-item1 active">
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/dog.png">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/dog.png">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/dog.png">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/dog.png">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/dog.png">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/dog.png">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                          </div>
                          <div class="row carousel-item2">
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/human.jpg">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/human.jpg">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/human.jpg">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/human.jpg">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/human.jpg">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/human.jpg">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <button class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                          <i class="fa-solid fa-angle-left"></i>
                      </button>
                      <button class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                          <i class="fa-solid fa-angle-right"></i>
                      </button>
                  </div>
                  <!--              캐러셀 끝-->
              </div>
          </div>
          <div class="channel_anothercontents2">
              <div class="channel_contents_uploadvideo_play">
                  <a class="channel_contents_uploadvideo_href">업로드한 동영상</a>
                  <a class="channel_contents_uploadvideo_playall"><i class="fa-solid fa-play"></i>모두재생</a>
              </div>
              <div class="channel_contents_uploadvideo_maincontents">
                  <div class="carousel slide" data-ride="carousel" data-interval="false">
                      <div class="carousel-inner" role="listbox">
                          <div class="row carousel-item1 active">
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/dog.png">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/dog.png">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/dog.png">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/dog.png">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/dog.png">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/dog.png">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                          </div>
                          <div class="row carousel-item2">
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/human.jpg">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/human.jpg">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/human.jpg">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/human.jpg">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/human.jpg">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/human.jpg">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <button class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                          <i class="fa-solid fa-angle-left"></i>
                      </button>
                      <button class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                          <i class="fa-solid fa-angle-right"></i>
                      </button>
                  </div>
                  <!--              캐러셀 끝-->
              </div>
          </div>
          <div class="channel_anothercontents3">
              <div class="channel_contents_uploadvideo_play">
                  <a class="channel_contents_uploadvideo_href">업로드한 동영상</a>
                  <a class="channel_contents_uploadvideo_playall"><i class="fa-solid fa-play"></i>모두재생</a>
              </div>
              <div class="channel_contents_uploadvideo_maincontents">
                  <div class="carousel slide" data-ride="carousel" data-interval="false">
                      <div class="carousel-inner" role="listbox">
                          <div class="row carousel-item1 active">
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/dog.png">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/dog.png">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/dog.png">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/dog.png">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/dog.png">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/dog.png">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                          </div>
                          <div class="row carousel-item2">
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/human.jpg">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/human.jpg">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/human.jpg">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/human.jpg">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/human.jpg">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                              <div class="carousel_contents col-2">
                                  <img class="carousel_thum" src="/web/resources/css/img/human.jpg">
                                  <div class="mt_0">최신영상상상상상상
                                      <div class="relatived_contents_dropdown">
                                          <div class="dropdown">
                                              <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                  <i class="fa fa-ellipsis-vertical"></i>
                                              </div>
                                              <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                  <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                                  <div class="search_list_sub_media">
                                      <div class="search_list_view">조회수 3.8만회</div>
                                      <div class="search_list_reg_date">· 4일전</div>
                                  </div>
                              </div>
                          </div>
                      </div>
                      <button class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                          <i class="fa-solid fa-angle-left"></i>
                      </button>
                      <button class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                          <i class="fa-solid fa-angle-right"></i>
                      </button>
                  </div>
                  <!--              캐러셀 끝-->
              </div>
          </div>

        </div>


      </div>

    </div>


    <script>
      $(document).ready(function () {
        console.log('document ready');
      });

      let text = '';
      const btn = document.querySelector('.input-group-text')
      const a_element = document.querySelector('.form-control')

      btn.addEventListener('click', function (event) {
        alert(a_element.value + '를 검색했습니다')
      })

      var carouselNext = document.querySelector('.carousel-control-next')
      var carouselPrev = document.querySelector('.carousel-control-prev')

      carouselNext.addEventListener('click', function (event) {
        $('.carousel-item1').css('display', 'none')
        $('.carousel-item2').css('display', 'flex')
        $('.carousel-control-next').hide()
        $('.carousel-control-prev').show()

      })

      carouselPrev.addEventListener('click', function (event) {
        $('.carousel-item2').css('display', 'none')
        $('.carousel-item1').css('display', 'flex')
        $('.carousel-control-prev').hide()
        $('.carousel-control-next').show()
      })

    </script>
    </body>
    </html>