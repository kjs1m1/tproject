<%@ page pageEncoding="UTF-8" %>
<%@ page contentType="text/html; charset=UTF-8"%>
<%--절대 경로 설정 --%>
<% String baseurl ="/project/v8"; %>
<%--로그인 여부 확인--%>
<%--로그인 여부 확인--%>s
<% boolean isLogin = false;
    if(session.getAttribute("smb") !=null)
        isLogin = true;
%>
<header>
    <div class ="row"> <!--상단 로고/로그인,회완가입버튼-->
        <div class="col-md-6">
            <h1><a href="<%=baseurl%>/index.jsp" style="color: #000000">Lorem Ipsum</a></h1>
        </div>
        <div class="col-md-6 text-right"style="margin: 10px 0">
        <% if (!isLogin) {//비 로그인 이면 %>


        <button class="btn btn-danger" type="button" data-toggle="modal" data-target="#loginmodal">로그인</button>
        <button class="btn btn-primary" type="button" id="joinbtn">회원가입</button>

       <%} else {%>
        <button class="btn btn-dark" type="button" id="logoutbtn">로그아웃</button>
        <% } %>
        </div>


        <div class="col-md-6 text-right"style="margin: 10px 0">



        </div>
    </div>


    <nav class="nav navbar-expand-md navbar-dark bg-dark">
        <ul class="nav navbar-nav nav-fill w-100">
            <li class="nav-item">
                <a class="nav-link"href="<%=baseurl%>/pds/index.jsp">프로젝트소개</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<%=baseurl%>/join/agree.jsp">회원가입</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="<%=baseurl%>/board/list.jsp">게시판</a>
            </li>
            <li class="nav-item" >
                <a class="nav-link"href="<%=baseurl%>/pds/plist.jsp">자료실</a>
            </li>
            <li class="nav-item">
                <a class="nav-link"href="<%=baseurl%>/gallery/glist.jsp">갤러리</a>
            </li>
            <li class="nav-item">
                <a class="nav-link"href="admin.jsp">관리자</a>
            </li>
        </ul>

    </nav>
</header>