<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" type="text/css">
<style type="text/css">
table {
	text-align: center;
	display: inline-block;
}
</style>

<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="ServletAutenticacao" method="post">
		<input readonly="readonly" type="hidden" id="url" name="url"
			value="<%=request.getParameter("url")%>">
		<div style="text-align: center;">
			<h2>Autenticar usuário</h2>

			<table>

				<tr>
					<td>Login:</td>
					<td><input type="text" id="login" name="login"></td>
				</tr>
				<tr>
					<td>Senha:</td>
					<td><input type="password" id="senha" name="senha"></td>
				</tr>
				<tr>
					<td></td>
					<td><input type="submit" id="logar" name="logar" value="Logar"
						width="100px" height="100px"> <input type="submit"
						id="cancelar" name="cancelar" value="Cancelar" width="100px"
						height="100px">
				</tr>

			</table>
		</div>
	</form>
</body>
</html>