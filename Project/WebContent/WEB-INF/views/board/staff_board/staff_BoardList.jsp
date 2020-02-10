<%@page import="board.staff_board.model.vo.Staff_Board"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pageBar = (String)request.getAttribute("pageBar");
	List<Staff_Board> list = (List<Staff_Board>)request.getAttribute("list");
	Integer cPage = (Integer)request.getAttribute("cPage");
	List<String> memberName = (List)request.getAttribute("memberName");
%>

<%@ include file="/WEB-INF/views/common/header.jsp" %>
<script src='https://kit.fontawesome.com/a076d05399.js'></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/board/board.css" />


<%@include file="/WEB-INF/views/common/board_sidebar.jsp" %>

        <section id="board-container">
        <h1>관광지 공지사항</h1>
          <table id="tbl-list">
          <tr><td>
        <%if(memberLoggedIn != null){ %>
			<input type="button" value="글쓰기" id="btn-add"
			onclick="location.href='<%=request.getContextPath() %>/board/staff_board/staff_BoardForm'"/>
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
                for(Staff_Board b : list){ 
        %>
            <tr>
                <td><%=b.getStaff_BoardNo()%></td>
                <td>
                	<a href="<%=request.getContextPath()%>/board/staff_board/staff_BoardView?boardNo=<%=b.getStaff_BoardNo()%>&cPage=<%=cPage %>">
                	<%=b.getStaff_BoardTitle()%>                
                	</a>
                </td>
                <td><%=b.getStaff_OriginalFileName()!= null?"<img src='"+request.getContextPath()+"/images/board/file.png' width='16px'/>":"" %></td>
				<%for(String Mname : memberName) {%>
				<td><%=Mname%></td>
				<%} %>
                <td><%=b.getStaff_BoardDate()%></td>
                <td><%=b.getStaff_ReadCount()%></td>
            </tr>		
        <%		} 
            }
        %>
    </table>
    <div id='pageBar'><%=pageBar %></div>
   </section>
<%@ include file="/WEB-INF/views/common/footer.jsp"%>			