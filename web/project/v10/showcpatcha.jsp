<%--
  Created by IntelliJ IDEA.
  User: 50316
  Date: 2019-12-03
  Time: 오후 4:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="image/png" %>
<%@ page import="service.CaptchaUtil" %>
<% CaptchaUtil.getCaptcha(request, response); %>

