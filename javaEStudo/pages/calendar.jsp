<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<link href='../css/fullcalendar.min.css' rel='stylesheet' />
<link href='../css/fullcalendar.print.min.css' rel='stylesheet'
	media='print' />
<script src='../script/moment.min.js'></script>
<script src='../script/jquery.min.js'></script>
<script src='../script/fullcalendar.min.js'></script>

<script type="text/javascript">
	$(document).ready(function() {

		$.get("BuscarCalendarioDatas", function(response) { // INÍCIO AJAX GET
			//
			var xhttp = new XMLHttpRequest();
			xhttp.onreadystatechange = function() {
			    if (this.readyState == 4 && this.status == 200) {
			       // Typical action to be performed when the document is ready:
			       document.getElementById("calendar");
			    }
			};
			xhttp.open("GET", "BuscarCalendarioDatas", true);
			xhttp.send();
			//
			 var datas = JSON.stringify(response);
			$('#calendar').fullCalendar({
				header : {
					left : 'prev,next today',
					center : 'title',
					right : 'month,basicWeek,basicDay'
					
				},
				defaultDate : '2017-02-12',
				navLinks : true, // can click day/week names to navigate views
				editable : true,
				eventLimit : true, // allow "more" link when too many events
				events : 
					datas
			});
		}); // FIM DO AJAX GET
	});
</script>

<style>
body {
	margin: 40px 10px;
	padding: 0;
	font-family: "Lucida Grande", Helvetica, Arial, Verdana, sans-serif;
	font-size: 14px;
}

#calendar {
	max-width: 900px;
	margin: 0 auto;
}
</style>

<meta charset="iso-8859-1">
<title>Calendário</title>
</head>
<body>

	<div id='calendar'></div>

</body>
</html>