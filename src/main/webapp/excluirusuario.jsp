<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="com.crudjspjava.dao.UsuarioDao" %>
	<% 
	String userId = request.getParameter("id");
	int idi = Integer.parseInt(userId);
	UsuarioDao.deleteUsuario(idi);
	response.sendRedirect("viewusuarios.jsp");
	%>
</body>
</html>