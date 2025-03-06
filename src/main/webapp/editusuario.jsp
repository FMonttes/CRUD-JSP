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
	<jsp:useBean id="usuario" class="com.crudjspjava.bean.Usuario"> </jsp:useBean>
	<jsp:setProperty property="*" name="usuario"/>
	<%
	int i = UsuarioDao.updateUsuario(usuario);
	response.sendRedirect("viewusuarios.jsp");
	%>
</body>
</html>