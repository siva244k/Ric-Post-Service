<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>PostData</title>

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js">
	
</script>
<script>
	function start() {
		$.ajax({
			type : "POST",
			url : "post/rest/post",
			data : $("#postdata").serialize(),
			success : function(result) {
				$("#div1").text(result)
			},
			error : function(e) {
			}
		});

	}
</script>



<script>
	$(document).ready(function() {
		$("button").click(function() {
			$.ajax({
				url : "post/list",
				success : function(data) {

					var tr;
					for (var i = 0; i < data.length; i++) {
						tr = $('<tr/>');
						tr.append("<td>" + data[i].location + "</td>");
						tr.append("<td>" + data[i].position + "</td>");
						tr.append("<td>" + data[i].skill + "</td>");
						$('#div2').append(tr);

					}
				},
				error : function(e) {
				}
			});
		});
	});
</script>



</head>
<body>

	<center>

		<form id="postdata" name="postdata"
			action="http://localhost:8088/RicPostService/post/rest/post"
			method="POST">

			POSITION:<input type="text" name="position" id="position" /><br />
			SKILL:<input type="text" name="skill" id="skill" /><br /> LOCATION:<input
				type="text" name="location" id="location" /><br /> EXPFROM:<input
				type="text" name="expfrom" id="expfrom" /><br /> EXPTO:<input
				type="text" name="expto" id="expto" /><br /> <input type="button"
				value="enter" onclick="start()" />

		</form>

		<div id="div1">
		
			<h2></h2>
		</div>

<button>GET Refrral jobs</button>
		<div id="div2">
			<h2></h2>
		</div>
		


	</center>
</body>
</html>