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

      <title>Youtube Front Layout</title>
    </head>

    <style>

      input:hover{
        background-color: black !important;
      }

      .btn:focus, .btn:active {
        outline: none !important;
        box-shadow: none !important;
        background-color: black; !important;
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
        border: 1px solid rgba(0,0,0,.125);
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
        border: 1px solid darkgray;
        border-radius: 16px;
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

      .videoTime {
        position: absolute;
        top: 10px;
        left: 10px;
        z-index: 3;
        line-height: 0.5;
      }

      .videoTimeBackGround {
        position: absolute;
        top: 150px;
        left: 200px;
        z-index: 2;
        background-color: black;
        border: 1px solid #000;
        width: 60px;
        height: 24px;
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
        width: 254px;
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

      .left-side-bar-sub{
        margin-left: 20px;
      }
    </style>

    <body>
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
              <li class="list-group-item"><input class="btn btn-primary" type="button" value="요리요리요리요리요리요리요리"></li>
              <li class="list-group-item"><input class="btn btn-primary" type="button" value="요리"></li>
              <li class="list-group-item"><input class="btn btn-primary" type="button" value="요리"></li>
              <li class="list-group-item"><input class="btn btn-primary" type="button" value="요리"></li>
              <li class="list-group-item"><input class="btn btn-primary" type="button" value="요리"></li>
            </ul>
          </div>
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

    <div class="content-wrapper container-fluid main_viedo2">
      <div class="row row-cols-5">
        <div class="col">
          <div class="card-container">
            <div class="main_video_container">
              <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
              <div class="videoTimeBackGround">
                <span class="videoTime" style="color: white;">20:00</span>
                <span class="videoHover" style="font-size:10px;"></span>
              </div>

            </div>
            <div class="card-body">
              <div class="media">
                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                <div class="media-body">
                  <div class="media_body_more">
                  <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                  <div class="videoMore1">
                  <div class="viewMore_dropdown">
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
                  </div>
                  <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                  <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card-container">
            <div class="main_video_container">
              <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
              <div class="videoTimeBackGround">
                <span class="videoTime" style="color: white;">20:00</span>
                <span class="videoHover" style="font-size:10px;"></span>
              </div>
            </div>
            <div class="card-body">
              <div class="media">
                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                <div class="media-body">
                  <div class="media_body_more">
                    <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                    <div class="videoMore1">
                      <div>
                        <div class="dropdown">
                          <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-ellipsis-vertical fa-2x"></i>
                          </div>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                  <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card-container">
            <div class="main_video_container">
              <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
              <div class="videoTimeBackGround">
                <span class="videoTime" style="color: white;">20:00</span>
                <span class="videoHover" style="font-size:10px;"></span>
              </div>
            </div>
            <div class="card-body">
              <div class="media">
                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                <div class="media-body">
                  <div class="media_body_more">
                    <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                    <div class="videoMore1">
                      <div>
                        <div class="dropdown">
                          <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-ellipsis-vertical fa-2x"></i>
                          </div>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                  <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card-container">
            <div class="main_video_container">
              <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
              <div class="videoTimeBackGround">
                <span class="videoTime" style="color: white;">20:00</span>
                <span class="videoHover" style="font-size:10px;"></span>
              </div>
            </div>
            <div class="card-body">
              <div class="media">
                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                <div class="media-body">
                  <div class="media_body_more">
                    <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                    <div class="videoMore1">
                      <div>
                        <div class="dropdown">
                          <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-ellipsis-vertical fa-2x"></i>
                          </div>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                  <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
        <div class="card-container">
          <div class="main_video_container">
            <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
            <div class="videoTimeBackGround">
              <span class="videoTime" style="color: white;">20:00</span>
              <span class="videoHover" style="font-size:10px;"></span>
            </div>
          </div>
          <div class="card-body">
            <div class="media">
              <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                   style="width: 36px; height: 36px; position: relative; z-index: 1;">
              <div class="media-body">
                <div class="media_body_more">
                  <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                  <div class="videoMore1">
                    <div>
                      <div class="dropdown">
                        <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                          <i class="fa fa-ellipsis-vertical fa-2x"></i>
                        </div>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                          <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                          <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
                <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
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
              <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
              <div class="videoTimeBackGround">
                <span class="videoTime" style="color: white;">20:00</span>
                <span class="videoHover" style="font-size:10px;"></span>
              </div>
            </div>
            <div class="card-body">
              <div class="media">
                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                <div class="media-body">
                  <div class="media_body_more">
                    <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                    <div class="videoMore1">
                      <div>
                        <div class="dropdown">
                          <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-ellipsis-vertical fa-2x"></i>
                          </div>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                  <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card-container">
            <div class="main_video_container">
              <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
              <div class="videoTimeBackGround">
                <span class="videoTime" style="color: white;">20:00</span>
                <span class="videoHover" style="font-size:10px;"></span>
              </div>
            </div>
            <div class="card-body">
              <div class="media">
                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                <div class="media-body">
                  <div class="media_body_more">
                    <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                    <div class="videoMore1">
                      <div>
                        <div class="dropdown">
                          <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-ellipsis-vertical fa-2x"></i>
                          </div>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                  <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card-container">
            <div class="main_video_container">
              <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
              <div class="videoTimeBackGround">
                <span class="videoTime" style="color: white;">20:00</span>
                <span class="videoHover" style="font-size:10px;"></span>
              </div>
            </div>
            <div class="card-body">
              <div class="media">
                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                <div class="media-body">
                  <div class="media_body_more">
                    <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                    <div class="videoMore1">
                      <div>
                        <div class="dropdown">
                          <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-ellipsis-vertical fa-2x"></i>
                          </div>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                  <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card-container">
            <div class="main_video_container">
              <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
              <div class="videoTimeBackGround">
                <span class="videoTime" style="color: white;">20:00</span>
                <span class="videoHover" style="font-size:10px;"></span>
              </div>
            </div>
            <div class="card-body">
              <div class="media">
                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                <div class="media-body">
                  <div class="media_body_more">
                    <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                    <div class="videoMore1">
                      <div>
                        <div class="dropdown">
                          <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-ellipsis-vertical fa-2x"></i>
                          </div>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                  <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card-container">
            <div class="main_video_container">
              <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
              <div class="videoTimeBackGround">
                <span class="videoTime" style="color: white;">20:00</span>
                <span class="videoHover" style="font-size:10px;"></span>
              </div>
            </div>
            <div class="card-body">
              <div class="media">
                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                <div class="media-body">
                  <div class="media_body_more">
                    <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                    <div class="videoMore1">
                      <div>
                        <div class="dropdown">
                          <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-ellipsis-vertical fa-2x"></i>
                          </div>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                  <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
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
              <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
              <div class="videoTimeBackGround">
                <span class="videoTime" style="color: white;">20:00</span>
                <span class="videoHover" style="font-size:10px;"></span>
              </div>
            </div>
            <div class="card-body">
              <div class="media">
                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                <div class="media-body">
                  <div class="media_body_more">
                    <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                    <div class="videoMore1">
                      <div>
                        <div class="dropdown">
                          <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-ellipsis-vertical fa-2x"></i>
                          </div>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                  <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card-container">
            <div class="main_video_container">
              <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
              <div class="videoTimeBackGround">
                <span class="videoTime" style="color: white;">20:00</span>
                <span class="videoHover" style="font-size:10px;"></span>
              </div>
            </div>
            <div class="card-body">
              <div class="media">
                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                <div class="media-body">
                  <div class="media_body_more">
                    <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                    <div class="videoMore1">
                      <div>
                        <div class="dropdown">
                          <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-ellipsis-vertical fa-2x"></i>
                          </div>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                  <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card-container">
            <div class="main_video_container">
              <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
              <div class="videoTimeBackGround">
                <span class="videoTime" style="color: white;">20:00</span>
                <span class="videoHover" style="font-size:10px;"></span>
              </div>
            </div>
            <div class="card-body">
              <div class="media">
                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                <div class="media-body">
                  <div class="media_body_more">
                    <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                    <div class="videoMore1">
                      <div>
                        <div class="dropdown">
                          <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-ellipsis-vertical fa-2x"></i>
                          </div>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                  <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card-container">
            <div class="main_video_container">
              <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
              <div class="videoTimeBackGround">
                <span class="videoTime" style="color: white;">20:00</span>
                <span class="videoHover" style="font-size:10px;"></span>
              </div>
            </div>
            <div class="card-body">
              <div class="media">
                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                <div class="media-body">
                  <div class="media_body_more">
                    <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                    <div class="videoMore1">
                      <div>
                        <div class="dropdown">
                          <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-ellipsis-vertical fa-2x"></i>
                          </div>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                  <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card-container">
            <div class="main_video_container">
              <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
              <div class="videoTimeBackGround">
                <span class="videoTime" style="color: white;">20:00</span>
                <span class="videoHover" style="font-size:10px;"></span>
              </div>
            </div>
            <div class="card-body">
              <div class="media">
                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                <div class="media-body">
                  <div class="media_body_more">
                    <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                    <div class="videoMore1">
                      <div>
                        <div class="dropdown">
                          <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-ellipsis-vertical fa-2x"></i>
                          </div>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                  <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
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
              <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
              <div class="videoTimeBackGround">
                <span class="videoTime" style="color: white;">20:00</span>
                <span class="videoHover" style="font-size:10px;"></span>
              </div>
            </div>
            <div class="card-body">
              <div class="media">
                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                <div class="media-body">
                  <div class="media_body_more">
                    <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                    <div class="videoMore1">
                      <div>
                        <div class="dropdown">
                          <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-ellipsis-vertical fa-2x"></i>
                          </div>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                  <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card-container">
            <div class="main_video_container">
              <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
              <div class="videoTimeBackGround">
                <span class="videoTime" style="color: white;">20:00</span>
                <span class="videoHover" style="font-size:10px;"></span>
              </div>
            </div>
            <div class="card-body">
              <div class="media">
                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                <div class="media-body">
                  <div class="media_body_more">
                    <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                    <div class="videoMore1">
                      <div>
                        <div class="dropdown">
                          <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-ellipsis-vertical fa-2x"></i>
                          </div>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                  <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card-container">
            <div class="main_video_container">
              <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
              <div class="videoTimeBackGround">
                <span class="videoTime" style="color: white;">20:00</span>
                <span class="videoHover" style="font-size:10px;"></span>
              </div>
            </div>
            <div class="card-body">
              <div class="media">
                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                <div class="media-body">
                  <div class="media_body_more">
                    <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                    <div class="videoMore1">
                      <div>
                        <div class="dropdown">
                          <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-ellipsis-vertical fa-2x"></i>
                          </div>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                  <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card-container">
            <div class="main_video_container">
              <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
              <div class="videoTimeBackGround">
                <span class="videoTime" style="color: white;">20:00</span>
                <span class="videoHover" style="font-size:10px;"></span>
              </div>
            </div>
            <div class="card-body">
              <div class="media">
                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                <div class="media-body">
                  <div class="media_body_more">
                    <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                    <div class="videoMore1">
                      <div>
                        <div class="dropdown">
                          <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-ellipsis-vertical fa-2x"></i>
                          </div>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                  <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card-container">
            <div class="main_video_container">
              <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
              <div class="videoTimeBackGround">
                <span class="videoTime" style="color: white;">20:00</span>
                <span class="videoHover" style="font-size:10px;"></span>
              </div>
            </div>
            <div class="card-body">
              <div class="media">
                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                <div class="media-body">
                  <div class="media_body_more">
                    <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                    <div class="videoMore1">
                      <div>
                        <div class="dropdown">
                          <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-ellipsis-vertical fa-2x"></i>
                          </div>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                  <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
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
              <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
              <div class="videoTimeBackGround">
                <span class="videoTime" style="color: white;">20:00</span>
                <span class="videoHover" style="font-size:10px;"></span>
              </div>
            </div>
            <div class="card-body">
              <div class="media">
                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                <div class="media-body">
                  <div class="media_body_more">
                    <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                    <div class="videoMore1">
                      <div>
                        <div class="dropdown">
                          <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-ellipsis-vertical fa-2x"></i>
                          </div>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                  <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card-container">
            <div class="main_video_container">
              <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
              <div class="videoTimeBackGround">
                <span class="videoTime" style="color: white;">20:00</span>
                <span class="videoHover" style="font-size:10px;"></span>
              </div>
            </div>
            <div class="card-body">
              <div class="media">
                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                <div class="media-body">
                  <div class="media_body_more">
                    <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                    <div class="videoMore1">
                      <div>
                        <div class="dropdown">
                          <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-ellipsis-vertical fa-2x"></i>
                          </div>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                  <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card-container">
            <div class="main_video_container">
              <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
              <div class="videoTimeBackGround">
                <span class="videoTime" style="color: white;">20:00</span>
                <span class="videoHover" style="font-size:10px;"></span>
              </div>
            </div>
            <div class="card-body">
              <div class="media">
                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                <div class="media-body">
                  <div class="media_body_more">
                    <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                    <div class="videoMore1">
                      <div>
                        <div class="dropdown">
                          <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-ellipsis-vertical fa-2x"></i>
                          </div>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                  <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card-container">
            <div class="main_video_container">
              <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
              <div class="videoTimeBackGround">
                <span class="videoTime" style="color: white;">20:00</span>
                <span class="videoHover" style="font-size:10px;"></span>
              </div>
            </div>
            <div class="card-body">
              <div class="media">
                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                <div class="media-body">
                  <div class="media_body_more">
                    <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                    <div class="videoMore1">
                      <div>
                        <div class="dropdown">
                          <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-ellipsis-vertical fa-2x"></i>
                          </div>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                  <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card-container">
            <div class="main_video_container">
              <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
              <div class="videoTimeBackGround">
                <span class="videoTime" style="color: white;">20:00</span>
                <span class="videoHover" style="font-size:10px;"></span>
              </div>
            </div>
            <div class="card-body">
              <div class="media">
                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                <div class="media-body">
                  <div class="media_body_more">
                    <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                    <div class="videoMore1">
                      <div>
                        <div class="dropdown">
                          <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-ellipsis-vertical fa-2x"></i>
                          </div>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                  <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
                </div>
              </div>
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



      var count = 5
      window.onscroll = function () {
        if((window.innerHeight + window.scrollY) >= document.body.offsetHeight) {
          var toAdd = document.createElement('div')
          toAdd.classList.add('row')
          toAdd.classList.add('row-cols-5')
          var contents_card = `<div class="col">
          <div class="card-container">
            <div class="main_video_container">
              <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
              <div class="videoTimeBackGround">
                <span class="videoTime" style="color: white;">20:00</span>
                <span class="videoHover" style="font-size:10px;"></span>
              </div>
            </div>
            <div class="card-body">
              <div class="media">
                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                <div class="media-body">
                  <div class="media_body_more">
                    <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                    <div class="videoMore1">
                      <div>
                        <div class="dropdown">
                          <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-ellipsis-vertical fa-2x"></i>
                          </div>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                  <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card-container">
            <div class="main_video_container">
              <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
              <div class="videoTimeBackGround">
                <span class="videoTime" style="color: white;">20:00</span>
                <span class="videoHover" style="font-size:10px;"></span>
              </div>
            </div>
            <div class="card-body">
              <div class="media">
                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                <div class="media-body">
                  <div class="media_body_more">
                    <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                    <div class="videoMore1">
                      <div>
                        <div class="dropdown">
                          <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-ellipsis-vertical fa-2x"></i>
                          </div>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                  <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card-container">
            <div class="main_video_container">
              <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
              <div class="videoTimeBackGround">
                <span class="videoTime" style="color: white;">20:00</span>
                <span class="videoHover" style="font-size:10px;"></span>
              </div>
            </div>
            <div class="card-body">
              <div class="media">
                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                <div class="media-body">
                  <div class="media_body_more">
                    <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                    <div class="videoMore1">
                      <div>
                        <div class="dropdown">
                          <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-ellipsis-vertical fa-2x"></i>
                          </div>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                  <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card-container">
            <div class="main_video_container">
              <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
              <div class="videoTimeBackGround">
                <span class="videoTime" style="color: white;">20:00</span>
                <span class="videoHover" style="font-size:10px;"></span>
              </div>
            </div>
            <div class="card-body">
              <div class="media">
                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                <div class="media-body">
                  <div class="media_body_more">
                    <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                    <div class="videoMore1">
                      <div>
                        <div class="dropdown">
                          <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-ellipsis-vertical fa-2x"></i>
                          </div>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                  <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card-container">
            <div class="main_video_container">
              <img src="/resources/css/img/dog.png" class="card-img-top" alt="...">
              <div class="videoTimeBackGround">
                <span class="videoTime" style="color: white;">20:00</span>
                <span class="videoHover" style="font-size:10px;"></span>
              </div>
            </div>
            <div class="card-body">
              <div class="media">
                <img src="/resources/css/img/human.jpg" class="align-self-start mr-3" alt="..."
                     style="width: 36px; height: 36px; position: relative; z-index: 1;">
                <div class="media-body">
                  <div class="media_body_more">
                    <h6 class="mt-0">[동물농장] 강아지가 너무 귀엽다&nbsp;</h6>
                    <div class="videoMore1">
                      <div>
                        <div class="dropdown">
                          <div class="dropdown video_dropdown dropdownMenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            <i class="fa fa-ellipsis-vertical fa-2x"></i>
                          </div>
                          <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa-solid fa-clock fa-lg"></i>&nbsp;나중에 볼 동영상에 저장</a>
                            <a class="dropdown-item" href="javascript: void(0)"><i class="fa fa-circle-plus fa-lg"></i>&nbsp;재생목록에 저장</a>
                          </div>
                        </div>
                      </div>
                    </div>
                  </div>
                  <p class="video_info" style="font-size: 14px;">sbs 동물농장</p>
                  <p class="video_info" style="font-size: 14px;"> 조회수 1억회 ·1달 전</p>
                </div>
              </div>
            </div>
          </div>
        </div>`
          toAdd.innerHTML = contents_card
          document.querySelector('.content-wrapper').appendChild(toAdd)
        }
      }


    </script>
    </body>
    </html>