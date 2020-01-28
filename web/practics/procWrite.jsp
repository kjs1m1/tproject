<%@ page import="vo.TestBoard" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<% request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="tbdao" class="dao.TestBoardDAO" scope="session"/>

<%--단지 가져오는 부분 --%>
<jsp:useBean id="tb" class="vo.TestBoard" scope="session"/>
<%--여기서 id와 name 부분 --%>

<%--입력 받은 값들을 가져와서 쓰이는 부분
  입력받는 FORM 부분에 다 갇다 쓰겠다 따라서 VO 변수명과 input tag의 name이 갇아야함 --%>
<%--<jsp:setProperty name="tb" property="*" param="title"/>--%>
<jsp:setProperty name="tb" property="title" param="title"/>
<jsp:setProperty name="tb" property="contents" param="contents"/>


<%
    int isOk = 0;
    isOk = tbdao.wirteAction(tb);

    if (isOk >= 0){
        System.out.print("게시판업로드성공");
        response.sendRedirect("list2.jsp");
    } else {
        out.print("<script>alert('게시판업로드실패')</script>");
    }

%>


<%--<% String uPath = "c:/Java/pdsupload/";--%>
    <%--Map<String,String> frmdata = JDBCUtil.procUpload(request, uPath);--%>
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

