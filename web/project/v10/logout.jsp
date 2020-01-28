
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    //현재 접속운인 브라우져에 대해 세션객체 제거
    session.invalidate();

    response.sendRedirect("index.jsp");
%>