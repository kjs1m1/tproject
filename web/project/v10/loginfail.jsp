<%@ page contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head lang="ko">
    <meta charset="UTF-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel ="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    <script src="https://use.fontawesome.com/2350369b5c.js"></script>
    <link rel="stylesheet" href="../css/base.css">

<title>부트스트랩4: index</title>
</head>
<body>
<div class="container">
    <%@ include file = "layout/header.jsp"%>  <%--정적 인쿨르드는 소스를 합치는 거고 동적 인클루드는 결과물을 합치는 거임 --%>

    <div id="main">
        <div class="row" style="min-height:550px;">
            <div class ="col-me-12 text-center">
                <h1>로그인 실패!!</h1>
            </div>
        </div>

    </div>

    <%@ include file = "layout/footer.jsp"%>
</div>
<div id="loginmodal" class="modal fade" role="dialog">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h3 class="modal-title">로그인</h3>
                <button class="btn btn-light" type="button" data-dismiss="modal">닫기 </button>
            </div>
            <div class="modal-body">
                <form id="loginfrm" name="loginfrm" method="post" action="<%=baseurl%>/proclogin.jsp">
                    <div class="form-group row text-center">
                        <label for="uid" class="col-form-label col-4">아이디</label>
                        <input type="text" id="uid" class="form-control col-6" name="userid">
                        <div id="idmsg" class="vdmsg"></div>


                    </div>

                        <div class="form-group row text-center">
                            <label for="pwd" class="col-form-label col-4">비밀번호</label>
                            <input type="text" id="pwd" class="form-control col-6" name="passwd">
                            <div id="pwmsg" class="vdmsg"></div>
                        </div>

                    <div class="form-group row" >
                        <div class="col-4"></div>
                        <div class="form-check">
                            <input type="checkbox" class="form-check-input">
                            <label class="form-check-label"> 로그인 상태 유지</label>
                        </div>

                    </div>


                </form>
            </div>
            <div class="modal-footer justify-content-center">
                <button type="button" class="btn btn-danger" id="loginbtn">로그인</button>
                <button type="button" class="btn btn-success" id="findidpwbtn">아이디/비밀번호 찾기</button>

            </div>
        </div>
    </div>

</div>



<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="../js/loginfrm.js"></script>
<script src="../js/loginfrm.js"></script>
<script>
    $(function() { /*함수실행 -> 조인btn에서 클릭이 발생되면 어그리html로 이동해라*/
        $('#joinbtn').on('click', function(e) {location.href='join/agree.jsp';});
    });
</script>

</body>
</html>