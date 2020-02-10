<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/css/common/submenu.css">
<nav>
    <div class="submenu_container">
        <div class="sub_menu">
            <ul>
                <li class="item" id="profile">
                    <a href="#profile" class="btn"><i class="fa fa-user"></i> 군산시 소개</a>
                </li>
                <li class="item" id="messages">
                    <a href="#messages" class="btn"><i class="fas fa-ticket-alt"></i> 관광명소</a>
                    <div class="smenu">
                        <a href="">자연</a>
                        <a href="">공원</a>
                        <a href="">마을</a>
                        <a href="">박물관 | 전시관</a>
                        <a href="">문화유적</a>
                        <a href="">레저 | 체험</a>
                    </div>
                </li>
                
            </ul>
        </div>
    </div>
</nav>