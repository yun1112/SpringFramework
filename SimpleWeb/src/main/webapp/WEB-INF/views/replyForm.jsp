<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>답글 페이지</title>
<style>
 td>img {
	width: 50px;
	height: 50px;
	}

    #contentForm {
/*       width: 70%;
 */      margin: 0 auto;
      padding-top: 2%;
    }
 
    .table > thead > tr > th, .table > tbody > tr > th {
      background-color: #e6ecff;
      text-align: center;
    }
</style>
	<%@ include file="/WEB-INF/views/frame/top.jsp"%>
</head>
<body>
	<%@ include file="/WEB-INF/views/frame/sideMenuBar.jsp"%>
<div id="contentForm" align="center">
	<hr width="500" color="green">
	<h2>답글 페이지</h2>
	<hr width="500" color="green">


<div id="contentForm" align="center" class="input-group input-group-sm" role="group" aria-label="...">
	<table class="table table-striped table-bordered" width="500" cellpadding="0" cellspacing="0" border="1" >
		<form action="replyOk" method="post">
			<input type="hidden" name="bNo" value="${replyForm.bNo}" />
			<input type="hidden" name="bGroup" value="${replyForm.bGroup}" />
			<input type="hidden" name="bStep" value="${replyForm.bStep}" />
			<input type="hidden" name="bIndent" value="${replyForm.bIndent}" />
			
			<thead>
			<tr>
				<td>번호</td>
				<td>${replyForm.bNo}</td>
			</tr>
			<tr>
				<td>조회수</td>
				<td>${replyForm.bHit}</td>
			</tr>
			<tr>
				<td>작성자</td>
				<td><input type="text" name="bName" /></td>
			</tr>
			<tr>
				<td>제목</td>
				<td><input class="form-control" aria-describedby="basic-addon1" type="text" name="bSubject" value="[re] ${replyForm.bSubject}" readonly/></td>
			</tr>
			</thead>
			<tbody>
			<tr>
				<td>답변</td>
				<td><textarea rows="10" cols="80" name="bContent"></textarea></td>
			</tr>
			</tbody>
			<tr>
			 <div class="btn-group btn-group-sm" role="group" aria-label="...">
				<td colspan = "2" align="center">
					<input class="btn btn-outline-primary" type="submit" value="답변전송">&nbsp;&nbsp;&nbsp;<a class="btn btn-outline-primary" href="list">목록으로</a>
				</td>
				</div>
			</tr>
		</form>	
	</table>
</div>
</div>
	<%@ include file="/WEB-INF/views/frame/bottom.jsp"%>

</body>
</html>