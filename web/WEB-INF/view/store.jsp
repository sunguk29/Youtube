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

      <title>Youtube store</title>
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


      /*메인*/

      .main_containner {
          background-color: #f9f9f9;
          display: flex;
          flex-direction: row;
          overflow: auto;
          overflow-x: hidden;
          overflow-y: hidden;
          margin-top: 50px;
          width: 95%;
          padding-right: 7%;
          margin-left: 100px;
          height: 1500px;

      }

      .relatived_contents {
          height: 100%;
          width: 100%;
          margin-top: 24px;
          padding-right: 100px;
          display: flex;
          flex-direction: column;

      }

      .relatived_contents_profile {
          width: 150px;
          height: 174px;
          display: flex;
          flex-direction: column;
          align-items: center;
          border-bottom: 1px solid #d3d3d3;


      }

      .account_pic {
          height: 70px;
          width: 70px;
          border-radius: 50px;
          margin-top: 49px;
      }

      .account_name {
          width: 150px;
          height: 35px;
          text-align: center;
          padding-top: 10px;
          font-size: 16px;
      }

      .account_subs , .account_upload , .account_like  {
          width: 150px;
          height: 40px;
          display: flex;
          padding: 10px 0px;
          font-size: 12px;
          border-bottom: 1px solid #d3d3d3;
      }

      .account_subs_key , .account_upload_key , .account_like_key {
          margin-right: auto;
      }

      .account_subs_value , .account_upload_value , .account_like_value  {
          margin-left: auto;
      }











      .main_contents {
          width: 990px;
          height: 100%;
          margin-top: 10px;
          margin-left: 285px;
      }

      .main_contents_history {
          width: 1074px;
          height: 30px;
          display: flex;
          flex-direction: row;
          margin-bottom: 10px;
          margin-top: 15px;

      }

      .history {
          margin-right: auto;
          font-size: 16px;
          display: flex;
      }

      .fa-clock-rotate-left {
          margin-right: 16px;
      }

      .seeall {
          margin-left: auto;
          padding-right: 120px;
          font-size: 14px;
          text-decoration: none;
      }

      .seeall:hover {
          text-decoration: none;
      }

      .history_contents {
          width: 970px;
          height: 468px;
          border-bottom: 1px solid #d3d3d3;
      }

      .main_video_container {
          position: relative;
      }

      .videoTimeBackGround {
          position: absolute;
          top: 100px;
          left: 155px;
          z-index: 2;
          background-color: black;
          border: 1px solid #000;
          width: 33px;
          height: 18px;
          align-items: center;
      }

      .videoTime {
          position: absolute;
          top: 4px;
          z-index: 3;
          line-height: 0.5;
          font-size: 12px;
          width: 25px;
          height: 10px;
      }

      .card-body {
          margin: 0;
          padding-top: 10px;

      }

      .media {
          left: -20px;
          width: 190px;
          height: 94px;
          position: relative;
          display: flex;
      }

      .media-body:hover {
          opacity: 1;
      }

      .media_body_more {
          display: flex;
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

      /*.dropdown {*/
      /*    transition: .1s ease;*/
      /*}*/

      .video_dropdown {
          width: 25px;
      }

      .video_info {
          margin: 0;
          padding: 0;
          width: 168px;
      }

      .mt-0 {
          font-size: 14px;
          width: 166px;
          height: 40px;
      }

      .card-img-top {
          width: 190px;
          height: 117px;
      }

      .col {
          width: 190px;
          margin-bottom: -10px;
          margin-right: -3px;
          margin-left: -3px;
      }

      .main_contents_latervideo {
          width: 1074px;
          height: 30px;
          display: flex;
          flex-direction: row;
          margin-bottom: 10px;
          margin-top: 15px;
      }

      .latervideo_count {
          padding-left: 10px;
          font-size: 14px;
      }

      .latervideo_contents {
          width: 970px;
          height: 234px;
          border-bottom: 1px solid #d3d3d3;
      }



      .main_contents_myclip {
          width: 1074px;
          height: 30px;
          display: flex;
          flex-direction: column;
          margin-bottom: 10px;
          margin-top: 15px;
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

        <!-- 메인 -->

        <div class="main_containner">
            <div class="main_contents">
<!--                기록-->
                <div class="main_contents_history">
                    <div class="history"><i class="fa-solid fa-clock-rotate-left"></i>기록</div>
                   <a class="seeall">모두보기</a>
                </div>
                <div class="history_contents">
                    <div class="row row-cols-5">
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs 동물농장</p>
                                            <p class="video_info" style="font-size: 12px;"> 조회수 1억회 ·1달 전</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs 동물농장</p>
                                            <p class="video_info" style="font-size: 12px;"> 조회수 1억회 ·1달 전</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs 동물농장</p>
                                            <p class="video_info" style="font-size: 12px;"> 조회수 1억회 ·1달 전</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs 동물농장</p>
                                            <p class="video_info" style="font-size: 12px;"> 조회수 1억회 ·1달 전</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs 동물농장</p>
                                            <p class="video_info" style="font-size: 12px;"> 조회수 1억회 ·1달 전</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row row-cols-5">
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs 동물농장</p>
                                            <p class="video_info" style="font-size: 12px;"> 조회수 1억회 ·1달 전</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs 동물농장</p>
                                            <p class="video_info" style="font-size: 12px;"> 조회수 1억회 ·1달 전</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs 동물농장</p>
                                            <p class="video_info" style="font-size: 12px;"> 조회수 1억회 ·1달 전</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs 동물농장</p>
                                            <p class="video_info" style="font-size: 12px;"> 조회수 1억회 ·1달 전</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs 동물농장</p>
                                            <p class="video_info" style="font-size: 12px;"> 조회수 1억회 ·1달 전</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
<!--                나중에볼영상-->
                <div class="main_contents_latervideo">
                    <div class="history">
                        <i class="fa-solid fa-clock-rotate-left"></i>
                        나중에 볼 영상
                        <div class="latervideo_count">70</div>
                    </div>
                    <a class="seeall">모두보기</a>
                </div>
                <div class="latervideo_contents">
                    <div class="row row-cols-5">
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs 동물농장</p>
                                            <p class="video_info" style="font-size: 12px;"> 조회수 1억회 ·1달 전</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs 동물농장</p>
                                            <p class="video_info" style="font-size: 12px;"> 조회수 1억회 ·1달 전</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs 동물농장</p>
                                            <p class="video_info" style="font-size: 12px;"> 조회수 1억회 ·1달 전</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs 동물농장</p>
                                            <p class="video_info" style="font-size: 12px;"> 조회수 1억회 ·1달 전</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs 동물농장</p>
                                            <p class="video_info" style="font-size: 12px;"> 조회수 1억회 ·1달 전</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
<!--                재생목록-->
                <div class="main_contents_latervideo">
                    <div class="history">
                        <i class="fa-solid fa-clock-rotate-left"></i>
                        재생목록
                        <div class="latervideo_count">70</div>
                    </div>
                    <a class="seeall">모두보기</a>
                </div>
                <div class="latervideo_contents">
                    <div class="row row-cols-5">
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs 동물농장</p>
                                            <p class="video_info" style="font-size: 12px;"> 조회수 1억회 ·1달 전</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs 동물농장</p>
                                            <p class="video_info" style="font-size: 12px;"> 조회수 1억회 ·1달 전</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs 동물농장</p>
                                            <p class="video_info" style="font-size: 12px;"> 조회수 1억회 ·1달 전</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs 동물농장</p>
                                            <p class="video_info" style="font-size: 12px;"> 조회수 1억회 ·1달 전</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs 동물농장</p>
                                            <p class="video_info" style="font-size: 12px;"> 조회수 1억회 ·1달 전</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
<!--                좋아요 표시한 동영상-->
                <div class="main_contents_latervideo">
                    <div class="history">
                        <i class="fa-solid fa-clock-rotate-left"></i>
                        좋아요 표시한 동영상 
                        <div class="latervideo_count">70</div>
                    </div>
                    <a class="seeall">모두보기</a>
                </div>
                <div class="latervideo_contents">
                    <div class="row row-cols-5">
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs 동물농장</p>
                                            <p class="video_info" style="font-size: 12px;"> 조회수 1억회 ·1달 전</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs 동물농장</p>
                                            <p class="video_info" style="font-size: 12px;"> 조회수 1억회 ·1달 전</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs 동물농장</p>
                                            <p class="video_info" style="font-size: 12px;"> 조회수 1억회 ·1달 전</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs 동물농장</p>
                                            <p class="video_info" style="font-size: 12px;"> 조회수 1억회 ·1달 전</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="card-container">
                                <div class="main_video_container">
                                    <img src="/web/resources/css/img/dog.png" class="card-img-top" alt="...">
                                    <div class="videoTimeBackGround">
                                        <span class="videoTime" style="color: white;">20:00</span>
                                        <span class="videoHover" style="font-size:10px;"></span>
                                    </div>
                                </div>
                                <div class="card-body">
                                    <div class="media">
                                        <div class="media-body">
                                            <div class="media_body_more">
                                                <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                                                <div class="videoMore1">
                                                    <div>
                                                        <div class="dropdown">
                                                            <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                                                <i class="fa fa-ellipsis-vertical fa-xs"></i>
                                                            </div>
                                                            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                                                                <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                            <p class="video_info" style="font-size: 12px;">sbs 동물농장</p>
                                            <p class="video_info" style="font-size: 12px;"> 조회수 1억회 ·1달 전</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
<!--                내 클립-->
                <div class="main_contents_myclip">
                    <div class="history">
                        <i class="fa-solid fa-clock-rotate-left"></i>
                        내클립
                    </div>
                    <span style="font-size: 14px;">마음에 드는 순간을 잘라서 공유해 보세요. 바로 여기에 목록이 표시됩니다.</span>
                </div>



            </div> <!--                main_contents-->













            <div class="relatived_contents">
                <div class="relatived_contents_profile">
                    <img class="account_pic" src="../../resources/css//img/capture.png" alt="Generic placeholder image">
                    <div class="account_name">김규범</div>
                </div>
                <div class="account_subs">
                    <div class="account_subs_key">구독</div>
                    <div class="account_subs_value">55</div>
                </div>
                <div class="account_upload">
                    <div class="account_upload_key">업로드</div>
                    <div class="account_upload_value">0</div>
                </div>
                <div class="account_like">
                    <div class="account_like_key">좋아요</div>
                    <div class="account_like_value">좋아요</div>
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