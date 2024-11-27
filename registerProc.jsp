<%@page import="studentDb.studentDo"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
	%>

	<h2>registerProc.jsp</h2>
	<hr>
	
	<jsp:useBean id="ado" class="companyDb.companyDo" />
	<jsp:setProperty property="*" name="ado" />
	
	<jsp:useBean id="adao" class="companyDb.companyDao" />
	
	<%
		//dao의 insertAddrbook() 이용하여 입력받은 데이터 저장
		adao.insertcompany(ado);
	
		//bootMain.jsp 페이지로 무조건 이동
		response.sendRedirect("bootMain.jsp");
	%>

	
</body>
</html>
