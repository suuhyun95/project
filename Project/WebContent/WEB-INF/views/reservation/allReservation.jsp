<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css"
	href="<%=request.getContextPath()%>/css/main/main.css">

<!-- 헤더 선언!!-->
<%@ include file="/WEB-INF/views/common/header.jsp"%>
<!-- 사이드메뉴 선언!  -->
<%@ include file="/WEB-INF/views/common/reservation_sidebar.jsp"%>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/common/searchbox.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/reservation/reservation.css" />
<script>
	function modernMuseum(){
		let url = "<%=request.getContextPath()%>/reservation/resInfo/modernMuseum";
		window.open(url, '근대역사박물관', 'width=900, height=800');
	}

 </script>
<div class="gunsan-wrapper">
	<div class="gunsan-page-title">
		<h1>전체</h1>
		<div class="search__container">
			<input type="text" class="search__input" name="searchKeyword"
				placeholder="Search">
		</div>
	</div>
	<div class="booking-container">
		<div class="card shadow-2dp">
			<div id="pic-container">
				<img
					src="<%=request.getContextPath()%>/images/tour_image/박물관전시관/근대역사박물관.jpg"
					alt="" />
				<p id="title"></p>
			</div>
			<div id="caption">

				<p id="description">근대역사박물관</p>

				<div class="booking-buttons">
					<button class="blob-btn">
						예약하기 <span class="blob-btn__inner"> <span
							class="blob-btn__blobs"> <span class="blob-btn__blob"></span>
								<span class="blob-btn__blob"></span> <span
								class="blob-btn__blob"></span> <span class="blob-btn__blob"></span>
						</span>
						</span>
					</button>
					<button class="blob-btn" onclick="modernMuseum();">
						상세보기 <span class="blob-btn__inner"> <span
							class="blob-btn__blobs"> <span class="blob-btn__blob"></span>
								<span class="blob-btn__blob"></span> <span
								class="blob-btn__blob"></span> <span class="blob-btn__blob"></span>
						</span>
						</span>
					</button>

				</div>

			</div>
		</div>
		<div class="card shadow-2dp">
			<div id="pic-container">
				<img
					src="<%=request.getContextPath()%>/images/tour_image/박물관전시관/호남관세박물관.jpg"
					alt="" />
				<p id="title"></p>
			</div>
			<div id="caption">

				<p id="description">호남관세박물관</p>

				<div class="booking-buttons">
					<button class="blob-btn">
						예약하기 <span class="blob-btn__inner"> <span
							class="blob-btn__blobs"> <span class="blob-btn__blob"></span>
								<span class="blob-btn__blob"></span> <span
								class="blob-btn__blob"></span> <span class="blob-btn__blob"></span>
						</span>
						</span>
					</button>
					<button class="blob-btn">
						상세보기 <span class="blob-btn__inner"> <span
							class="blob-btn__blobs"> <span class="blob-btn__blob"></span>
								<span class="blob-btn__blob"></span> <span
								class="blob-btn__blob"></span> <span class="blob-btn__blob"></span>
						</span>
						</span>
					</button>

				</div>

			</div>
		</div>
		<div class="card shadow-2dp">
			<div id="pic-container">
				<img
					src="<%=request.getContextPath()%>/images/tour_image/박물관전시관/구조선은행.jpg"
					alt="" />
				<p id="title"></p>
			</div>
			<div id="caption">

				<p id="description">근대건축관</p>

				<div class="booking-buttons">
					<button class="blob-btn">
						예약하기 <span class="blob-btn__inner"> <span
							class="blob-btn__blobs"> <span class="blob-btn__blob"></span>
								<span class="blob-btn__blob"></span> <span
								class="blob-btn__blob"></span> <span class="blob-btn__blob"></span>
						</span>
						</span>
					</button>
					<button class="blob-btn">
						상세보기 <span class="blob-btn__inner"> <span
							class="blob-btn__blobs"> <span class="blob-btn__blob"></span>
								<span class="blob-btn__blob"></span> <span
								class="blob-btn__blob"></span> <span class="blob-btn__blob"></span>
						</span>
						</span>
					</button>

				</div>

			</div>
		</div>
		<div class="card shadow-2dp">
			<div id="pic-container">
				<img
					src="<%=request.getContextPath()%>/images/tour_image/박물관전시관/구일본18은행.jpg"
					alt="" />
				<p id="title"></p>
			</div>
			<div id="caption">

				<p id="description">근대미술관</p>

				<div class="booking-buttons">
					<button class="blob-btn">
						예약하기 <span class="blob-btn__inner"> <span
							class="blob-btn__blobs"> <span class="blob-btn__blob"></span>
								<span class="blob-btn__blob"></span> <span
								class="blob-btn__blob"></span> <span class="blob-btn__blob"></span>
						</span>
						</span>
					</button>
					<button class="blob-btn">
						상세보기 <span class="blob-btn__inner"> <span
							class="blob-btn__blobs"> <span class="blob-btn__blob"></span>
								<span class="blob-btn__blob"></span> <span
								class="blob-btn__blob"></span> <span class="blob-btn__blob"></span>
						</span>
						</span>
					</button>

				</div>

			</div>
		</div>
	</div>

	<%--두번째 라인 --%>
	<div class="booking-container">
		<div class="card shadow-2dp">
			<div id="pic-container">
				<img
					src="<%=request.getContextPath()%>/images/tour_image/박물관전시관/31기념관.jpg"
					alt="" />
				<p id="title"></p>
			</div>
			<div id="caption">

				<p id="description">군산3.1기념관</p>

				<div class="booking-buttons">
					<button class="blob-btn">
						예약하기 <span class="blob-btn__inner"> <span
							class="blob-btn__blobs"> <span class="blob-btn__blob"></span>
								<span class="blob-btn__blob"></span> <span
								class="blob-btn__blob"></span> <span class="blob-btn__blob"></span>
						</span>
						</span>
					</button>
					<button class="blob-btn">
						상세보기 <span class="blob-btn__inner"> <span
							class="blob-btn__blobs"> <span class="blob-btn__blob"></span>
								<span class="blob-btn__blob"></span> <span
								class="blob-btn__blob"></span> <span class="blob-btn__blob"></span>
						</span>
						</span>
					</button>

				</div>

			</div>
		</div>
		<div class="card shadow-2dp">
			<div id="pic-container">
				<img
					src="<%=request.getContextPath()%>/images/tour_image/레저체험/승마체험.jpg"
					alt="" />
				<p id="title"></p>
			</div>
			<div id="caption">

				<p id="description">승마체험</p>

				<div class="booking-buttons">
					<button class="blob-btn">
						예약하기 <span class="blob-btn__inner"> <span
							class="blob-btn__blobs"> <span class="blob-btn__blob"></span>
								<span class="blob-btn__blob"></span> <span
								class="blob-btn__blob"></span> <span class="blob-btn__blob"></span>
						</span>
						</span>
					</button>
					<button class="blob-btn">
						상세보기 <span class="blob-btn__inner"> <span
							class="blob-btn__blobs"> <span class="blob-btn__blob"></span>
								<span class="blob-btn__blob"></span> <span
								class="blob-btn__blob"></span> <span class="blob-btn__blob"></span>
						</span>
						</span>
					</button>

				</div>

			</div>
		</div>
		<div class="card shadow-2dp">
			<div id="pic-container">
				<img
					src="<%=request.getContextPath()%>/images/tour_image/레저체험/패러글라이딩.jpg"
					alt="" />
				<p id="title"></p>
			</div>
			<div id="caption">

				<p id="description">패러글라이딩</p>

				<div class="booking-buttons">
					<button class="blob-btn">
						예약하기 <span class="blob-btn__inner"> <span
							class="blob-btn__blobs"> <span class="blob-btn__blob"></span>
								<span class="blob-btn__blob"></span> <span
								class="blob-btn__blob"></span> <span class="blob-btn__blob"></span>
						</span>
						</span>
					</button>
					<button class="blob-btn">
						상세보기 <span class="blob-btn__inner"> <span
							class="blob-btn__blobs"> <span class="blob-btn__blob"></span>
								<span class="blob-btn__blob"></span> <span
								class="blob-btn__blob"></span> <span class="blob-btn__blob"></span>
						</span>
						</span>
					</button>

				</div>

			</div>
		</div>
		<div class="card shadow-2dp">
			<div id="pic-container">
				<img
					src="<%=request.getContextPath()%>/images/tour_image/레저체험/짚라인.jpg"
					alt="" />
				<p id="title"></p>
			</div>
			<div id="caption">

				<p id="description">선유스카이 SUN라인</p>

				<div class="booking-buttons">
					<button class="blob-btn">
						예약하기 <span class="blob-btn__inner"> <span
							class="blob-btn__blobs"> <span class="blob-btn__blob"></span>
								<span class="blob-btn__blob"></span> <span
								class="blob-btn__blob"></span> <span class="blob-btn__blob"></span>
						</span>
						</span>
					</button>
					<button class="blob-btn">
						상세보기 <span class="blob-btn__inner"> <span
							class="blob-btn__blobs"> <span class="blob-btn__blob"></span>
								<span class="blob-btn__blob"></span> <span
								class="blob-btn__blob"></span> <span class="blob-btn__blob"></span>
						</span>
						</span>
					</button>

				</div>

			</div>
		</div>


	</div>
	<%--세번째 라인 --%>
	<div class="booking-container">
		<div class="card shadow-2dp">
			<div id="pic-container">
				<img
					src="<%=request.getContextPath()%>/images/tour_image/레저체험/바지락케기.jpg"
					alt="" />
				<p id="title"></p>
			</div>
			<div id="caption">

				<p id="description">바지락케기 체험</p>

				<div class="booking-buttons">
					<button class="blob-btn">
						예약하기 <span class="blob-btn__inner"> <span
							class="blob-btn__blobs"> <span class="blob-btn__blob"></span>
								<span class="blob-btn__blob"></span> <span
								class="blob-btn__blob"></span> <span class="blob-btn__blob"></span>
						</span>
						</span>
					</button>
					<button class="blob-btn">
						상세보기 <span class="blob-btn__inner"> <span
							class="blob-btn__blobs"> <span class="blob-btn__blob"></span>
								<span class="blob-btn__blob"></span> <span
								class="blob-btn__blob"></span> <span class="blob-btn__blob"></span>
						</span>
						</span>
					</button>

				</div>

			</div>
		</div>

		<div class="card shadow-2dp">
			<div id="pic-container">
				<img
					src="<%=request.getContextPath()%>/images/tour_image/레저체험/낚시체험.jpg"
					alt="" />
				<p id="title"></p>
			</div>
			<div id="caption">

				<p id="description">낚시체험</p>

				<div class="booking-buttons">
					<button class="blob-btn">
						예약하기 <span class="blob-btn__inner"> <span
							class="blob-btn__blobs"> <span class="blob-btn__blob"></span>
								<span class="blob-btn__blob"></span> <span
								class="blob-btn__blob"></span> <span class="blob-btn__blob"></span>
						</span>
						</span>
					</button>
					<button class="blob-btn">
						상세보기 <span class="blob-btn__inner"> <span
							class="blob-btn__blobs"> <span class="blob-btn__blob"></span>
								<span class="blob-btn__blob"></span> <span
								class="blob-btn__blob"></span> <span class="blob-btn__blob"></span>
						</span>
						</span>
					</button>

				</div>

			</div>
		</div>
		<div class="card shadow-2dp">
			<div id="pic-container">
				<img
					src="<%=request.getContextPath()%>/images/tour_image/레저체험/연꽃재배.jpg"
					alt="" />
				<p id="title"></p>
			</div>
			<div id="caption">

				<p id="description">연꽃재배</p>

				<div class="booking-buttons">
					<button class="blob-btn">
						예약하기 <span class="blob-btn__inner"> <span
							class="blob-btn__blobs"> <span class="blob-btn__blob"></span>
								<span class="blob-btn__blob"></span> <span
								class="blob-btn__blob"></span> <span class="blob-btn__blob"></span>
						</span>
						</span>
					</button>
					<button class="blob-btn">
						상세보기 <span class="blob-btn__inner"> <span
							class="blob-btn__blobs"> <span class="blob-btn__blob"></span>
								<span class="blob-btn__blob"></span> <span
								class="blob-btn__blob"></span> <span class="blob-btn__blob"></span>
						</span>
						</span>
					</button>

				</div>

			</div>
		</div>
		<div class="card shadow-2dp">
			<div id="pic-container">
				<img
					src="<%=request.getContextPath()%>/images/tour_image/레저체험/토속음식체험.jpg"
					alt="" />
				<p id="title"></p>
			</div>
			<div id="caption">

				<p id="description">토속음식체험</p>

				<div class="booking-buttons">
					<button class="blob-btn">
						예약하기 <span class="blob-btn__inner"> <span
							class="blob-btn__blobs"> <span class="blob-btn__blob"></span>
								<span class="blob-btn__blob"></span> <span
								class="blob-btn__blob"></span> <span class="blob-btn__blob"></span>
						</span>
						</span>
					</button>
					<button class="blob-btn">
						상세보기 <span class="blob-btn__inner"> <span
							class="blob-btn__blobs"> <span class="blob-btn__blob"></span>
								<span class="blob-btn__blob"></span> <span
								class="blob-btn__blob"></span> <span class="blob-btn__blob"></span>
						</span>
						</span>
					</button>

				</div>

			</div>
		</div>

	</div>

	<%--세번쨰 라인 끝 --%>
</div>




<!-- 풋터 선언!!-->
<%@ include file="/WEB-INF/views/common/footer.jsp"%>
