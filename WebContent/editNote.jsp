<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" type="text/css" href="css/reset.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">


<link href="${pageContext.request.contextPath}/css/home.css" rel="stylesheet">
	


<title>Editar</title>
</head>
<body>
	<%@ page import="java.util.*,br.edu.insper.*"%>
	
	<div class="container">
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">InsperKeep</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarText" aria-controls="navbarText"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarText">
			<ul class="navbar-nav mr-auto">

			</ul>
		</div>
	</nav>

<br>


<form action="CriaNota">
		
			<div class="form-group">
			  <label for="title_id"><b>Título</b></label>
			  <input type="text" class="form-control" id="title_id" name="title">
			</div>
		
			<!--Título:
			<input type="text" name="title"><br><br>-->
			<div class="form-group">
				<textarea rows="5" cols="111" name="novaNota"></textarea><br><br>
			</div>
			<a href="home.jsp"><input type="submit" value="Enviar"></a>
			<a href="home.jsp"><input type="button" value="Cancelar"></a>
		</form>
		

	</div>

</body>
</html>