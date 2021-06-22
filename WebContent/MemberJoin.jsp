<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>회원가입</title>
</head>
<body>
	<center>
	<h2>회원 가입</h2>
	<form action="proc.do" method="post">
		<table width="500" border="1">
			<tr height="50">
				<td width="150" align="center">아이디</td>
				<td width="350" align="center"><input type="text" name="id" size="40" placeholder="아이디를 입력하세요." required></td>	
			</tr>
			<tr height="50">
				<td width="150" align="center">비밀번호</td>
				<td width="350" align="center"><input type="password" name="pass1" size="40" placeholder="비밀번호를 입력하세요." required></td>
			</tr>
			<tr height="50">
				<td width="150" align="center">비밀번호 확인</td>
				<td width="350" align="center"><input type="password" name="pass2" size="40" placeholder="비밀번호를 입력하세요." required></td>
			</tr>
			<tr height="50">
				<td width="150" align="center">이메일</td>
				<td width="350" align="center"><input type="email" name="email" size="40"></td>
			</tr>
			<tr height="50">
				<td width="150" align="center">전화번호</td>
				<td width="350" align="center"><input type="tel" name="tel" size="40"></td>
			</tr>
			<tr height="50">
				<td width="150" align="center">관심분야</td>
				<td width="350" align="center">
					<input type="checkbox" name="hobby" value="등산">등산
					<input type="checkbox" name="hobby" value="독서">독서
					<input type="checkbox" name="hobby" value="게임">게임
					<input type="checkbox" name="hobby" value="코딩">코딩
				</td>
			</tr>
			<tr height="50">
				<td width="150" align="center">직업</td>
				<td width="350" align="center">
					<select name="job">
						<option value="학생">학생</option>
						<option value="교사">교사</option>
						<option value="회사원">회사원</option>
						<option value="자영업자">자영업자</option>
						<option value="개발자">개발자</option>
					</select>
				</td>
			</tr>
			<tr height="50">
				<td width="150" align="center">연령대</td>
				<td width="350" align="center">
					<input type="radio" name="age" value="10대">10대
					<input type="radio" name="age" value="20대">20대
					<input type="radio" name="age" value="30대">30대
					<input type="radio" name="age" value="40대">40대
					<input type="radio" name="age" value="50대">50대
					<input type="radio" name="age" value="60대">60대
				</td>
			</tr>
			<tr height="50">
				<td width="150" align="center">내용</td>
				<td width="350" align="center">
					<textarea rows="5" cols="40" name="info"></textarea>
				</td>
			</tr>
			<tr height="50">
				<td colspan="2" align="center">
					<input type="submit" value="전송"></button>
					<input type="reset" value="초기화"></button>
				</td>
			</tr>
		</table>
	</form>
	</center>
</body>
</html>