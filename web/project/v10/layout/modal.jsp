
<%@ page pageEncoding="UTF-8"%>

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