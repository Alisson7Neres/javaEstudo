<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Importando JQuery -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
<title>Insert title here</title>
</head>
<body>
	<h2>Página pai load JQuery</h2>
	<input type="submit" value="Carregar página" onclick="carregar();">
	
	<div id="mostrarPaginaFilha"></div> <!-- local de carregamento da página filha -->
</body>
<script type="text/javascript">
function carregar(){
	// Utilizando Ajax para recarregar página externa
	// a cerquilha pega o id de referência
	$("#mostrarPaginaFilha").load('paginaFilha.jsp');
	// load página em JQuery
}
</script>
</html>