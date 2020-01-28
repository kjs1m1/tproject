<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date" %>


<%--<%--%>
    <%--//로그인 하지 않은 사용자는 상품페이지에서 접금근지--%>
    <%--// 로그인 하도록 login.jsp로 페이지 전환--%>
    <%--String uid = (String)session.getAttribute("uid");--%>
    <%--if(uid==null)response.sendRedirect("../layout/login.jsp");--%>


<%--%>--%>

<!DOCTYPE html>
<html>
<head>
    <link rel ="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Shopping mall intro</title>
</head>
<style>
    body {width: 900px; margin: 0 auto;}
</style>

<body>
<div class="container">


<div class="main">  <!--https://glyphicons.com/-->
        <div style="padding:30px 0"><i class="fa fa-comments fa-2x">자유게시판</i> </div>



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

    <div class="row" style="margin: 10px 30px 20px 30px">
        <form method="post" action="procWrite.jsp" name="bdfrm" class="card card-body bg-light">
            <div class="form-group row">
                <label class="col-form-label col-2" for="title">제목</label>
                <input type="text" name="title" id="title" class="form-control col-9">
            </div>

            <div class="form-group row">
                <label class="col-form-label col-2">본문내용</label>
                <textarea rows="15" name="contents" id="contents" class="form-control col-9"></textarea>
            </div>

            <%--<div class="form-group row">--%>
                <%--<label class="col-form-label col-2"for="captcha">자동입력방지</label>--%>
                <%--<img src="../../../../../web1911/img/capcha.png" width="50%" style="margin-bottom: 10px">--%>
                <%--<input type="text" id="captcha" class="form-control col-3" style="margin-left: 170px">&nbsp;--%>
            <%--<button type="button" class="btb btn-dark">--%>
                <%--<i class="fa fa-refresh"></i>다른 captcha 보기--%>
            <%--</button>--%>
            <%--</div>--%>
            <div class="form-group row">
                <div class="col-12 text-center" style="border-top: 3px solid #000000; margin-top: 35px;padding-top: 25px">
                    <button type="submit" id="okbtn" class="btn btn-primary"><i class="fa fa-check"> 작성완료</i></button>
                    <button type="button" class="btn btn-danger" id="cancelbtn"><i class="fa fa-times"> 취소하기</i></button>
                </div>

            </div>
        </form>
    </div>
</div>




</div>






<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>


<%--<script>--%>

    <%--// 로그인 버튼--%>
    <%--$(function() {--%>
        <%--$('#mloginbtn').on('click',function(e) {location.href='../login.jsp';});--%>
    <%--});--%>

    <%--// 회원가입 버튼--%>
    <%--$(function() {--%>
        <%--$('#joinbtn').on('click',function(e) {location.href='../signup/signagree.jsp';});--%>
    <%--});--%>

    <%--// 작성취소 버튼--%>
    <%--$(function() {--%>
        <%--$('#cancelbtn').on('click', function(e) {location.href='list.jsp';});--%>
    <%--});--%>


<%--</script>--%>




</div>
</body>
</html>