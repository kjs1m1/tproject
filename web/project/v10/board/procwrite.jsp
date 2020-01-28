<%@ page import="java.util.Random" %>
<%@ page import="service.Today" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="bdf" class="dao.BoardFactory" scope="session"/>
<% request.setCharacterEncoding("utf-8");%>

<jsp:useBean id="bd" class="vo.Board"/>
<jsp:setProperty name="bd" property="*"/>



<%--글번호, 작성자, 작성일은 직접 넣음--%>
<% Random rnd = new Random();
    int bdid =rnd.nextInt(100) + 500;
    bd.setBdid(bdid+""); %>
<% Today today = new Today();
    String regdate = today.getDate()+" "+today.getTime2();
bd.setRegdate(regdate); %>

<% bd.setWriter("suji"); %>

<% bdf.addBoard(bd); %>

<% response.sendRedirect("list.jsp"); %>

<%--아래쪽은 연결 확인용 --%>
<html>
<head>
    <title></title>
</head>
</html>
<body>
<ul>
    <li>글번호 :<%=bd.getBdid()%> </li>
    <li>제목 : <%=bd.getSubject()%></li>
    <li>작성자 :<%=bd.getWriter()%> </li>
    <li>작성일 :<%=bd.getRegdate()%> </li>
    <li>추천수 :<%=bd.getThumbs()%> </li>
    <li>조회수 :<%=bd.getViews()%> </li>
    <li>본문내용 :<%=bd.getContents()%> </li>
</ul>

</body>