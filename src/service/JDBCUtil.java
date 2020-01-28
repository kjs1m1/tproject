package service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class JDBCUtil {

    private static String DRV = "oracle.jdbc.OracleDriver";
    private static String URL = "jdbc:oracle:thin:@13.124.13.188:1521/XE";
    private static String USR = "hr";
    private static String PWD = "hr";

    public static void procUpload(){}

    public static Connection makeConn() {

        Connection conn = null;

        try {
            Class.forName(DRV);
            conn = DriverManager.getConnection(URL, USR, PWD);
        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("아이디, 비밀번호, 연결경로 확인");
        }

        return conn;
    }

    public static void closeConn(ResultSet rs, PreparedStatement pstmt, Connection conn) {
        try {
            if(rs != null) rs.close();
            if(pstmt != null) pstmt.close();
            if(conn != null) conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    public static void closeConn(PreparedStatement pstmt, Connection conn) {
        try {
            if(pstmt != null) pstmt.close();
            if(conn != null) conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}
