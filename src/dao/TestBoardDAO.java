package dao;

import vo.TestBoard;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class TestBoardDAO {
    private static String DRV = "oracle.jdbc.OracleDriver";
    private static String URL = "jdbc:oracle:thin:@15.164.231.42";
    private static String USR = "HR";
    private static String PWD = "HR";

    private static Connection conn = null;
    private PreparedStatement pstmt =null;
    private ResultSet rs = null;


    public static Connection makeConn(){ //여기 메소드 쓰임세  //static 어디서든 불러 올수 있다

        try {
            Class.forName(DRV);
            conn = DriverManager.getConnection(URL, USR, PWD);
        }catch(Exception ex){
            ex.printStackTrace();
            System.out.println("아이디,비밀번호,연결경로 확인");
        }
    return conn;
    }
    public static void closeConn(ResultSet rs, PreparedStatement pstmt, Connection conn){
        try{
            if(rs != null)rs.close();
            if(pstmt != null) pstmt.close();
            if(conn != null) conn.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }
    public static void closeConn(PreparedStatement pstmt, Connection conn){
        try{

            if(pstmt != null) pstmt.close();
            if(conn != null) conn.close();
        }catch (Exception e){
            e.printStackTrace();
        }
    }






    public ArrayList<TestBoard> listView(){ //ArrayList 에 담아햐 하기 때문에 ArrayList로 변수 선언 (접근지시제어자(ex)pulic.private,반환형,변수명),)
        String testviewSQL="SELECT BDNO,TITLE,USERID,REGDATE,THUMB,VIEWS FROM TESTBOARD";
        ArrayList<TestBoard> viewboard = new ArrayList<>(); //TestBoard 객체만 드갈수 있는 ArrayList 생성

        try{
            conn =makeConn();
            pstmt=conn.prepareStatement(testviewSQL);
            rs=pstmt.executeQuery(); //pstmt에 sql문을 전달해주고  executeQuery() 결과값 나온다 //vo객체를 만들어서 또 넣어줘야함

            while (rs.next()){
                TestBoard  tb = new TestBoard();
                tb.setBdno(rs.getInt(1));
                tb.setTitle(rs.getString("title"));
                tb.setUserid(rs.getString("userid"));
                tb.setRegdate(rs.getString("regdate"));
                tb.setThumb(rs.getInt("thumb"));
                tb.setViews(rs.getInt("views"));

                viewboard.add(tb);
            }


        }catch (Exception ex) {
            ex.printStackTrace();
            System.out.println("오류가난다");
        }finally {
            closeConn(rs,pstmt,conn);

        }
   return viewboard;
    }


    public ArrayList<TestBoard> views(int bdno){
        String viewsSQL = "SELECT BDNO,userid,TITLE,CONTENTS FROM TESTBOARD WHERE BDNO =?";
        ArrayList<TestBoard> viewList = new ArrayList<>();

        try{
            conn=makeConn();
            pstmt=conn.prepareStatement(viewsSQL);
            pstmt.setInt(1,bdno); //LIST에서 받아온 BDNO는 위에 VIEWS 메서드에 담겨 있는데 그것을 커리문에 넣겠다 라는 뜻
            rs=pstmt.executeQuery();

            while (rs.next()){
                TestBoard tb = new TestBoard();
                tb.setBdno(rs.getInt("bdno")); //컬럼명을 가져오기 때문에 따옴표를 해줘야함
                tb.setUserid(rs.getString("userid"));
                tb.setTitle(rs.getString("title"));
                tb.setContents(rs.getString("Contents"));

                viewList.add(tb);
            }

        }catch(Exception ex) {
            ex.printStackTrace();
            System.out.println("오류가 나는 구만");
        }finally{
            closeConn(rs,pstmt,conn);
        }
    return viewList; //viewList에 담아서 호출한 곳에 가서 뿌려 줘야 해서 리턴값
    }


    public void deleteList(int bdno){ //delete.jsp에서 받아온 bdno 임
        String deleteSQL = "DELETE FROM TESTBOARD WHERE BDNO = ?";

        try{
            conn=makeConn();
            pstmt=conn.prepareStatement(deleteSQL);
            pstmt.setInt(1,bdno); //커리문 ?에 값을 넣어 줘야함 LIST에서 받아온 BDNO는 위에 delete 메서드에 담겨 있는데 그것을 커리문에 넣겠다 라는 뜻
            pstmt.executeUpdate();

        }catch (Exception ex){
            ex.printStackTrace();
            System.out.println("삭제가 안되는 구만");
        }finally {
            closeConn(pstmt,conn);
        }

    }

    public int wirteAction(TestBoard tb){ //delete.jsp에서 받아온 bdno 임
        String writeSQL =  "insert into TESTBOARD (BDNO,TITLE,CONTENTS) values (BDNO.nextval,?,?)";

        int isOk=0;
        try{
            conn=makeConn();
            pstmt=conn.prepareStatement(writeSQL);


           //커리문 ?에 값을 넣어 줘야함 LIST에서 받아온 BDNO는 위에 delete 메서드에 담겨 있는데 그것을 커리문에 넣겠다 라는 뜻
            pstmt.setString(1,tb.getTitle());
            pstmt.setString(2,tb.getContents());
            isOk=pstmt.executeUpdate(); //여기에 담아서 보내주기 때문에

        }catch (Exception ex){
            ex.printStackTrace();
            System.out.println("값 입력하기");
        }finally {
            closeConn(pstmt,conn);
        }
        return isOk;
    }

}




