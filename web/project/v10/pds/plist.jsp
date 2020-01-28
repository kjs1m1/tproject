<%@ page contentType="text/html; charset=UTF-8"
        %>
<%@ page import="java.util.Date" %>
<%@ page import="vo.Board" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="vo.Pds" %>

<jsp:useBean id="pdsf" class="dao.PdsFactory" scope="session"/>
<%
    ArrayList<Pds> pds  = pdsf.getAllPdses();
    int cnt = pds.size();
%>



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
    <%--<jsp:forward page="../layout/header.jsp"/>--%>

<div class="main">  <!--https://glyphicons.com/-->
        <div style="padding:30px 0"><i class="fa fa-comments fa-2x">자유게시판</i> </div>



    <div class="row" style="margin: 10px 30px 20px 30px">
        <!--버튼-->
        <div class="col-12 text-right">
            <button type="button" class="btn btn-light" id="newbtn">
                <i class="fa fa-plus-circle">새글쓰기</i>
            </button>
        </div>
    </div>

    <div class="row" style="margin: 10px 30px 20px 30px">
        <!--게시판 목록-->
        <div class="col-12">
        <table class="table table-striped" style="border-top: 3px solid black; border-bottom: 3px solid #000000">
                <thead style="background-color: #dff0d8">
                <tr>
                    <th style="width: 7%">번호</th>
                    <th >제목</th>
                    <th style="width: 10%">작성자</th>
                    <th style="width: 10%">작성일</th>
                    <th style="width: 7%" >추천</th>
                    <th style="width: 7%">조회</th>
                </tr>
                </thead>
                <tbody>
                <tr STYLE="color: red">
                    <th>공지</th>
                    <th><span class="badge badge-danger"> HOT</span> '다크나이트 라이지즈' 예매권 증정 이벤트 실시!</th>
                    <th>운영자</th>
                    <th>2012.07.15</th>
                    <th>10</th>
                    <th>128</th>
                </tr>

                    <% for (Pds p :pds){%>
                <tr>
                    <td><%=cnt--%></td> <!--실제 번호가 아니고 가 번호 등록 -->
                    <!--프라이머리키로 설정되어 있는 부분을 매개변수로 넘겨주어야함 -->
                    <td><a href="<%=baseurl%>/pds/pview2.jsp?id=<%=p.getBdid()%>"><%=p.getSubject()%>  </a></td>
                    <td><%=p.getWriter()%></td>
                    <td><%=p.getRegdate().substring(0,10)%></td>
                    <td><%=p.getThumbs()%></td>
                    <td><%=p.getViews()%></td>
                </tr>
            <% } %>

                </tbody>
            </table>
        </div>
    </div>
    <div class="row" style="margin: 10px 30px 20px 30px">
        <!--페이지네이션-->
        <div class="col-12">
            <nav>
                <ul class="pagination justify-content-center">
                    <li class="page-item disabled">
                        <a href="#" class="page-link">이전</a>
                    </li>
                    <li class="page-item active">
                        <a href="#" class="page-link">1</a>
                    </li>
                    <li class="page-item">
                        <a href="#" class="page-link">2</a>
                    </li>
                    <li class="page-item">
                        <a href="#" class="page-link">3</a>
                    </li>
                    <li class="page-item">
                        <a href="#" class="page-link">4</a>
                    </li>
                    <li class="page-item">
                        <a href="#" class="page-link">5</a>
                    </li>
                    <li class="page-item">
                        <a href="#" class="page-link">6</a>
                    </li>
                    <li class="page-item">
                        <a href="#" class="page-link">7</a>
                    </li>
                    <li class="page-item">
                        <a href="#" class="page-link">8</a>
                    </li>
                    <li class="page-item">
                        <a href="#" class="page-link">9</a>
                    </li>
                    <li class="page-item">
                        <a href="#" class="page-link">10</a>
                    </li>
                    <li class="page-item">
                        <a href="#" class="page-link">다음</a>
                    </li>
                </ul>
            </nav>
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
        $('#joinbtn').on('click', function(e) {location.href='<%=baseurl%>/join/agree.html';});
    });
    $(function() { /*함수실행 -> 조인btn에서 클릭이 발생되면 어그리html로 이동해라*/
        $('#newbtn').on('click', function(e) {location.href='<%=baseurl%>/pds/pwrite.jsp';});
    });



</script>




</div>
</body>
</html>