<%@ page import="java.util.Map" %>
<%@ page import="service.FileUpDownUtil" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="catfdao" class="dao.CatBoardFactory" scope="session"/>

<%
    String realpath = request.getRealPath("ttpro/fileupload");
    Map<String, String> frmdata = FileUpDownUtil.procUpload(request, realpath);

    int bdno = Integer.parseInt(request.getParameter("bdno"));

    int check = 0;
    check = catfdao.modifyView(frmdata, bdno);

    if (check >= 1) {
        response.sendRedirect("catList.jsp");
    } else {
        out.print("<script>history.go(-1);</script>");
    }
%>