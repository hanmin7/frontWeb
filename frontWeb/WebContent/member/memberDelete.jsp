<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberDelete.jsp</title>
<script>
/* 	if('${error}' != ''){
		alert('');
	} */
</script>
</head>
<body>
<h3>회원삭제</h3>
${error}

<form action="${pageContext.request.contextPath}/memberSearch.do">
<input type="hidden" name="job" value="delete">
	id : <input name="id">
	<button>검색</button>
</form>
<!-- 검색 결과 출력 -->
<c:if test="${not empty memberOne}">
<h3>검색결과</h3>
	job: ${memberOne.job}<br>
	gender: ${memberOne.gender}<br>
	id: ${memberOne.id}<br>
<form action="${pageContext.request.contextPath}/memberDelete.do">
<input name="id" value="${memberOne.id}" type="hidden">
	<button>삭제</button>
</form>
</c:if>

<c:if test="${cnt == 1}">삭제처리완료</c:if>

</body>
</html>