<%@page import="board.admin_board.model.vo.AdminBoard"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pageBar = (String)request.getAttribute("pageBar");
	List<AdminBoard> list = (List<AdminBoard>)request.getAttribute("list");
	Integer cPage = (Integer)request.getAttribute("cPage");
%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/board/board.css" />


<%@include file="/WEB-INF/views/common/board_sidebar.jsp" %>

        <section id="board-container">
        <h1>공지사항</h1>
          <table id="tbl-list">
          <tr><td>
        <%if(memberLoggedIn != null && "A".equals(memberLoggedIn.getGrade())){ %>
			<input type="button" value="글쓰기" id="btn-add"
			onclick="location.href='<%=request.getContextPath() %>/board/admin_board/adminBoardForm'"/>
		<%} %>
          </td>
          </tr>
	        <tr id ="tbl-th-list">
				<th id="board-no">글번호</th>
				<th id="board-title">제목</th>
				<th id="board-file">첨부</th>
				<th id="board-writer">작성자</th>
				<th id="board-date">작성일</th>
	            <th id="board-readCount">조회수</th>
	        </tr>
        <% if(list==null || list.isEmpty()){ %>
            <tr>
                <td colspan="10" align="center"> 검색 결과가 없습니다. </td>
            </tr>
        <% 
            } 
            else {
                for(AdminBoard b : list){ 
        %>
            <tr>
                <td><%=b.getAdminBoardNo()%></td>
                <td>
                	<a href="<%=request.getContextPath()%>/board/admin_board/adminBoardView?boardNo=<%=b.getAdminBoardNo()%>&cPage=<%=cPage %>">
                	<%=b.getAdminBoardTitle()%>                
                	</a>
                </td>
                <td><%=b.getAdminOriginalFileName()!= null?"<img src='"+request.getContextPath()+"/images/board/file.png' width='16px'/>":"" %></td>
				<td><%=b.getAdminBoardWriter()%></td>
                <td><%=b.getAdminBoardDate()%></td>
                <td><%=b.getAdminReadCount()%></td>
            </tr>		
        <%		} 
            }
        %>
    </table>
    <div id='pageBar'><%=pageBar %></div>
   </section>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>			