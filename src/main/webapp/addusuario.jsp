<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%@ page import="com.crudjspjava.bean.Usuario, com.crudjspjava.dao.UsuarioDao" %>
	<%
	
		String nome = request.getParameter("nome");
		String password = request.getParameter("password");
		String email = request.getParameter("email");
		String sexo = request.getParameter("sexo");
		String pais = request.getParameter("pais");
	
		Usuario usuario = new Usuario();
		usuario.setNome(nome);
		usuario.setPassword(password);
		usuario.setEmail(email);
		usuario.setSexo(sexo);
		usuario.setPais(pais);
		
		int status = UsuarioDao.addUsuario(usuario);
		response.sendRedirect("viewusuarios.jsp");
	%>
</body>
</html>