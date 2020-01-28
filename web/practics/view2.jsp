<%@ page import="java.util.ArrayList" %>

<%@ page import="vo.TestBoard" %>
<%@ page contentType="text/html; charset=utf-8"%>
<jsp:useBean id="tb" class="dao.TestBoardDAO"/>

<%
    int bdno = Integer.parseInt(request.getParameter("bdno")); //초록색 bdno는 list for문에 있는 bdno이다
    ArrayList<TestBoard> c = tb.views(bdno);
%>

    <html>
<head>
<link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title>게시판 - 본문보기</title>
</head>
<body>

	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">게시판</h1>
		</div>
	</div>

	<div class="container">
		<form>
            <% for(TestBoard a : c) { %>
			<div class="form-group row">
				<label class="col-sm-2 control-label" >이름</label>

                <div class="col-sm-3"><%=a.getUserid()%>
					<div id ="name"></div>
			</div>
			<div class="form-group row">
				<label class="col-sm-2 control-label" >제목</label>
				<div class="col-sm-5">
                    <div id ="title"><%=a.getTitle()%></div>
				</div>
			</div>
			<div class="form-group row"></div>
				<label class="col-sm-2 control-label" >내용</label>
				<div class="col-sm-8" style="word-break: break-all;">
                    <div id ="contents"><%=a.getContents()%></div>
				</div>



            </div>
                <div class="form-group row"></div>
                <label class="col-sm-2 control-label" >삭제</label>
                <div class="col-sm-8" style="word-break: break-all;">
                 <input type="button" value="delete" onclick="location.href='deletelist.jsp?idx=<%=a.getBdno()%>'">
                </div>
            </div>

            <div class="form-group row">
              <div class="col-sm-offset-2 col-sm-10 ">
               <a href="list.jsp" class="btn btn-primary"> 수정</a>

             </div>


            <div class="form-group row">
				<div class="col-sm-offset-2 col-sm-10 ">
					<a href="list.jsp" class="btn btn-primary"> 목록</a>

            </div>
		</div>
          <%}%>
		</form>
		<hr>
	</div>
	
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>	
	
</body>
</html>


