package dao;


import service.OracleUtil;
import service.PropertySetter;
import vo.AllUseBoard;
import vo.DogBoard;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class AllUseBoardDAO {
    private Connection conn = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;

    OracleUtil oracle = new OracleUtil();

    private ArrayList<DogBoard> lists = null;
    private ArrayList<DogBoard> lists2 = null;

    // 게시판 목록을 보여주기위한 메소드
    public ArrayList<DogBoard> viewBoardList(String listSQL){

        try {
            conn = oracle.getConn();
            pstmt = conn.prepareStatement(listSQL);
            rs = pstmt.executeQuery();

            lists = new ArrayList<>();

            while (rs.next()){

                DogBoard b = new DogBoard();

                // 해당 vo 클래스에 set메소드를 찾아 자동으로 값을 넣어줌
               PropertySetter.setProperties(rs,b,true,true);

                lists.add(b);
            }

        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            oracle.closeConn(rs, pstmt, conn);
        }
        return lists;
    }

    // 게시물 수를 반환하는 메소드
    public int countBoard(String countSQL){

        int bdcnt = 0;

        try {
            conn = oracle.getConn();
            pstmt = conn.prepareStatement(countSQL);
            rs = pstmt.executeQuery();

            while (rs.next()){
                bdcnt = rs.getInt(1);
            }

        } catch (Exception e){
            e.printStackTrace();
        } finally {
            oracle.closeConn(rs, pstmt, conn);
        }
        return bdcnt;
    }

    // 글쓰기 기능을 하는 메소드
    public int writeBoard(AllUseBoard writebd, String writeSQL) {
        int check = 0;

        try{
            conn = oracle.getConn();
            pstmt = conn.prepareStatement(writeSQL);

            pstmt.setString(1, writebd.getTitle());
            pstmt.setString(2, writebd.getUserid());
            pstmt.setString(3, writebd.getContents());

            check = pstmt.executeUpdate();

        } catch (Exception e){
            e.printStackTrace();
        } finally {
            oracle.closeConn(pstmt,conn);
        }
        return check;
    }

    // 글 내용을 보여주는 메소드
    public ArrayList<DogBoard> viewContents(int bdno, String viewSQL){

        try {
            conn = oracle.getConn();
            pstmt = conn.prepareStatement(viewSQL);
            pstmt.setInt(1, bdno);
            rs = pstmt.executeQuery();

            lists2 = new ArrayList<>();

            while(rs.next()){
                DogBoard a = new DogBoard();

                PropertySetter.setProperties(rs,a,false,false);

                lists2.add(a);
            }

        } catch (Exception e){
            e.printStackTrace();
        } finally {
            oracle.closeConn(rs, pstmt, conn);
        }
        return lists2;
    }

    // 글 내용 수정하는 메소드 (수정 필요)
    public int modifyContents(AllUseBoard modifybd, int mbdno, String modifySQL){
        int check = 0;

        try{
            conn = oracle.getConn();
            pstmt = conn.prepareStatement(modifySQL);
            pstmt.setString(1, modifybd.getTitle());
            pstmt.setString(2, modifybd.getContents());
            pstmt.setInt(3, mbdno);

            check = pstmt.executeUpdate();


        }catch (Exception e){
            e.printStackTrace();
            System.out.println("modifyContents 메소드 확인 요망");
        } finally {
            oracle.closeConn(rs, pstmt, conn);
        }
        return check;
    }

    // 글 내용 삭제하는 메소드
    public int deleteList(int bdno, String deleteSQL) {
        int check = 0;

        try {
            conn = oracle.getConn();
            pstmt = conn.prepareStatement(deleteSQL);
            pstmt.setInt(1, bdno);

            check = pstmt.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
            System.out.println("deleteList 메소드 확인 요망");
        } finally {
            oracle.closeConn(pstmt, conn);
        }
        return check;
    }

}

