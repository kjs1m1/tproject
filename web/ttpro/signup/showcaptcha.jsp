<%@ page contentType="image/png"%>
<%@ page import="service.CaptchaUtil" %>

<%
    CaptchaUtil.getCaptcha(request, response);

    if (session.getAttribute("cta") != null){
        session.removeAttribute("cta");
    }
%>

