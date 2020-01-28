<%@ page contentType="text/html; charset=UTF-8"%>


<!DOCTYPE html>
<html>
<head>
    <link rel ="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
          integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <title>Shopping mall intro</title>
</head>
<body>
<div class="container">
    <%@ include file = "../layout/header.jsp" %>
    <div class="main">  <!--https://glyphicons.com/-->
        <div style="padding:30px 0"><i class="fa fa-users fa-2x">회원가입</i> </div>
        <nav aria-label="breadcrumb">
            <ul class="breadcrumb">
                <li class="breadcrumb-item active"><span class="badge badge-success" style="padding: 5px">이용약관</span></li>
                <li class="breadcrumb-item"><span class="badge badge-success" style="padding: 5px">실명확인</span></li>
                <li class="breadcrumb-item"><span class="badge badge-success" style="padding: 5px">정보입력</span></li>
                <li class="breadcrumb-item"><span class="badge badge-success" style="padding: 5px">가입완료</span></li>
            </ul>
        </nav>
        <div style="margin: 55px 0 20px 0">
            <h2>회원가입 완료</h2>
            <small class="text-muted">안전하고 편리한 홈페이지 이용을 위해 회원님의 아이디와 비밀번호 관리에 주의해주시기 바랍니다.</br> </small>
        </div>
        <div class="jumbotron" style="margin: 10px 30px 20px 50px;">
            <h2 class="display-3">회원가입을 축하합니다!!</h2>
            <p class="lead"><!--눈에 잘띄가 하기위한것--> 게시판 글작성, 쇼핑몰 이용등의 일부 서비스는 실명확인 후 이용하실 수 있습니다.<br>
                실명확인 후에도 가입하신 아이디는 변경할 수 없습니다.</p>
            <hr class="my-4">
            <p>회원가입 이후 아이디와 비밀번호로 일반회원으로 로그인하셔서 추가 인적사항등을 등록해주시기 바랍니다.</p>
            <p>Lorem Ipsom과 함께 즐거운 시간 되십시오</p>
        </div>
    </div>

    <div class="text-center"style="margin-bottom: 100px"id="go2index">
             <button class="btn btn-danger">메인으로이동
             </button>
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
        $('#joinbtn').on('click', function(e) {location.href='join/agree.jsp';});
    });
    $(function() { /*함수실행 -> 조인btn에서 클릭이 발생되면 어그리html로 이동해라*/
        $('#go2index').on('click', function(e) {location.href='../index.jsp';});
    });



</script>





</body>
</html>