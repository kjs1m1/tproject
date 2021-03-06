<%@ page import="java.util.ArrayList" %>
<%@ page import="vo.DogBoard" %>
<%@ page import="vo.RevDogComments" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:useBean id="dogfdao" class="dao.DogBoardFactory" scope="session"/>
<%
    // 로그인한 사용자의 아이디 가져옴
    String uid = (String)session.getAttribute("userid");

    if(uid==null|| uid.equals("")) {
        out.println("<script>alert('로그인 후 이용해주세요^^'); location.href='/ttpro/login/login.jsp';</script>");
    }

    // 처음 view.jsp로 이동했을때 bdno를 셋팅하는 방식
    int bdno = 0;

    if (request.getParameter("bdno") != null) {
        bdno = Integer.parseInt(request.getParameter("bdno"));
    }

    // 조회수 증가 메소드 호출
    dogfdao.viewsUp(bdno);

    // 글 상세보기 메소드 호출
    ArrayList<DogBoard> dblists = dogfdao.dogView(bdno);

    session.setAttribute("dblists", dblists);


    // 댓글 읽어오는 메소드 호출
    ArrayList<RevDogComments> rdclists = dogfdao.dogcommentView(bdno);

%>

<html>
<head>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">

    <title>Dog's 본문보기</title>
    <style>
        body {
            width: 100%;
            margin: 0 auto;
        }

        .list {
            float: left
        }

        .list > h3 {
            margin: 10px 0 10px 30px;
            font-weight: bold
        }

        .list > ul {
            list-style: none;
            text-align: left;
            text-decoration-line: none;
        }

        .list > ul > li {
            text-align: left;
            margin-left: 8px;
        }

        .list > ul > li > a {
            color: #000000
        }
    </style>
</head>

<body>
<div class="container">
    <%@include file="../layout/header.jsp" %>

    <div class="main">
        <div class="row">
            <div class="col-8" style="font-size: 25px; margin: 0 0 0 60px ; padding:30px 0 20px 0;">
                <i class="fa fa-comments fa-2x"> Dog's</i>
            </div>
            <div class="col-3">
                <button type="button" class="btn btn-success" id="newbtn" style="margin:45px 0 15px 31px; ">
                    <i class="fa fa-plus-circle"> 새글쓰기</i>
                </button>
                <button type="button" class="btn btn-warning"
                        onclick="location.href='dogList.jsp'" style="margin:45px 0 15px 0; color: white">
                    <i class="fa fa-list" aria-hidden="true"> 목록으로</i>
                </button>
            </div>
        </div>

        <div class="row" style="margin: 10px 0 20px 0">
            <div class="list col-sm-3">
                <h3><i class="fa fa-handshake-o" aria-hidden="true"></i> 분양</h3>
                <ul>
                    <%--해당 카테고리 a태그는 지워고 색깔 바꿔주세요--%>
                    <li><a href="<%=baseurl%>/catboard/catList.jsp">&block;&nbsp;&nbsp;Cat's</a></li>
                    <li style="color:#919191">&block;&nbsp;&nbsp;Dog's</li>
                    <li><a href="<%=baseurl%>/reviewboard/revList.jsp">&block;&nbsp;&nbsp;분양후기</a></li>
                </ul>
            </div> <%-- 왼쪽 카테고리부분 --%>

            <div class="col-sm-9" style="height: auto; border: 0.3mm solid #cfcfcf; border-radius: 10px; padding: 20px">
                <% for (DogBoard a : dblists) {%>
                <div class="row">
                    <div class="col-sm-12">
                        <h1 id="title" style="text-align: center"><%=a.getTitle()%></h1>
                    </div>
                </div>
                <div class="row">
                    <div class="col-sm-12">
                        <div id="name" style="text-align: right; margin:20px 20px 20px 0; color: #404040">
                            <%=a.getUserid()%> &#124; <span style="font-size: 10pt"><%=a.getRegdate()%></span></div>
                    </div>
                </div>
                <hr color="#cfcfcf">
                <div class="col-sm-12" style="margin-left: 15%">
                    <div class="row">
                        <% if (a.getFile1() != null) { %>
                        <div style="float: left; margin: 0 10px 10px 0 ;"><img class="viewimg"
                                                                               src="showimg.jsp?f=<%=a.getFile1()%>"
                                                                               width="180px" height="150px"></div>
                        <% } %>
                        <% if (a.getFile2() != null) { %>
                        <div style="float: left; margin: 0 10px 10px 0 ;"><img class="viewimg"
                                                                               src="showimg.jsp?f=<%=a.getFile2()%>"
                                                                               width="180px" height="150px"></div>
                        <% } %>
                        <% if (a.getFile3() != null) { %>
                        <div style="float: left; margin: 0 10px 10px 0 ;"><img class="viewimg"
                                                                               src="showimg.jsp?f=<%=a.getFile3()%>"
                                                                               width="180px" height="150px"></div>
                        <% } %>
                    </div>
                    <div class="row">
                        <% if (a.getFile4() != null) { %>
                        <div style="float: left; margin: 0 10px 10px 0 ;"><img class="viewimg"
                                                                               src="showimg.jsp?f=<%=a.getFile4()%>"
                                                                               width="180px" height="150px"></div>
                        <% } %>
                        <% if (a.getFile5() != null) { %>
                        <div style="float: left; margin: 0 10px 10px 0 ;"><img class="viewimg"
                                                                               src="showimg.jsp?f=<%=a.getFile5()%>"
                                                                               width="180px" height="150px"></div>
                        <% } %>
                    </div>
                    <div class="row">
                        <div id="contents" style="margin-top: 5px"><%=a.getContents()%></div>
                    </div>
                </div>
            </div> <%-- 메인 내용부분 --%>

        </div>

        <div class="row">
            <div class="col-sm-3"></div>
            <div class="col-sm-9" style="margin: 20px 0 30px 0">
                <%--uid부분은 로그인한 사용자의 아이디를 표시할 부분--%>

                    <form action="procDogComments.jsp?bdno=<%=a.getBdno()%>" method="post">
                    <div class="row" style="margin-top: 30px">
                        <div style="margin-left: 15px ">
                            <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                            <%=uid%> <div class="user"></div>
                        </div>
                        <input type="hidden" name="dogc_userid" value="<%=uid%>">
                        <input type="text" id="comentWr" name="dogc_contents" style="width: 70%; margin: 0 15px 0 35px ">
                        <button type="submit" class="btn btn-outline-success" id="comentOk"> 등록</button>
                    </div>  <%-- 댓글 입력창--%>
                </form>


                <!--입력한 댓글이 있으면 댓글을 불러옴-->
                <% for(RevDogComments rdc : rdclists) { %>
                <% if (rdc.getDogc_contents() != null || !(rdc.getDogc_contents().equals(""))) {%>
                <div class="row">
                    <div class="col-sm-2" >
                        <i class="fa fa-user-circle-o" aria-hidden="true"></i>
                        <%=rdc.getDogc_userid()%> <div class="user"></div>
                    </div> <%-- 아이콘 뒤에 로그인된 아이디가 들어갔으면 좋겠어요 --%>
                    <div class="col-sm-7">
                        <div id="coment"><%=rdc.getDogc_contents()%></div>
                        <div id="coment"><%=rdc.getDogc_regdate()%></div>
                        <%-- 대댓글은 시간상 언급하는 식으로 들어가는게 나을꺼 같아요 --%>
                    </div>
                </div>
                <% } %>
                <% } %>
            </div>
        </div>   <%-- 댓글부분 --%>

        <div class="row" style="margin: 0 0 0 53%">
            <div>
                <button type="button" class="btn btn-info" onclick="location.href='dogModify.jsp'"><i class="fa fa-pencil" aria-hidden="true"></i> 수정하기</button>
            </div>&nbsp;
            <div class="text-right">
                <a href="dogDelete.jsp?bdno=<%=a.getBdno()%>" class="btn btn-danger"><i class="fa fa-trash-o" aria-hidden="true"></i> 삭제하기</a>
            </div>
        </div>  <%-- 수정/삭제 버튼 --%>

        <% } %>

    </div>
    <%@include file="../layout/footer.jsp" %>
</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
        crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"
        integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"
        integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM"
        crossorigin="anonymous"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="../js/loginfrm.js"></script>

<script>
    // 상단 로그인 버튼
    $(function () {
        $('#mloginbtn').on('click', function (e) {
            location.href = '/ttpro/login/login.jsp';
        });
    });
    // 회원가입 버튼
    $(function () {
        $('#joinbtn').on('click', function (e) {
            location.href = '/ttpro/signup/signagree.jsp';
        });
    });
    // 새글쓰기
    $(function() {
        $('#newbtn').on('click',function(e)  {location.href='dogWrite.jsp';});
    });
</script>

</body>
</html>
