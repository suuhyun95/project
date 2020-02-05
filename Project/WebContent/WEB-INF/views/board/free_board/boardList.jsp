<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	 <div id="list">
        <h1>자유게시판</h1>
        <table id="tbl-list">
        <tr>
			<th>번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>작성일</th>
			<th>첨부파일</th>
			<th>조회수</th>
        </tr>
        <% if(list==null || list.isEmpty()){ %>
            <tr>
                <td colspan="10" align="center"> 검색 결과가 없습니다. </td>
            </tr>
        <% 
            } 
            else {
                for(Board b : list){ 
        %>
            <tr>
                <td><%=b.getBoardNo()%></td>
                <td>
                <a href="<%=request.getContextPath()%>/board/boardView?boardNo=<%=b.getBoardNo()%>">
                <%=b.getBoardTitle()%></td>                
                </a>
				<td><%=b.getBoardWriter()%></td>
                <td><%=b.getBoardDate()%></td>
				<td><%=b.getOriginalFileName()!=null?"<img src='"+request.getContextPath()+"/images/file.png' width=16px/>":"" %></td>
                <td><%=b.getReadCount()%></td>
            </tr>		
        <%		} 
            }
        %>
    </table>
   </div>
</body>
</html>