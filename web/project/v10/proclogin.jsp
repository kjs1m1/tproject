<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.Map" %>
<%@ page import="vo.Member" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="mbsf" class="dao.MemberFactory" scope="session"/>



<%
    String uid = request.getParameter("userid"); //멤버팩토리에 아이디를 넣어서 가져옴
    String pwd = request.getParameter("passwd");
    String goPage = "loginfail.jsp";





    //입력한 아이디와 비밀번호를 HashMap에 저장된 아이디와 비밀번호와 비교
       //uid를 키로 놓고 검색했을때 키에 대항하는 value가 있는 확인해서 뭔가 있다면 null아니고  입력한 갑이 같은지 같은지 안같은지 확인해서 처리

    if(isPwd != null && isPwd.equals(pwd)){//일치한다면 로그인 성공
//        session.setAttribute("uid",uid); //아이디만 등록할때는 한줄
      Member smb =  mbsf.getMemberById(uid);
      session.setAttribute("smb",smb);
      goPage = "index.jsp";
    }

    response.sendRedirect(goPage);
%>