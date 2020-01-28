<%@ page contentType="text/html; charset=UTF-8"%>
<%@ page import="java.util.Date" %>

<!DOCTYPE html>
<html>
<head>
    <link rel ="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Shopping mall intro</title>
</head>
<body>
<div class="container">
    <%@ include file = "../layout/header.jsp"%>

<div class="main">  <!--https://glyphicons.com/-->
        <div style="padding:30px 0"><i class="fa fa-comments fa-2x">자유게시판</i> </div>



    <div class="row" style="margin: 10px 30px 20px 30px">
        <div class="col-6">
            <h4><i class="fa fa-pencil-square-o"></i>수정하기</h4>
        </div>

        <div class="col-6 text-right">
            <button type="button" class="btn btn-light" id="listbtn">
                <i class="fa fa-list">목록으로</i>
            </button>
        </div>
    </div> <!--버튼-->
    <div class="row" style="margin: 10px 30px 20px 30px">
        <form class="card card-body bg-light">
            <div class="form-group row">
                <label class="col-form-label col-2"for="title">제목</label>
                <input type="text" id="title" class="form-control col-9" value="장바구니 멘 시의원 처음 보셨나요?">
            </div>

            <div class="form-group row">
                <label class="col-form-label col-2"for="contents">본문내용</label>
                <textarea rows="15"id="contents" class="form-control col-9"></textarea>

            </div>
            <div class="form-group row">
                <label class="col-form-label col-2"for="captcha">자동입력방지</label>
                <img src="../img/capcha.png" width="50%" style="margin-bottom: 10px">
                <input type="text" id="captcha" class="form-control col-3" style="margin-left: 170px">&nbsp;
            <button type="button" class="btb btn-dark">
                <i class="fa fa-refresh"></i>다른 captcha 보기
            </button>
            </div>
            <div class="form-group row">
                <div class="col-12 text-center" style="border-top: 3px solid #000000; margin-top: 35px;padding-top: 25px">
                    <button type="button" id="newbtn" class="btn btn-success"><i class="fa fa-check"> 입력완료</i></button>
                    <button type="button" class="btn btn-danger" id="cancelbtn"><i class="fa fa-times"> 취소하기</i></button>
                </div>

            </div>
        </form>
    </div>
</div>




    <%@ include file = "../layout/footer.jsp"%>
</div>



<%@ include file="../layout/modal.jsp"%>


<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="../../js/loginfrm.js"></script>
<script>
    $(function() { /*함수실행 -> 조인btn에서 클릭이 발생되면 어그리html로 이동해라*/
        $('#joinbtn').on('click', function(e) {location.href='agree.html';});
    });
    $(function() { /*함수실행 -> 조인btn에서 클릭이 발생되면 어그리html로 이동해라*/
        $('#newbtn').on('click', function(e) {location.href='list.jsp';});
    });
    $(function() { /*함수실행 -> 조인btn에서 클릭이 발생되면 어그리html로 이동해라*/
        $('#listbtn').on('click', function(e) {location.href='list.jsp';});
    });
    $(function() { /*함수실행 -> 조인btn에서 클릭이 발생되면 어그리html로 이동해라*/
        $('#cancelbtn').on('click', function(e) {location.href='list.jsp';});
    });


</script>




</div>
</body>
</html>