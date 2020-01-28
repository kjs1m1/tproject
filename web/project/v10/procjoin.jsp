<%@ page import="java.util.Random" %>
<%@ page import="service.Today" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="mbf" scope="session" class="dao.MemberFactory"/>

<jsp:useBean id="mb" class="vo.Member"/>

<% request.setCharacterEncoding("utf-8"); %>

<%
    String name = request.getParameter("name");
    String jumin1 = request.getParameter("jumin1");
    String jumin2 = request.getParameter("jumin2");
    String userid = request.getParameter("userid");
    String passwd = request.getParameter("passwd");
    String zip1 = request.getParameter("zip1");
    String zip2 = request.getParameter("zip2");
    String addr1 = request.getParameter("addr1");
    String addr2 = request.getParameter("addr2");
    String email1 = request.getParameter("email1");
    String email2 = request.getParameter("email2");
    String tel1 = request.getParameter("tel1");
    String tel2 = request.getParameter("tel2");
    String tel3 = request.getParameter("tel3");

    String jumin = jumin1 + "-" + jumin2;
    String zipcode = zip1 + "-" + zip2;
    String addr = addr1 + "" + addr2;
    String email = email1 + "@" + email2;
    String hp = tel1 + "-" + tel2 + "-"+ tel3;



    Random r = new Random();
    String mbid = (r.nextInt(500)+1)+"";

   Today t = new Today();
   String today = t.getDate() + " " + t.getTime2();

    mb.setMbrid(mbid);
    mb.setName(name);
    mb.setJumin(jumin);
    mb.setUserid(userid);
    mb.setPasswd(passwd);
    mb.setZipcode(zipcode);
    mb.setAddr(addr);
    mb.setEmail(email);
    mb.setHp(hp);
    mb.setRegdate(today);

    mbf.addMember(mb);

    //joinok.jsp로 넘김
    response.sendRedirect("joinok.jsp");



%>


