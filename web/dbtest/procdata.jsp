<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    String DRV = "oracle.jdbc.OracleDriver";
    String URL = "jdbc:oracle:thin:@13.124.13.188:1521/XE";
    String UID = "hr";
    String PWD = "hr";

    Connection conn = null;
    PreparedStatement pstmt = null;

    String insertSQL = "insert into practicedb (userid, passwd) VALUES (?,?)";
    boolean isOk = false;

    String uid = request.getParameter("testid");
    String pwd = request.getParameter("testpw");

    try {
        Class.forName(DRV);

        conn = DriverManager.getConnection(URL,UID,PWD);
        pstmt = conn.prepareStatement(insertSQL);

        pstmt.setString(1, uid);
        pstmt.setString(2, pwd);

        int cnt = pstmt.executeUpdate();
        if(cnt > 0) isOk = true;

    } catch (Exception e) {
        e.printStackTrace();
    } finally {
        if(pstmt != null) pstmt.close();
        if(conn != null) conn.close();
    }

    if(isOk){
        out.print("입력성공");
    } else {
        out.print("<script>history.go(-1)</script>");
    }

%>