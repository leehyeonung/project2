<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>수정페이지</title>
</head>
<body>
	<form action="/mem/modify" method="post">		
		<input type="text" name="mem_num" value="${ses.mem_num}" hidden ><br>
		아이디:<input type="text" name="mem_id" value="${ses.mem_id}" ><br>
		비밀번호:<input type="password" name="mem_pw" value="" ><br>
		주소:<input type="text" name="mem_ad" value="${ses.mem_ad}" ><br>
		핸드폰번호:<input type="text" name="mem_cell_num" value="${ses.mem_cell_num}" ><br>
		선호카테고리번호:<input type="text" name="mno_cno" value="${ses.mno_cno}" ><br>
		<button type="submit">수정하기!</button>
	</form>
	
	
</body>
</html>