<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- Importando css -->
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css" />

<!-- Importando JQuery -->
<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.min.js"></script>

<!-- Importando o framework  dataTables-->

<script
	src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>

<title>Upload files</title>
<script type="text/javascript">
	function uploadFile() {

		var target = document.querySelector('img');
		var file = document.querySelector('input[type=file]').files[0];
		var reader = new FileReader();
		reader.onloadend = function() {
			// reader.result responsável por lê a imagem
			target.src = reader.result;

			// Upload Ajax
			$.ajax({
				method : "POST",
				url : "fileUpload", // PARA QUAL SERVLET
				data : {
					fileUpload : target.src
				}
			})
			// SEMPRE CAPTURA O RETORNO
			.done(function(response) { // RESPOSTA OK - NENHUM ERRO
				alert("" + response);
			}).fail(function(xhr, status, errorThrown) { // RESPOSTA ERRO - ALGUM PROBLEMA OCORREU
				alert("" + xhr.responseText); //  MOSTRA A RESPOTA DO SERVIDOR
			});
			;

		};
		if (file) {
			reader.readAsDataURL(file);
		} else {
			target.src = "";
		}

	}
</script>
		
</head>




<body>
	<h2>Página de upload</h2>
	<!-- <form action="fileUpload" method="post" id="formImagem"> -->
	<form enctype="application/x-www-form-urlencoded">
		<input type="file" id="file" name="file" onchange="uploadFile();" />
		<img alt="imagem" src="" id="target" width="200" height="200" /> <br />
	</form>
	<br />
	<br />
	<br />
	<br />


	<a href="fileUpload?acao=carregar">Carregar arquivos</a>
	<form action="fileUpload" method="get">
		<table id="imagens" class="display" style="width: 100%">
			<c:forEach items="${listaUserImagem}" var="user">
			<!-- 
				<tr>
					<td>Arquivo="${user.id}"</td>
					<td><a href="fileUpload?acao=download&idImagem=${user.id}">Donwload
							do arquivo</a>
			 -->
					<!-- <img src ="fileUpload?imagemPura"> -->
					
					<!-- O código abaixo irá exibir a imagem no browser -->
					<c:if test="${user.imagem != null}">

					<td><a href="fileUpload?acao=download&idImagem=${user.id}"><img
							src='<c:out value="${user.imagem}"/>' alt="Imagem User"
							title="mostrarImagem" width="240" height="180"></a></td>
				</c:if>
				<!--  -->

				<tr>
					<td><a href="fileUpload?acao=deletar&id=${user.id }"
						onclick="return confirm('Confirmar a exclusão?');">
							<img src="data:image/png;base64,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" width="32" height="32"/></a></td>
				</tr>
			</c:forEach>
		</table>

		<script type="text/javascript">
			$(document).ready(function() {
				$('#imagens').DataTable();
			});
		</script>

	</form>
</body>
</html>