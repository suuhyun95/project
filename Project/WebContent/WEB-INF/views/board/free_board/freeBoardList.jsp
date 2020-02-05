<%@page import="board.free_board.model.vo.FreeBoard"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String pageBar = (String)request.getAttribute("pageBar");
	List<FreeBoard> list = (List<FreeBoard>)request.getAttribute("list");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <style>
    body{
    width: auto;
    height: auto;
    text-align: center;
    margin: 0 auto;
    background: rgba(211, 211, 211, 0.8);
    }
    header{
        font-size: 20px;
        font-weight: 300px;
    }
    table {
    color:#666;
    font-size:12px;
    text-shadow: 1px 1px 0px #fff;
    background:#eaebec;
    margin:20px;
    border:#ccc 1px solid;
    border-radius:3px;
    margin: 30px auto;
    box-shadow: 0 1px 2px #d1d1d1;
    }
    table th {
    padding:15px;
    border-top:1px solid #fafafa;
    border-bottom:1px solid #e0e0e0;

    background: #ededed;
    }
    table th:first-child{
    text-align: left;
    padding-left:20px;
    }
    table tr:first-child th:first-child{
    border-top-left-radius:3px;
    }
    table tr:first-child th:last-child{
    border-top-right-radius:3px;
    }
    table tr{
    text-align: center;
    padding-left:20px;
    }
    table tr td:first-child{
    text-align: left;
    padding-left:20px;
    border-left: 0;
    }
    table tr td {
    padding:12px;
    border-top: 1px solid #ffffff;
    border-bottom:1px solid #e0e0e0;
    border-left: 1px solid #e0e0e0;

    background: #fafafa;
    }
    table tr.even td{
    background: #f6f6f6;
    }
    table tr:last-child td{
    border-bottom:0;
    }
    table tr:last-child td:first-child{
    border-bottom-left-radius:3px;
    }
    table tr:last-child td:last-child{
    border-bottom-right-radius:3px;
    }
    table tr:hover td{
    background: #f2f2f2;

    }
    </style>
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
                for(FreeBoard b : list){ 
        %>
            <tr>
                <td><%=b.getFreeBoardNo()%></td>
                <td>
                <a href="<%=request.getContextPath()%>/board/boardView?boardNo=<%=b.getFreeBoardNo()%>">
                <%=b.getFreeBoardTitle()%>                
                </a></td>
				<td><%=b.getFreeBoardWriter()%></td>
                <td><%=b.getFreeBoardDate()%></td>
				<td><%=b.getFreeOriginalFileName()!=null?"<img src='"+request.getContextPath()+"/images/free_board/file.png' width=16px/>":"" %></td>
                <td><%=b.getFreeReadCount()%></td>
            </tr>		
        <%		} 
            }
        %>
    </table>
    <div id='pageBar'><%=pageBar %></div>
   </div>
</body>
</html>