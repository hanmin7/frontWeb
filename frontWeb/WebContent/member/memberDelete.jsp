<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberDelete.jsp</title>
</head>
<body>
${error}
<form action="${pageContext.request.contextPath}/memberDelete.do">
	삭제할 id : <input name="id">
	<button>검색</button>
</form>
</body>
</html>