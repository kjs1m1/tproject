<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date" %>

<%
    //로그인 하지 않은 사용자는 상품페이지에서 접금근지
    // 로그인 하도록 login.jsp로 페이지 전환
    String uid = (String)session.getAttribute("uid");
    if(uid==null)response.sendRedirect("layout/login.jsp");


%>

<!DOCTYPE html>
<html>
<head>
    <link rel ="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Shopping mall intro</title>

    <script src="https://use.fontawesome.com./2350369b5c.js"></script>>

</head>

<body>

<div class="container">
    <%@ include file = "../layout/header.jsp"%>

<div class="main">  <!--https://glyphicons.com/-->
        <div style="padding:30px 0"><i class="fa fa-upload fa-2x">
            <strong>자료실</strong></i> </div>



    <div class="row" style="margin: 10px 30px 20px 30px">
        <div class="col-6">
            <h4><i class="fa fa-plus-circle"></i>새글쓰기</h4>
        </div>

        <div class="col-6 text-right">
            <button type="button" class="btn btn-light" id="listbtn">
                <i class="fa fa-list">목록으로</i>
            </button>
        </div>
    </div> <!--버튼-->
<!--enctype="multipart/form-data 이게 form 데이터에 추가 되어 있어야 업로드됨-->


    <div class="row" style="margin: 10px 30px 20px 30px">
        <form method="post" action="procpwrite.jsp" name="pdsfrm" class="card card-body bg-light" enctype="multipart/form-data">
            <div class="form-group row">
                <label class="col-form-label col-2" for="title">제목</label>
                <input type="text" name="subject" id="title" class="form-control col-9">
            </div>

            <div class="form-group row">
                <label class="col-form-label col-2">본문내용</label>
                <textarea rows="15"name="contents" id="contents" class="form-control col-9">


                </textarea>
            </div>

            <div class="form-group row">
                <label class="col-form-label col-2">첨부파일</label>
             <input type="file" name="file1">
            </div>




            <div class="form-group row">
                <label class="col-form-label col-2"for="captcha">자동입력방지</label>
                <img src="../../../../../web1911/img/capcha.png" width="50%" style="margin-bottom: 10px">
                <input type="text" id="captcha" class="form-control col-3" style="margin-left: 170px">&nbsp;
            <button type="button" class="btb btn-dark">
                <i class="fa fa-refresh"></i>다른 captcha 보기
            </button>
            </div>
            <div class="form-group row">
                <div class="col-12 text-center" style="border-top: 3px solid #000000; margin-top: 35px;padding-top: 25px">
                    <button type="button" id="newbtn" class="btn btn-primary"><i class="fa fa-check"> 작성완료</i></button>
                    <button type="button" class="btn btn-danger" id="cancelbtn"><i class="fa fa-times"> 취소하기</i></button>
                </div>

            </div>
        </form>
    </div>
</div>

</div>


    <%@ include file = "../layout/footer.jsp"%>
</div>



    <div id="loginmodal" class="modal fade" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title">로그인</h3>
                <button class="btn btn-light" type="button" data-dismiss="modal">닫기 </button>
            </div>
            <div class="modal-body">
                <form id="loginfrm">
                    <div class="form-group row text-center">
                        <label for="uid" class="col-form-label col-4">아이디</label>
                        <input type="text" id="uid" class="form-control col-6">


                    </div>

                    <div class="form-group row text-center">
                        <label for="pwd" class="col-form-label col-4">비밀번호</label>
                        <input type="text" id="pwd" class="form-control col-6">
                    </div>

                    <div class="form-group row">
                        <div class="col-4"></div>
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input">
                            <label class="form-check-label"> 로그인 상태 유지</label>
                        </div>

                    </div>


                </form>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-danger">로그인</button>
                <button type="button" class="btn btn-success">아이디/비밀번호 찾기</button>

            </div>
        </div>
    </div>

</div>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="../../js/pdsfrmcheck.js"></script>
<script src="../../js/loginfrm.js"></script>
<script>
    $(function() { /*함수실행 -> 조인btn에서 클릭이 발생되면 어그리html로 이동해라*/
        $('#joinbtn').on('click', function(e) {location.href='../../../../../web1911/HTML부트스트렙게시판만들기/agree.html';});


//    });
//    $(function() { /*함수실행 -> 조인btn에서 클릭이 발생되면 어그리html로 이동해라*/
//        $('#newbtn').on('click', function(e) {location.href='plist.jsp';});
    });
    $(function() { /*함수실행 -> 조인btn에서 클릭이 발생되면 어그리html로 이동해라*/
        $('#listbtn').on('click', function(e) {location.href='plist.jsp';});
    });
    $(function() { /*함수실행 -> 조인btn에서 클릭이 발생되면 어그리html로 이동해라*/
        $('#cancelbtn').on('click', function(e) {location.href='plist.jsp';});
    });


</script>




</div>
</body>
</html>