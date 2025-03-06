<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Adicionar novo usuario</h1>
	<form action="addusuario.jsp" method="post">
		<table>
			<tr>
				<td>Nome: </td>
				<td><input type="text" name="nome"/></td>
			</tr>
			<tr>
				<td>Password: </td>
				<td><input type="password" name="password"/></td>
			</tr>
			<tr>
				<td>email: </td>
				<td><input type="email" name="email"/></td>
			</tr>
			<tr>
				<td>sexo: </td>
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
			<td><input type="submit" value="submit"/></td>
		</tr>
		
		</table>
	
	
	</form>
</body>
</html>