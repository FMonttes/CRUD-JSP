<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>edição do usuario</title>
</head>
<body>
	<%@ page import="com.crudjspjava.bean.Usuario, com.crudjspjava.dao.UsuarioDao" %>
	<% 
		String id = request.getParameter("id");
		Usuario usuario = UsuarioDao.getById(Integer.parseInt(id));
	%>
	<h1>Edição do usuario</h1>
	<form action="editusuario.jsp" method="post">
		<input type="hidden" name="id" value="<%=usuario.getId()%>"/>
		<table>
			<tr>
				<td>Nome: </td>
				<td><input type="text" name="nome" value="<%=usuario.getNome()%>"/></td>
			</tr>
			<tr>
				<td>Password: </td>
				<td><input type="password" name="password" value="<%=usuario.getPassword()%>"/></td>
			</tr>
			<tr>
				<td>Email: </td>
				<td><input type="email" name="email" value="<%=usuario.getEmail()%>"/></td>
			</tr>
			<tr>
				<td>Sexo: </td>
				<td><input type="radio" name="sexo" value="masculino"/>Masculino
				<input type="radio" name="sexo" value="feminino"/>Feminino
				</td> 
			</tr>
    	<tr>
        <td>País:</td>
        <td>
            <select name="pais">
                <option value="Argentina">Argentina</option>
                <option value="Bolívia">Bolívia</option>
                <option value="Brasil">Brasil</option>
                <option value="Chile">Chile</option>
                <option value="Colômbia">Colômbia</option>
                <option value="Equador">Equador</option>
                <option value="Guiana">Guiana</option>
                <option value="Paraguai">Paraguai</option>
                <option value="Peru">Peru</option>
                <option value="Suriname">Suriname</option>
                <option value="Uruguai">Uruguai</option>
                <option value="Venezuela">Venezuela</option>
            </select>
        </td>
    	</tr>
		<tr>
			<td colspan="2"><input type="submit" value="editar usuario"/></td>
		</tr>
		</table>
	</form>
</body>
</html>