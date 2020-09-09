<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberUpdate.jsp</title>
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script>
	$(function(){
		//초기화 . 자바스크립트 제이쿼리 안에서도 EL쓸 수 있음 
		$("[name=gender]").val(["${memberOne.gender}"]);
		$("[name=hobby]").val("${memberOne.hobby}".replace("[","").replace("]","").split(","));
		$("[name=mailyn]").val(["${memberOne.mailyn}"]);
		$("#frm [name=job]").val(["${memberOne.job}"]);
		
	});
</script>
</head>
<body>
<h3>수정할회원검색</h3>
${error}
<c:if test="${cnt==1}">업데이트 처리완료</c:if>

	<form action="${pageContext.request.contextPath}/memberSearch.do">
		<input type="hidden" name="job" value="update">
		id : <input name="id">
		<button>검색</button>
	</form>
	<c:if test="${not empty memberOne}">
	<h3>검색결과</h3>
	<div class="regist">
	<form method="post" name="frm" id="frm"
		action="${pageContext.request.contextPath}/memberUpdate.do">
	<div>
		<label for="id">ID</label>
		<input type="text" id="id" name="id" value="${memberOne.id}" readonly="readonly">
	</div>
	<div>
		<label for="pw">PW</label>
		<input type="password" id="pw" name="pw" value="${memberOne.pw}">
	</div>
	<div>
		<label for="gender">성별</label>
		<input type="radio" id="female" name="gender" value="f">
		<label for="female">여</label>
		<input type="radio" id="male" name="gender" value="m">
		<label for="male">남</label>
	</div>
	<div>
		<label for="job">직업</label>
		<select id="job" name="job" size="4">
			<option value="">선택</option>
			<option value="developer">프로그래머</option>
			<option value="DBA">DBA</option>
		</select>
	</div>
	<div>
		<label for="reason">가입동기</label>
		<textarea name="reason" id="reason">${memberOne.reason}</textarea>
	</div>
	<div>
		<label for="mail"> 메일수신여부</label>
		<input type="checkbox" name="mailyn" value="Y">
	</div>
	<div>
		<label for="hobby"> 취미</label>
		<input type="checkbox" name="hobby" value="read">독서
		<input type="checkbox" name="hobby" value="game">게임
		<input type="checkbox" name="hobby" value="ski">스키
	</div>
	<div>
		<button type="reset">초기화</button>
		<button>input등록</button>
		<!-- form태그 안에 onsubmit="return inputCheck()"
		script에 밖에  return true; 해줌.
		
		-->

	</div>	
		
	</form>
	</div>
	</c:if>
</body>
</html>