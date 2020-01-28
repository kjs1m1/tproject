<%@ page import="service.FileUpDownUtil" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%

    String dPath="c:/Java/pdsupload/";
    FileUpDownUtil.procDownload(request,response,dPath);
%>