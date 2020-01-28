<%--&lt;%&ndash; 자료실--%>
<%--1)Pds VO 클래스 만듦--%>
<%--2) PdsFactory dao 클래스 만듦--%>
<%--3)procpwrite.jsp를 통해 업로드가 되도록 작성--%>
<%--4)업로드시 저장되는 경로는 c:/Java/pdsupload 로 지정--%>

<%--5)업로드된 파일은 pview.jsp 에서 확인 가능--%>
<%--6)업로드된 파일을 다운로드하는 것도 pview.jsp에서 가능&ndash;%&gt;--%>



<%--<%@ page import="java.util.Random" %>--%>
<%--<%@ page import="service.Today" %>--%>
<%--<%@ page import="java.util.Map" %>--%>
<%--<%@ page import="service.FileUpDownUtil" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>


<%--<jsp:useBean id="pdsf" class="dao.PdsFactory" scope="session"/>--%>
<%--<% request.setCharacterEncoding("utf-8");%>--%>

<%--<jsp:useBean id="pds" class="vo.Pds"/>--%>
<%--<jsp:setProperty name="pda" property="*"/>--%>



<%--&lt;%&ndash;글번호, 작성자, 작성일은 직접 넣음&ndash;%&gt;--%>
<%--<% Random rnd = new Random();--%>
    <%--int bdid =rnd.nextInt(100) + 500;--%>
    <%--pds.setBdid(bdid+""); %>--%>

<%--<% Today today = new Today();--%>
    <%--String regdate = today.getDate()+" "+today.getTime2();--%>
<%--pds.setRegdate(regdate); %>--%>

<%--<% pds.setWriter("suji"); %>--%>


<%--&lt;%&ndash;업로드 처리 코드&ndash;%&gt;--%>
<%--<% String uPath = "c:/Java/pdsupload/";--%>
<%--Map<String,String>frmdata = FileUpDownUtil.procUpload(request, uPath);--%>
<%--%>--%>

<%--<%--%>
    <%--for(String key : frmdata.keySet()){--%>
        <%--String val = frmdata.get(key);--%>
        <%--switch (key) {--%>

            <%--case "subject":pds.setSubject(val);break;--%>
            <%--case "contents":pds.setContents(val);break;--%>
            <%--case "file1":pds.setFile1(val);break;--%>

        <%--}--%>
    <%--}--%>
<%--%>--%>






<%--<% pdsf.addPds(pds); %>--%>



<%--<% response.sendRedirect("plist.jsp"); %>--%>

<%--&lt;%&ndash;아래쪽은 연결 확인용 &ndash;%&gt;--%>
<%--<html>--%>
<%--<head>--%>
    <%--<title></title>--%>
<%--</head>--%>
<%--</html>--%>
<%--<body>--%>
<%--<ul>--%>
    <%--<li>글번호 :<%=pds.getBdid()%> </li>--%>
    <%--<li>제목 : <%=pds.getSubject()%></li>--%>
    <%--<li>작성자 :<%=pds.getWriter()%> </li>--%>
    <%--<li>작성일 :<%=pds.getRegdate()%> </li>--%>
    <%--<li>추천수 :<%=pds.getThumbs()%> </li>--%>
    <%--<li>조회수 :<%=pds.getViews()%> </li>--%>
    <%--<li>본문내용 :<%=pds.getContents()%> </li>--%>
    <%--<li>첨부파일 :<%=pds.getFile1()%> </li>--%>
<%--</ul>--%>

<%--</body>--%>