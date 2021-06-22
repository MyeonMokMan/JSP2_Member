<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>
	<center>
		<h2>모든 회원 정보</h2>
		<table width="800" border="1" bgcolor="beige">
			<tr height="40">
				<td align="center" width="50">아이디</td>
				<td align="center" width="200">이메일</td>
				<td align="center" width="150">전화</td>
				<td align="center" width="150">취미</td>
				<td align="center" width="150">직업</td>
				<td align="center" width="100">나이대</td>
			</tr>
		<c:forEach var="v" items="${v}">
			<tr height="40">
				<td align="center" width="50">${v.id }</td>
				<td align="center" width="200"><a href="#">${v.email }</a></td>
				<td align="center" width="150">${v.tel }</td>
				<td align="center" width="150">${v.hobby }</td>
				<td align="center" width="150">${v.job }</td>
				<td align="center" width="100">${v.age }</td>
			</tr>		
		</c:forEach>
		</table>
	</center>
</body>
</html>