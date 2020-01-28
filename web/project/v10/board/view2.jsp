<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vo.Product" %>
<%@ page import="vo.Board" %>



<!DOCTYPE html>
<html>
<head>
    <link rel ="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Shopping mall intro</title>
</head>


<%--scope session 해줘야 계속 ㅈㅓ장--%>
<jsp:useBean id="bdf" class="dao.BoardFactory" scope="session"/>
<%
    String id = request.getParameter("id");
    Board b = bdf.getBoardById(id);
%>

<%--JSP 페이지에서 줄바꿈 처리하기
    본문 작성시 엔터를 이용해서 줄바굼을 하고 저장하는 경우
    HTML 태그를 이용해서 출력하는 경우 줄바꿈이 제대로 인식 못함,
    즉, 줄바꿈문자(\r\n)을 브라우저가 제대로 처리하지 못하기 때문임

    해결책은 줄바꿈 분자를 <br> 태그로 바꿔주는 것임--%>

<%--클릭시 조회수 증가 시키는 방법--%>
<%
    b.setViews(b.getViews()+1);
%>
<body>
<div class="container">
<%@ include file = "../layout/header.jsp"%>
<%
    String goLogin = baseurl + "/index.jsp";
    if (!isLogin){
        out.print(
                "<script>alert('로그인 필요!');</script>");
        out.print(
                "<script>location.href='" + goLogin + "' </script>");

    }
%>

<div class="main">  <!--https://glyphicons.com/-->
        <div style="padding:30px 0"><i class="fa fa-comments fa-2x">자유게시판</i> </div>



    <div class="row" style="margin: 10px 30px 20px 30px">

        <div class="col-6">
            <button type="button" class="btn btn-light" id="prevbtn">
                <i class="fa fa-plus-circle">이전게시물</i>
            </button>

            <button type="button" class="btn btn-light" id="nextbtn">
                <i class="fa fa-plus-circle">다음게시물</i>
            </button>
        </div>

        <div class="col-6 text-right">
            <button type="button" class="btn btn-light" id="newbtn">
                <i class="fa fa-plus-circle">새글쓰기</i>
            </button>
        </div>
    </div><!--상단버튼버튼-->

    <div class="row" style="margin: 10px 30px 20px 30px"><!--게시판본문-->
       <table class="table">
           <tr>
               <th colspan="2" class="text-center" style="background-color: #8fd19e; border-bottom: 3px solid #000000">
                   <h3><%=b.getSubject()%></h3>
               </th>
           </tr>
           <tr style="background-color: green">
               <td><%=b.getWriter()%></td>
               <td class="text-right"><%=b.getRegdate()%>조회수 : <%=b.getViews()%></td>
           </tr>

           <tr>
               <td colspan="2" style="background-color: lightgoldenrodyellow;border-bottom: 3px solid #000000"><br>
                        <P><%=b.getContents().replace("\n","<br>")%></P>

               </td>
           </tr>
       </table>

    </div>
    <div class="row" style="margin: 10px 30px 20px 30px">

        <div class="col-6">
            <button type="button" class="btn btn-warning" id="updatebtn">
                <i class="fa fa-pencil">수정하기</i>
            </button>

            <button type="button" class="btn btn-danger" id="deletebtb">
                <i class="fa fa-trash-o">삭제하기</i>
            </button>
        </div>

        <div class="col-6 text-right">
            <button type="button" class="btn btn-light" id="listbtn">
                <i class="fa fa-list">목록으로</i>
            </button>
        </div>
    </div><!--하단단버튼버튼-->


    <div class="row" style="margin: 70px 30px 20px 30px">
        <h3><i class="fa fa-commenting"></i> 나도 한마디</h3>
        <table class="table" style="border-bottom: 3px solid #000000; border-top: 3px solid #000000">
            <tr>
                <td style="width: 25%"><h4>kimjisub</h4></td>
                <td>
                    <div style="background-color: yellow; padding: 5px;">2012-02-08 14:43:49"</div>
                    <p style="padding: 5px"> 지금도 등골브레이커 맞습니다.<br>
                    애들 레고교육센터인가 뭔가 보여달라다가... 학원비는 둘째치고,<br>
                    재료비에서 깜놀,,,,<br>
                    <p></p>
                    <p></p>
                    그장 작은거 사다가 애들하고 맞추고 놀고 있습죠^^
                    </p>
                        <ul style="list-style: none; margin-left: -40px">
                            <li><div style="background-color: lime; height: 30px;padding: 3px">
                                <span style="font-weight: bold">powerdf</span>
                                <span style="float: right">2012-02-08 14:43:49</span></div>
                                <p style="padding: 5px">정말인가요? 우와 ~ 심하다!</p></li>
                        </ul>
                </td>
            </tr>
            <tr>
                <td style="width: 25%"><h4>PPACE</h4></td>
                <td>
                    <div style="background-color: yellow; padding: 5px;">2012-02-08 14:43:49"</div>
                    <p style="padding: 5px"> 지금도 등골브레이커 맞습니다.<br>
                        애들 레고교육센터인가 뭔가 보여달라다가... 학원비는 둘째치고,<br>
                        재료비에서 깜놀,,,,<br>
                    <p></p>
                    <p></p>
                    그장 작은거 사다가 애들하고 맞추고 놀고 있습죠^^
                    </p>

                </td>
            </tr>
            <tr>
                <td style="width: 25%"><h4>TASDF</h4></td>
                <td>
                    <div style="background-color: yellow; padding: 5px;">2012-02-08 14:43:49"</div>
                    <p style="padding: 5px"> BBQ2마리 치킨 시켰는데.<br>
                        배달도 빨리 오고 맛있어요 서비스로 짜장면 주셔서 감사합니다... 학원비는 둘째치고,<br>
                        재료비에서 깜놀,,,,<br>
                    <p></p>
                    <p></p>
                    그장 작은거 사다가 애들하고 맞추고 놀고 있습죠^^
                    </p>
                    <ul style="list-style: none; margin-left: -40px">
                        <li><div style="background-color: lime; height: 30px;padding: 3px">
                            <span style="font-weight: bold">powerdf</span>
                            <span style="float: right">2012-02-08 14:43:49</span></div>
                            <p style="padding: 5px"> 치킨 너무 맛있네요</p></li>
                    </ul>
                </td>
            </tr>
            <tr>
                <td style="width: 25%"><h4>kimjisub</h4></td>
                <td>
                    <div style="background-color: yellow; padding: 5px;">2012-02-08 14:43:49"</div>
                    <p style="padding: 5px"> 지금도 등골브레이커 맞습니다.<br>
                        애들 레고교육센터인가 뭔가 보여달라다가... 학원비는 둘째치고,<br>
                        재료비에서 깜놀,,,,<br>
                    <p></p>
                    <p></p>
                    그장 작은거 사다가 애들하고 맞추고 놀고 있습죠^^
                    </p>

                </td>
            </tr>
            <tr>
                <td style="width: 25%"><h4>kimjisub</h4></td>
                <td>
                    <div style="background-color: yellow; padding: 5px;">2012-02-08 14:43:49"</div>
                    <p style="padding: 5px"> 지금도 등골브레이커 맞습니다.<br>
                        애들 레고교육센터인가 뭔가 보여달라다가... 학원비는 둘째치고,<br>
                        재료비에서 깜놀,,,,<br>
                    <p></p>
                    <p></p>
                    그장 작은거 사다가 애들하고 맞추고 놀고 있습죠^^
                    </p>
                    <ul style="list-style: none; margin-left: -40px">
                        <li><div style="background-color: lime; height: 30px;padding: 3px">
                            <span style="font-weight: bold">powerdf</span>
                            <span style="float: right">2012-02-08 14:43:49</span></div>
                            <p style="padding: 5px">정말인가요? 우와 ~ 심하다!</p></li>
                    </ul>
                </td>
            </tr>
        </table>
    </div><!--댓글-->









    <div class="row" style="margin: 10px 30px 20px 30px">
        <form class="card card-body bg-light">
            <div class="form-group row">
                <label  style="margin: auto">로그인하세요</label>
                <textarea rows="10" id="comment" class="form-control col-7">
                </textarea>
                <button type="button" id="cmtbtn" class="btn btn-dark" style="margin: auto">
                    <i class="fa fa-commenting"></i>
                    댓글쓰기
                </button>
            </div>
        </form>
    </div><!--댓글 쓰기-->










    <footer>
    <p class="text-right bg-light" style="padding: 10px 5px; border: 1px solid silver">
        &copy; Lorem Ipsom2019. created by jisub. all rights reserved.</p>
</footer>
</div>



<%@ include file="../layout/modal.jsp"%>


    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
    <script src="../../js/loginfrm.js"></script>
<script>
    $(function() { /*함수실행 -> 조인btn에서 클릭이 발생되면 어그리html로 이동해라*/
        $('#joinbtn').on('click', function(e) {location.href='<%=baseurl%>/join/agree.html';});
    });

    $(function() { /*함수실행 -> 조인btn에서 클릭이 발생되면 어그리html로 이동해라*/
        $('#newbtn').on('click', function(e) {location.href='<%=baseurl%>/board/write.jsp';});
    });

    $(function() { /*함수실행 -> 조인btn에서 클릭이 발생되면 어그리html로 이동해라*/
        $('#listbtn').on('click', function(e) {location.href='<%=baseurl%>/board/list.jsp';});
    });

    $(function() { /*함수실행 -> 조인btn에서 클릭이 발생되면 어그리html로 이동해라*/
        $('#updatebtn').on('click', function(e) {location.href='<%=baseurl%>/board/modify.jsp';});
    });

     $(function() { /*함수실행 -> 조인btn에서 클릭이 발생되면 어그리html로 이동해라*/
        $('#deletebtb').on('click', function(e) {if (confirm("정말로 삭제하시겠어요?"))
                alert('삭제되었습니다')});
    });

</script>




</div>
</body>
</html>