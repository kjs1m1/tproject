<%@ page import="java.util.Map" %>
<%@ page import="service.FileUpDownUtil" %>
<%@ page import="vo.ReviewBoard" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="rbdao" class="dao.ReviewBoardFactory" scope="session"/>

<%
    // 파일 업로드 절대경로
    String realpath = request.getRealPath("ttpro/fileupload");
    System.out.println(realpath);

    Map<String, String> frmdata = FileUpDownUtil.procUpload(request, realpath);

    String selectbd = frmdata.get("selectbd");

    int check = rbdao.boardWrite(frmdata, selectbd);

    if (check >= 1) {
        session.setAttribute("frmdata", frmdata);
        response.sendRedirect("revList.jsp");
    } else {
        System.out.println("글쓰기 실패");
    }

%>