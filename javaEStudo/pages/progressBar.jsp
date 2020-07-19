<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

<title>Barra de progresso</title>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">

<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>

<!-- fundo fa barra de progresso  -cor cinza -->
<style type="text/css">
#myProgress {
	width: 100%;
	background-color: #ddd;
}

/* Cor da barra de progresso*/
#myBar {
	width: 1%;
	height: 30px;
	background-color: #4CAF50;
}

.ui-progressbar {
	position: : relative;
}

.progress-label {
	position: relative;
	left: 50%;
	top: 4px;
	font-weight: bold;
	text-shadow: 1px 1 px 0 #fff;
}
</style>

</head>
<body>
	<h2>Exemplo com JavaScript</h2>
	<div id="myProgess">
		<!-- Fundo da barra -->
		<div id="myBar">
			<!-- Barra de progesso -->
		</div>
		<br />
		<button onclick="exibirBarra()">Iniciar a barra de progresso</button>
	</div>

	<script type="text/javascript">
		function exibirBarra() {
			var elem = document.getElementById("myBar");
			var width = 1;
			var id = setInterval(frame, 10);

			function frame() {
				if (width >= 100) {
					clearInterval(id);
				} else {
					width++;
					elem.style.width = width + "%";
				}
			}
		}
	</script>

	<br />

	<h2>Barra de prograsso em JQuery</h2>
	<div id="progressbar">
		<div class="progress-label">
		Carregando...
		</div>
	</div>
	<!-- Script da barra de progresso JQuery -->
	<script type="text/javascript">
	$(function(){
		var progressbar = $("#progressbar"), 
		progresslabel = $(".progress-label");
		
		progressbar.progressbar({// Cria a barra no div
			value : false,
		change : function(){
			progresslabel.text(progressbar.progressbar('value') + "%");
		},
		complete : function(){
			progresslabel.text('completo');
		}
		
		});
		function progress (){
			var val = progressbar.progressbar("value") || 0;
			progressbar.progressbar("value", val + 2);
			
			if(val < 99){
				setTimeout(progress, 80);
			}
		}
		setTimeout(progress, 2000); //  chamado ao abrir a tela
	});
	</script>
</body>
</html>