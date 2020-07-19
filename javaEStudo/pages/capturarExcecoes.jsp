<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-type" content="text/html; charset=ISO-8859-1">
<title></title>
<!-- Importando JQuery -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
</head>

<style type="text/css">
a.semAlinhamento:link{
	text-decoration: none;
}

</style>
<body>
<p><a href="/javaEstudo/" class="semAlinhamento">Voltar</a></p>
	<h3>Capturando exceções com Jquery</h3>
	<!-- Criando um campo de texto e um botão na interface -->
	<input type="text" value="" id="txtvalor">
	<input type="button" value="Button" onclick="testeJquery()">
</body>
	<!-- Importando JavaScript -->
<script type="text/javascript">
	function testeJquery() {

		 valorInformado = $('#txtvalor').val();
		 /* útilizando a biblioteca JQuery
		    A sintaxe abaixo permite inviar e tratar o resultado de requisições*/
		 $.ajax({
			method: "POST",
			url: "capturarExcecao", // PARA QUAL SERVLET
			data: { valorParam : valorInformado}
		 })
		 // SEMPRE CAPTURA O RETORNO
		 .done(function(response){  // RESPOSTA OK - NENHUM ERRO
			 alert("Ok\n" + response);
		 })
		 .fail(function(xhr, status, errorThrown){ // RESPOSTA ERRO - ALGUM PROBLEMA OCORREU
			 alert("ERROR\n" + xhr.responseText); //  MOSTRA A RESPOTA DO SERVIDOR
		 });
	}
</script>
</html>