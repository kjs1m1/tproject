<%@ page import="java.util.ArrayList" %>
<%@ page import="vo.TestBoard" %>
<%@ page contentType="text/html; charset=utf-8"%>


<jsp:useBean id="tb" class="dao.TestBoardDAO"/>
<%
    ArrayList<TestBoard> b = tb.listView(); //listView는 ArrayList의 이름이아 아니고 메소드 이름 이다 자식아'
%>

<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
          href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
<title></title>
</head>
<body>


	<div class="jumbotron">
		<div class="container">
			<h1 class="display-3">게시판</h1>
		</div>
	</div>
	<div class="container">
		<form>
			<div>
				<div class="text-right">
					<span class="badge badge-success">전체게시물	</span>
                    <span class="badge badge-warning">전체 페이지	</span>
				</div>
			</div>
			<div style="padding-top: 50px">
				<table class="table table-hover">
					<tr>제목</th>
						<th width="15%">번호</th>
						<th width="13%">제목</th>
                        <th width="13%">아이디</th>
                        <th width="13%">날짜</th>
                        <th width="15%">추천수</th>
                        <th width="15%">조회수</th>
					</tr>
            <%for(TestBoard a : b){ %>
            <tr>
                <td><%=a.getBdno()%></td>
                <td><a href="view2.jsp?bdno=<%=a.getBdno()%>"><%=a.getTitle()%></a></td>
                <td><%=a.getUserid()%></td>
                <td><%=a.getRegdate()%></td>
                <td><%=a.getThumb()%></td>
                <td><%=a.getViews()%></td>
            </tr>
                <%}%>
            </table>
    </div>
			<div align="center">


            </div>
			<div align="left">
				<table>
					<tr>
						<td width="70%" align="left">&nbsp;&nbsp;
						<select name="ftype" class="txt">
								<option value="title">제목에서</option>
								<option value="content">본문에서</option>
								<option value="userid">글쓴이에서</option>
						</select> <button name="text" type="text" /> <input type="button" id="findbtn" class="btn btn-primary "> 검색</button>
						</td>
						<td width="300px" class="text-right">
							<div class="text-right"><button type="button" id="newbtn" class="btn btn-danger" onclick=location.href="write.jsp">글쓰기</button></div>
                            <%--자바스크림트로 write.jsp로 넘어가게함--%>
						</td>
					</tr>
				</table>
			</div>
		</form>
		<hr>
	</div>

<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
	
</body>
</html>





