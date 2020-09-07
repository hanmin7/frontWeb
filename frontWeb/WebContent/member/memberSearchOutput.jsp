<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>memberSearchOutput.jsp</title>
</head>
<body>
	<h3 class="page_title">정보 조회</h3>
	<div><span class="label">아이디 : </span><span>${memberOne.id}</span></div>
 	<div><span class="label">패스워드 : </span><span>${memberOne.pw}</span></div>
 	<div><span class="label">직업 : </span><span>${memberOne.job}</span></div>
 	<div><span class="label">가입동기 : </span><span>${memberOne.reason}</span></div>
 	<div><span class="label">성별 : </span><span>${memberOne.gender}</span></div>
 	<div><span class="label">메일수신여부 : </span><span>${memberOne.mailyn}</span></div>
</body>
</html>