<%@page import="member.model.vo.Member"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	Member updatedMember = (Member) request.getAttribute("updateMember");
	String pageBar = (String) request.getAttribute("pageBar");
%>
<%@ include file="/WEB-INF/views/admin/common/adminHeader.jsp"%>

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/admin/searchbox.css" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/css/admin/memberUpdate.css" />

<style>
div#search-container {
	margin: 0 0 10px 0;
	padding: 3px;
	text-align: center;
}

div#search-memberEmail {
	display: inline-block;
}

div#search-memberName {
	display: none;
}

div#search-memberNo {
	display: none;
}
</style>
<script>
	$(function() {
		let $memberEmail = $("#search-memberEmail");
		let $memberName = $("#search-memberName");
		let $memberNo = $("#search-memberNo");
		console.log($memberName);
		console.log($memberNo);
		$("#searchType").change(function() {
			$memberEmail.hide();
			$memberName.hide();
			$memberNo.hide();

			let selected = $(this).val();
			console.log(selected);
			$("#search-" + selected).css("display", "inline-block");
		});
	});
</script>
<!-- ============================================================== -->
<!-- wrapper  -->
<!-- ============================================================== -->
<div class="dashboard-wrapper">
	<div id="search-container">
		검색타입 : <select id="searchType">
			<option value="memberEmail">이메일</option>
			<option value="memberNo">회원번호</option>
			<option value="memberName">회원명</option>
		</select>
		<div id="search-memberEmail">
			<form action="<%=request.getContextPath()%>/gogo-admin/memberFinder">
				<input type="hidden" name="searchType" value="memberEmail" />
				<div class="search__container">
					<input type="text" class="search__input" name="searchKeyword"
						placeholder="검색할 이메일 주소를 입력하세요.">
				</div>
			</form>
		</div>
		<div id="search-memberNo">
			<form action="<%=request.getContextPath()%>/gogo-admin/memberFinder">
				<input type="hidden" name="searchType" value="memberNo" />
				<div class="search__container">
					<input type="text" class="search__input" name="searchKeyword"
						placeholder="검색할 회원번호를 입력하세요.">
				</div>
			</form>
		</div>
		<div id="search-memberName">
			<form action="<%=request.getContextPath()%>/gogo-admin/memberFinder">
				<input type="hidden" name="searchType" value="memberName" />
				<div class="search__container">
					<input type="text" class="search__input" name="searchKeyword"
						placeholder="검색할 이름을 입력하세요.">
				</div>
			</form>
		</div>
	</div>
	<%--테이블 시작 --%>
	<div class="update-container" id="update-container">
		<div class="update-form-container member-update-container">
			<form action="<%=request.getContextPath()%>/gogo-admin/memberUpdateEnd" class="member-form" >
				<h1>회원정보수정</h1>
				<table>
					<tr>
						<th>회원번호</th>
						<td><input class="update-input-box" type="text"
							name="memberNo" id="memberNo" style="background-color: white;"
							value="<%=updatedMember.getMemberNo()%>" readonly /></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input class="update-input-box" type="email"
							name="memberEmail" id="memberEmail"
							style="background-color: white;"
							value="<%=updatedMember.getMemberEmail()%>" readonly /></td>
					</tr>
					<tr>
						<th>비밀번호</th>
						<td><input class="update-input-box" type="test"
							name="memberPassword" id="memberPassword"
							value="<%=updatedMember.getPassword()%>" required /></td>
					</tr>
					<tr>
						<th>비밀번호 확인</th>
						<td><input class="update-input-box" type="text"
							name="memberPassword" id="memberPassword_2" required /></td>
					</tr>
					<tr>
						<th>이름</th>
						<td><input class="update-input-box" type="text"
							name="memberName" value="<%=updatedMember.getMemberName()%>"
							required /></td>
					</tr>
					<tr>
						<th>생년월일</th>
						<td><input type="date" class="update-input-box"
							name="birthDay" id="birthDay"
							value="<%=updatedMember.getBirthDay()%>" required /></td>
					</tr>
					<tr>
						<th>휴대폰</th>
						<td><input type="tel" class="update-input-box" name="phone"
							id="phone" maxlength="11" value="<%=updatedMember.getPhone()%>"
							required></td>
					</tr>
					<tr>
						<th>회원등급</th>
						<td><input type="text" class="update-input-box" name="grade"
							id="grade" value="<%=updatedMember.getGrade()%>" required>

						</td>
					</tr>

				</table>
				<input type="submit" class="update-button" value="수정하기" />
			</form>
		</div>
	</div>
	<%--테이블 끝 --%>

</div>
<%@ include file="/WEB-INF/views/admin/common/adminFooter.jsp"%>