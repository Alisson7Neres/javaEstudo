<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://cdn.datatables.net/1.10.21/css/jquery.dataTables.min.css" />

<script type="text/javascript"
	src="https://code.jquery.com/jquery-3.5.1.js"></script>

<script
	src="https://cdn.datatables.net/1.10.21/js/jquery.dataTables.min.js"></script>


<script type="text/javascript">

	$(document).ready(function() { // Faz o processamento na hora que abre a tela
		$('#minhaTabela').DataTable({
	        "processing": true,
	        "serverSide": true,
	        "ajax": "carregarDadosDataTable" // Retorno dos dados do servidor
		});
	});
</script>

<title>DataTable com JQuery</title>
</head>
<body>
	<table id="minhaTabela" class="display" style="width: 100%">
		<thead>
			<tr>
				<th>Id</th>
				<th>Login</th>
				<th>Senha</th>
			</tr>
		</thead>
	</table>
</body>
</html>
