<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="com.crudjspjava.dao.UsuarioDao, com.crudjspjava.bean.*, java.util.*" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
	<h1>Listagem de Usuarios</h1>
	<%
		List<Usuario> list = UsuarioDao.getAllUsuarios();
		request.setAttribute("list", list);
	%>
	<table border="1">
		<tr><th>ID
		</th><th>Nome</th>
		<th>Password</th>
		<th>email</th>
		<th>Sexo</th>
		<th>Pais</th>
		<th>editar</th>
		<th>excluir</th>
		</tr>
		<c:forEach items="${list}" var="usuario">
		<tr>
			<td>${usuario.getId()}</td>
			<td>${usuario.getNome()}</td>
			<td>${usuario.getPassword()}</td>
			<td>${usuario.getEmail()}</td>
			<td>${usuario.getSexo()}</td>
			<td>${usuario.getPais()}</td>
			<td><a href="editform.jsp?id=${usuario.getId()}">editar</a></td>
			<td><a href="excluirusuario.jsp?id=${usuario.getId()}">excluir</a></td>
		</tr>
		</c:forEach>
	</table>
	<br>
	<a href="editformaddusuario.jsp">adicionar novo usuario</a>
</body>
</html>