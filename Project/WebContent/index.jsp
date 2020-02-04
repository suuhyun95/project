<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
<!-- xeicon -->
        <link rel="stylesheet" href="//cdn.jsdelivr.net/xeicon/2/xeicon.min.css">
<!-- fullPage.js -->
        <link rel="stylesheet" type="text/css" href="./fullpage/jquery.fullPage.css" />
        <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
        <!-- This following line is optional. Only necessary if you use the option css3:false and you want to use other easing effects rather than "linear", "swing" or "easeInOutCubic". -->
        <script src="./fullpage/vendors/jquery.easings.min.js"></script>
        <!-- This following line is only necessary in the case of using the plugin option `scrollOverflow:true` -->
        <script type="text/javascript" src="./fullpage/vendors/scrolloverflow.min.js"></script>
        <script type="text/javascript" src="./fullpage/jquery.fullPage.js"></script>
        <script>
        $(function() {
            $('#fullpage').fullpage({
                //Navigation
                menu: '#menu',
                lockAnchors: true,
                anchors:['firstPage', 'secondPage', 'thirdPage','fourthPage','fifthPage'],
                navigation: true,
                navigationPosition: 'left',
                navigationTooltips: ['firstSlide', 'secondSlide','thirdSlide','fourthSlide','fifthSlide'],
                showActiveTooltip: false,
                slidesNavigation: true,
                slidesNavPosition: 'bottom'
            });
/* sec4 더보기 버튼 클릭했을때 */
            $('#story_more').on('click',function(){
                location.href='http://welfare.childfund.or.kr/contents/greenList.do#reportReview';
            });
// section3 동영상 확대보기
            $('.zoom_1').on('click',function(){
                $('.p_bg_black').fadeIn(300);
                $('#story_vd1').removeClass('story_vd1');
                $('#story_vd1').addClass('story_vd_toggle1');
                $('#story_vd1').attr('src','https://www.youtube.com/embed/feP1BmAX4-4?autoplay=1');
            });
            $('.p_bg_black').on('click',function(){
                $('.p_bg_black').fadeOut(300);
                $('#story_vd1').removeClass('story_vd_toggle1');
                $('#story_vd1').addClass('story_vd1');
                $('#story_vd1').attr('src','https://www.youtube.com/embed/feP1BmAX4-4');
            });
            $('.zoom_2').on('click',function(){
                $('.p_bg_black').fadeIn(300);
                $('#story_vd2').removeClass('story_vd2');
                $('#story_vd2').addClass('story_vd_toggle1');
                $('#story_vd2').attr('src','https://www.youtube.com/embed/8TGJ2sNj1QY?autoplay=1');
            });
            $('.p_bg_black').on('click',function(){
                $('.p_bg_black').fadeOut(300);
                $('#story_vd2').removeClass('story_vd_toggle1');
                $('#story_vd2').addClass('story_vd2');
                $('#story_vd2').attr('src','https://www.youtube.com/embed/8TGJ2sNj1QY');
            });
            $('.zoom_3').on('click',function(){
                $('.p_bg_black').fadeIn(300);
                $('#story_vd3').removeClass('story_vd3');
                $('#story_vd3').addClass('story_vd_toggle1');
                $('#story_vd3').attr('src','https://www.youtube.com/embed/mzChaSSphGE?autoplay=1');
            });
            $('.p_bg_black').on('click',function(){
                $('.p_bg_black').fadeOut(300);
                $('#story_vd3').removeClass('story_vd_toggle1');
                $('#story_vd3').addClass('story_vd3');
                $('#story_vd3').attr('src','https://www.youtube.com/embed/mzChaSSphGE');
            });
/* sec5 후원하기 버튼 클릭했을때 */
            $('#video_btn').on('click',function(){
                location.href='https://support.childfund.or.kr/regular/support.do?ret=R';
            });
/* sec1 메인 mouseenter, mouseleave */
            $('#m_title').mouseenter(function(){
                $('#bg1black')
                .css('background-color','rgba(0,0,0,0)')
                .css('transition','all 0.2s linear');
            });
            $('#m_title').mouseleave(function(){
                $('#bg1black')
                .css('background-color','rgba(0,0,0,0.5)')
                .css('transition','all 0.2s linear');
            });
        });
        </script>
        <style>
            @import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
            *{
                margin:0px;
                padding:0px;
                font-family:'nanumgothic';
            }
            html, body{
                width:100%;
                height:100%;
            }
            video{
                width:100%;
                height:100%;
            }
/* section1 */
            .bgColor1{
                background-image:url('./image/family.jpg');
                background-repeat:no-repeat;
                background-position:50% 50%;
                background-size:cover;
                width:100%;
                height:100%;
            }
            .bg1black{
                width:100%;
                height:100%;
                background-color:rgba(0,0,0,0.5);
            }
            .m_title{
                width:900px;
                height:150px;
                border:7px solid #fff;
                text-align:center;
                line-height:70px;
                box-shadow:2px 2px 2px #606060;
                position:absolute;
                top:50%;
                left:50%;
                margin-left:-450px;
                margin-top:-200px;
            }
            .main_title{
                color:#fff;
                font-size:35px;
                font-weight:bold;
            }
            .sub_title{
                color:#fff;
                font-size:18px;
            }
            .main_logo{
                background-image:url('./image/logo.png');
                background-repeat:no-repeat;
                background-position:50% 50%;
                background-size:stain;
                width:200px;
                height:80px;
                position:absolute;
                top:0;
                left:0;
                margin-left:100px;
                margin-top:50px;
            }

            .arrow{
                position: absolute;
                bottom: 5%;
                left: 50%;
                width: 160px;
                height: 101px;
                margin-left: -75px;
                background: url(./image/naxt_arrow.png) no-repeat center bottom;
                animation: bounce-arrow 2s infinite ease-in-out;
                color: #fff;
                font-family: 'nanumgothic';
                font-weight: 400;
                font-size: 16px;
                text-align: center;
            }
            @keyframes bounce-arrow {
                0% {bottom: 40px;}
                50% {bottom: 60px;}
                100% {bottom: 40px;}
            }
/* section2 */
            .bgColor5{
                background-image:url('./image/heart.jpg');
                background-repeat:no-repeat;
                width:100%;
                height:100%;
                background-position:50% 50%;
                background-size:100% 100%;
            }         
            .sec1_logo{
                background-image:url('./image/logo.png');
                background-repeat:no-repeat;
                background-position:50% 50%;
                background-size:stain;
                width:200px;
                height:80px;
                position:absolute;
                top:0;
                left:0;
                margin-left:100px;
                margin-top:50px;
            }  
            .sec1_1_img{
                background-image:url('./image/poverty_business1.jpg');
                background-repeat:no-repeat;
                background-position:50% 50%;
                background-size:cover;
                width:350px;
                height:220px;
                display:inline-block;
                border:0px solid white;
                border-radius:40px 0 0 0;
                float:left;
                margin-left:20px;
                margin-top:20px;
            }
            .sec1_1_exp{
                width:350px;
                height:170px;
                background-color:#fff;
                color:#505050;
                font-size:13px;
                line-height:30px;
                text-align:center;
                padding-top:50px;
                display:inline-block;
                margin-top:20px;
            }
            .sec1_2_img{
                background-image:url('./image/poverty_business2.jpg');
                background-repeat:no-repeat;
                background-position:50% 50%;
                background-size:cover;
                width:350px;
                height:220px;
                display:inline-block;
            }
            .sec1_2_exp{
                width:350px;
                height:170px;
                background-color:#fff;
                color:#505050;
                font-size:13px;
                line-height:30px;
                text-align:center;
                display:inline-block;
                padding-top:50px;
                float:left;
                margin-left:20px;
            }
            .sec1_3_img{
                background-image:url('./image/poverty_business3.jpg');
                background-repeat:no-repeat;
                background-position:50% 50%;
                background-size:cover;
                width:350px;
                height:220px;
                display:inline-block;
                float:left;
                margin-left:20px;
            }
            .sec1_3_exp{
                width:350px;
                height:170px;
                background-color:#fff;
                color:#505050;
                font-size:13px;
                line-height:30px;
                text-align:center;
                padding-top:50px;
                display:inline-block;
                float:left;
            }
            .sec1_4_img{
                background-image:url('./image/poverty_business4.jpg');
                background-repeat:no-repeat;
                background-position:50% 50%;
                background-size:cover;
                width:350px;
                height:220px;
                border:0px solid white;
                border-radius:0 0 40px 0;
                display:inline-block;
            }
            .sec1_4_exp{
                width:350px;
                height:170px;
                background-color:#fff;
                color:#505050;
                font-size:13px;
                line-height:30px;
                text-align:center;
                display:inline-block;
                padding-top:50px;
                float:left;
                margin-left:20px;
            }
            .sec1_span{
                font-size:20px;
                font-weight:bold;
            }
            .sec1_right_wrap{
                width:735px;
                height:100%;
                float:right;
                background-color:#fff;
                display:inline-block;
            }
            .sec1_left_wrap{
                width:570px;
                height:700px;
                margin-top:150px;
                background-color:rgba(255,255,255,0.5);
                display:inline-block;
                margin-left:100px;
                border:0px solid #fff;
                border-radius:40px;
            }
            .sec1_left1{
                font-size:26px;
                font-weight:bold;
                margin-top:120px;
                margin-left:50px;
            }
            .sec1_left2{
                font-size:26px;
                font-weight:bold;
                color:#4cb848;
                margin-left:50px;
            }
            .sec1_left3{
                font-size:26px;
                font-weight:bold;
                margin-left:50px;
            }
            .sec1_left4{
                margin-top:60px;
                line-height:30px;
                text-align:center;
            }

/* section3 */
            .bgColor2{
                background-color:#cadb2a;
            }
            .support1{
                width:100%;
                height:100%;
            }
            .logo1{
                background-image:url('./image/logo.png');
                width:200px;
                height:80px;
                background-repeat:no-repeat;
                background-position:50% 50%;
                background-size:stain;
                margin-left:100px;
                margin-top:50px;
                float:left;
            }
            .support1_title{
                padding-top:100px;
                width:900px;
                height:150px;
                margin:0 auto;
                font-size:40px;
                font-weight:bold;
                text-align:center;
            }
            .support1_stitle{
                font-size:18px;
                width:900px;
                height:60px;
                margin:0 auto;
                text-align:center;
                line-height:30px;
                margin-top:30px;
            }
            .support_sub{
                clear:both;
                width:1000px;
                height:500px;
                background-color:rgba(1,101,47,0.4);
                margin:50px auto;
            }
            .support_sub1{
                display:inline-block;
                width:300px;
                height:200px;
                background-image:url('./image/img_regular_play.jpg');
                background-repeat:no-repeat;
                background-position:50% 50%;
                background-size:cover;
                margin-top:50px;
                margin-left:50px;
                float:left;
            }
            .support_cover1{
                width:300px;
                height:140px;
                background-color:rgba(0,0,0,0.7);
                color:rgb(255,255,255);
                font-size:14px;
                font-weight:lighter;
                text-align:center;
                line-height:25px;
                padding-top:60px;
                visibility:hidden;
            }
            .support_sub1:hover .support_cover1{
                visibility:visible;
            }
            .support_sub2{
                display:inline-block;
                width:300px;
                height:200px;
                background-image:url('./image/img_regular_content-01.jpg');
                background-repeat:no-repeat;
                background-position:50% 50%;
                background-size:cover;
                margin-top:50px;
                float:left;
            }
            .support_cover2{
                width:300px;
                height:150px;
                background-color:rgba(0,0,0,0.7);
                color:rgb(255,255,255);
                font-size:14px;
                font-weight:lighter;
                text-align:center;
                line-height:25px;
                padding-top:50px;
                visibility:hidden;
            }
            .support_cover_22{
                font-size:16px;
                font-weight:bold;
                color:gold;
            }
            .support_sub2:hover .support_cover2{
                visibility:visible;
            }
            .support_sub3{
                display:inline-block;
                width:300px;
                height:200px;
                background-image:url('./image/img_regular_content-02.jpg');
                background-repeat:no-repeat;
                background-position:50% 50%;
                background-size:cover;
                margin-top:50px;
                float:left;
            }
            .support_cover3{
                width:300px;
                height:150px;
                background-color:rgba(0,0,0,0.7);
                color:rgb(255,255,255);
                font-size:14px;
                font-weight:lighter;
                text-align:center;
                line-height:25px;
                padding-top:50px;
                visibility:hidden;
            }
            .support_cover_33{
                font-size:16px;
                font-weight:bold;
                color:gold;
            }
            .support_sub3:hover .support_cover3{
                visibility:visible;
            }
            .support_sub4{
                display:inline-block;
                width:300px;
                height:200px;
                background-image:url('./image/img_regular_content-03.jpg');
                background-repeat:no-repeat;
                background-position:50% 50%;
                background-size:cover;
                margin-left:50px;
                float:left;
            }
            .support_cover4{
                width:300px;
                height:150px;
                background-color:rgba(0,0,0,0.7);
                color:rgb(255,255,255);
                font-size:14px;
                font-weight:lighter;
                text-align:center;
                line-height:25px;
                padding-top:50px;
                visibility:hidden;
            }
            .support_cover_44{
                font-size:16px;
                font-weight:bold;
                color:gold;
            }
            .support_sub4:hover .support_cover4{
                visibility:visible;
            }
            .support_sub5{
                display:inline-block;
                width:300px;
                height:200px;
                background-image:url('./image/img_regular_content-04.jpg');
                background-repeat:no-repeat;
                background-position:50% 50%;
                background-size:cover;
                float:left;
            }
            .support_cover5{
                width:300px;
                height:150px;
                background-color:rgba(0,0,0,0.7);
                color:rgb(255,255,255);
                font-size:14px;
                font-weight:lighter;
                text-align:center;
                line-height:25px;
                padding-top:50px;
                visibility:hidden;
            }
            .support_cover_55{
                font-size:16px;
                font-weight:bold;
                color:gold;
            }
            .support_sub5:hover .support_cover5{
                visibility:visible;
            }
            .support_sub6{
                display:inline-block;
                width:300px;
                height:200px;
                background-image:url('./image/img_regular_content-06.jpg');
                background-repeat:no-repeat;
                background-position:50% 50%;
                background-size:cover;
                float:left;
            }
            .support_cover6{
                clear:both;
                width:300px;
                height:150px;
                background-color:rgba(0,0,0,0.7);
                color:rgb(255,255,255);
                font-size:14px;
                font-weight:lighter;
                text-align:center;
                line-height:25px;
                padding-top:50px;
                visibility:hidden;
            }
            .support_cover_66{
                font-size:16px;
                font-weight:bold;
                color:gold;
            }
            .support_sub6:hover .support_cover6{
                visibility:visible;
            }
/* section4 */
            .story1{
                width:100%;
                height:100%;
            }
            .bgColor3{
                background-image:url('./image/bg3.jpg');
                background-repeat:no-repeat;
                background-position:50% 50%;
                background-size:cover;
                width:100%;
                height:100%;
            }
            .bg_black{
                background-color:rgba(0,0,0,0.4);
                width:100%;
                height:100%;
            }
            .logo2{
                background-image:url('./image/logo.png');
                width:200px;
                height:80px;
                background-repeat:no-repeat;
                background-position:50% 50%;
                background-size:stain;
                margin-left:100px;
                margin-top:50px;
                display:inline-block;
                float:left;

            }
            .story_title{
                width:1000px;
                height:200px;
                margin:0 auto ;
                text-align:center;
                padding-top:250px;
            }
            .story_title1{
                color:#fff;
                font-size:50px;
                font-weight:bold;
                margin-bottom:20px;
                padding-left:25px;
            }
            .story_title2{
                color:#fff;
                font-size:20px;
            }
            .story_vd_position{
                width:1000px;
                height:270px;
                position:absolute;
                top:45%;
                left:50%;
                margin-left:-475px;
                border-bottom:2px solid #fff;
            }
            .story_vd1{
                width:290px;
                height:200px;
                display:inline-block;
                border:8px solid rgba(0,0,0,0);
                float:left;
                margin: 10px 10px 10px 21px;
            }
            .story_vd1:hover{
                border:8px solid #fff;
            }
            .story_vd2{
                width:290px;
                height:200px;
                display:inline-block;
                border:8px solid rgba(0,0,0,0);
                float:left;
                margin: 10px;
            }
            .story_vd2:hover{
                border:8px solid #fff;
            }
            .story_vd3{
                width:290px;
                height:200px;
                display:inline-block;
                border:8px solid rgba(0,0,0,0);
                float:left;
                margin: 10px 21px 10px 10px;
            }
            .story_vd3:hover{
                border:8px solid #fff;
            }
            .story_vd_toggle1{
                position:absolute;
                z-index:1;
                border:8px solid transparent;
                top:50%;
                left:50%;
                margin-top:-400px;
                margin-left:-400px;
                width:800px;
                height:600px;
            }
            .xi-zoom-in{
                color:#f0f0f0;
                display:inline-block;
                width:306px;
                text-align:center;
                float:left;
                cursor:pointer;
            }
            .zoom_1{
                margin: 0 10px 0 21px;
            }
            .zoom_2{
                margin: 0 10px 0 10px;
            }
            .zoom_3{
                margin: 0 21px 0 10px;
            }
            .story_bottom{
                width:1000px;
                height:100px;
                text-align:center;
                position:absolute;
                top:100%;
                left:50%;
                margin-top:-230px;
                margin-left:-475px;
            }
            .story_bt{
                height:30px;
                line-height:30px;
                text-align:center;
                color:#fff;
            }
            .story_more{
                width:200px;
                height:40px;
                margin:20px auto 0 auto;
                border:2px solid #fff;
                color:#fff;
                text-align:center;
                line-height:40px;
                font-size:20px;
                font-weight:bold;
                cursor:pointer;
            }
            .story_more:hover{
                background-color:rgba(255,255,255,0.2);
            }
            .p_bg_black{
                position:absolute;
                width:100%;
                height:100%;
                top:0;
                left:0;
                background-color:rgba(0,0,0,1);
                display:none;
            }
/* section5 video */
            .video_bg{
                position:absolute;
                top:0;
                left:0;
                width:100%;
                height:100%;
                background-color:rgba(0,0,0,0.2);
            }
            .video_position{
                width:500px;
                height:150px;
                text-align:center;
                margin-top:45%;
                margin-left:68%;
            }
            .video_title{
                color:#fff;
                font-size:25px;
                font-weight:bold;
                margin: auto;
                width:320px;
                height:60px;
                line-height:30px;
            }
            .video_btn{
                width:320px;
                height:50px;
                border:3px solid #fff;
                color:#fff;
                font-size:20px;
                font-weight:bold;
                text-align:center;
                line-height:50px;
                margin: 30px auto;
                cursor:pointer;
            }
        </style>
    </head>
    <body>
        <div id="fullpage">
            <div class="section bgColor1">
                <div id="bg1black" class="bg1black"></div>
                <div id="m_title" class="m_title">
                    <p class="main_title">어린이가 행복한 세상, 초록우산 어린이재단이 만듭니다.</p>
                    <p class="sub_title">빈곤가정 아이들이 꿈을 활짝! 펼칠 수 있도록 돕습니다.</p>
                </div>
                <div class="main_logo"></div>
                <div class="arrow">스크롤을 내려주세요.</div>
            </div>
            <div class="section bgColor5">
                <div class="sec1_logo"></div>
                <div class="sec1_left_wrap">
                    <p class="sec1_left1">우리 아이들에게</p>
                    <p class="sec1_left2">건강한 아동으로 자라기 위한 어른들의 배려가</p>
                    <p class="sec1_left3">필요합니다.</p>
                    <p class="sec1_left4">
                        가정해체, 실업, 근로빈곤층(working poor, 일을 해도 빈곤층에서<br>
                        벗어나지 못하는 계층)등 대한민국에서 외환위기 이후로 급격히<br>
                        늘어난 사회문제에 대한 피해자는 사회적 약자, 그중에서도<br>
                        어린이들입니다. 사회문제로 인한 가정 내의 빈곤과 가정해체로 인해<br>
                        건강한 음식을 먹고, 안정적인 집에서 지내고, 충분한 교육을 받으며<br>
                        뛰어놀아야 할 아동들이 피해를 겪고 있습니다. 아동 문제에 대한 <br>
                        정책적인 접근과 지원, 법 개정이 이루어졌지만, 현실적인 빈곤 <br>
                        문제 해결과 복지사각지대 해소를 기대하기 어려운 상황입니다.<br>
                        그렇기에 아동의 발달에 직접적인 지원을 할 수 있도록 <br>
                        민간 차원에서의 후원금 지원이 필요합니다.</p>
                </div>
                <div class="sec1_right_wrap">
                    <div class="sec1_1">
                        <div class="sec1_1_img"></div>
                        <div class="sec1_1_exp">
                            <span class="sec1_span">보육비 지원</span><br>
                                아동이 기본적인 생활을 하는 데 필요한 것을 지원하며<br>
                                분유값, 기저귀값, 난방비, 생활용품비, 부식비 지원을 통해<br>
                                아동의 건강한 성장을 돕습니다.
                        </div>
                    </div>
                    <div class="sec1_2">
                        <div class="sec1_2_img"></div>
                        <div class="sec1_2_exp">
                            <span class="sec1_span">학습비 지원</span><br>
                                아동이 건강한 사회인으로 성장할 수 있도록 교육 및<br>
                                학업에 관련한 비용을 지원합니다. 교재 교구비, 교복비,<br>
                                학원비, 등하교 교통비 등을 지원하고 있습니다.
                        </div>
                    </div>
                    <div class="sec1_3">
                        <div class="sec1_3_img"></div>
                        <div class="sec1_3_exp">
                            <span class="sec1_span">의료비 지원</span><br>
                                치료비와 수술비의 부담으로 인해 치료를 받지 못하는<br>
                                아동을 위해 의료비를 지원합니다. 치료비, 수술비, 약값,<br>
                                의료 보장구, 심리치료비 등 아동의 몸과 마음의 건강한<br>
                                성장을 위해 의료비를 지원하고 있습니다.
                        </div>
                    </div>
                    <div class="sec1_4">
                        <div class="sec1_4_img"></div>
                        <div class="sec1_4_exp">
                            <span class="sec1_span">주거비 지원</span><br>
                                과도한 주거비 부담과 열악한 주거환경으로 인해 어려움을<br>
                                겪는 저소득 가정에 임대보증금, 월세, 개보수 및 신축 비용<br>
                                등을 지원하고 있습니다.
                        </div>
                    </div>
                </div>
            </div>
            <div class="section bgColor2">
                <div class="support1">
                    <div class="logo1"></div>
                    <div class="support1_title">"후원자분들의 사랑과 관심이<br>아이들의 미래를 밝힙니다."</div>
                    <div class="support1_stitle">여러분의 소중한 후원금은 ‘민들레기금’으로 적립되어<br>어린이재단의 아동복지사업을 위해 사용됩니다.</div>
                    <div class="support_sub">
                        <div class="support_sub1">
                            <div class="support_cover1">
                                <p>후원금은 도움이 필요한 아이들을 위해<br>소중히 사용됩니다.
                                여러분의 도움으로<br>소외된 아이들이 밝고 건강하게 자라납니다.</p>
                            </div>
                        </div>
                        <div class="support_sub2">
                            <div class="support_cover2">
                                <p class="support_cover_22">국내아동지원</p>
                                <p>저소득가정 아이들이 건강하고 행복하게 자랄 수<br>
                                있도록 생존, 보호, 발달, 참여 전반에 걸쳐<br>
                                경제적, 정서적 지원을 합니다.</p>
                            </div>
                        </div>
                        <div class="support_sub3">
                            <div class="support_cover3">
                                <p class="support_cover_33">해외아동지원</p>
                                <p>해외아동이 가난과 질병의 고통에서 벗어나<br>
                                생애주기에 맞추어 건강하게 성장하고,<br>
                                어른이 되면 자립할 수 있도록 돕습니다.</p>
                            </div>
                        </div>
                        <div class="support_sub4">
                            <div class="support_cover4">
                                <p class="support_cover_44">북한아동지원</p>
                                <p>북한아동이 끼니를 거르지 않고 정상적으로<br>
                                성장하도록 영양식 제공, 필수 의약품 제공,<br>
                                병원 개.보수 사업 등을 진행합니다.</p>
                            </div>
                        </div>
                        <div class="support_sub5">
                            <div class="support_cover5">
                                <p class="support_cover_55">나눔 SOS</p>
                                <p>천재지변이나 각종 재해 등으로 긴급하게<br>
                                지원이나 도움이 필요한 상황이 발생한경우<br>
                                신속하게 지원합니다.</p>
                            </div>
                        </div>
                        <div class="support_sub6">
                            <div class="support_cover6">
                                <p class="support_cover_66">해외아동결연</p>
                                <p>후원자님과 해외아동이 결연을 맺고<br>
                                교육, 의료, 생계, 시설 지원 등을 통해<br>
                                결연아동의 건강한 성장한 돕습니다.</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="section bgColor3">
                <div class="bg_black">
                    <div class="story1">
                        <div class="logo2"></div>
                        <div class="story_title">
                            <p class="story_title1">"어린이가 행복한 세상"</p>
                            <p class="story_title2">초록우산 어린이재단의 꿈입니다.</p>
                        </div>
                        <div class="story_vd_position">
                            <!-- 비디오태그 사이즈 안먹음, 아이프레임(유튜브) 동영상으로 대체
                                <video class="story_vd1" muted controls><source src="./video/vd1.mp4" type="video/mp4"></video>
                                <video class="story_vd2" muted controls><source src="./video/vd2.mp4" type="video/mp4"></video>
                                <video class="story_vd3" muted controls><source src="./video/vd3.mp4" type="video/mp4"></video>
                                -->
                            <iframe id="story_vd1" class="story_vd1" src="https://www.youtube.com/embed/feP1BmAX4-4" frameborder="0" allowfullscreen muted></iframe>
                            <iframe id="story_vd2" class="story_vd2" src="https://www.youtube.com/embed/8TGJ2sNj1QY" frameborder="0" allowfullscreen muted></iframe>
                            <iframe id="story_vd3" class="story_vd3" src="https://www.youtube.com/embed/mzChaSSphGE" frameborder="0" allowfullscreen muted></iframe>
                            <i class="xi-zoom-in zoom_1">확대보기</i><i class="xi-zoom-in zoom_2">확대보기</i><i class="xi-zoom-in zoom_3">확대보기</i>
                        </div>
                        <div class="story_bottom">
                            <p class="story_bt">생생한 현장소식과, 이웃들의 따듯한 이야기를 만나보세요.</p>
                            <div id="story_more" class="story_more">더보기→</div>
                        </div>
                    </div>
                </div>
                <!-- position:absolute; 비디오 클릭했을때 올라오는 background:black; -->
                <div class="p_bg_black"></div>
            </div>
            <div class="section bgColor4">
                <video data-autoplay id="video" loop muted>
                    <source src="./gu.mp4" type="video/mp4">
                </video>
                <div class="video_bg">
                    <div class="video_position">
                        <p class="video_title">어른들의 사랑과 관심이<br>어린이들의 미래를 밝힙니다.</p>
                        <div id="video_btn" class="video_btn">후원하기</div>
                    </div>
                </div>
            </div>
        </div>
        <%@ include file="/WEB-INF/views/member/memberLogSign.jsp" %>
    </body>
</html>