<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
	<form action="loginServlet" method="post">
		<fieldset style="width: 300px">
			<legend> Login - Seguridad de Bases de Datos </legend>
			<table>
				<tr>
					<td>Nombre</td>
					<td><input type="text" name="username" required="required" /></td>
				</tr>
				<tr>
					<td>Contraseña</td>
					<td><input type="password" name="userpass" required="required" /></td>
				</tr>
				<tr>
					<td><input type="submit" value="Login" /></td>
				</tr>
			</table>
		</fieldset>
	</form>
</body>
</html>