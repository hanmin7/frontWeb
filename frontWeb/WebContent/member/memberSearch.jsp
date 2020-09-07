<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberSearch.jsp</title>
</head>
<body>
<script>

alert(${error})
</script>
<form action="${pageContext.request.contextPath}/memberSearch.do">
	id : <input name="id">
	<button>검색</button>
</form>
</body>
</html>