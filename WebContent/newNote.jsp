<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">


<link href="${pageContext.request.contextPath}/css/home.css" rel="stylesheet">
<%-- <link href="${pageContext.request.contextPath}/css/reset.css" rel="stylesheet"> --%>
		


<title>Criar</title>
</head>
<body>
	<%@ page import="java.util.*,br.edu.insper.*"%>
	
	<div class="container">
	<jsp:include page="header.jsp"></jsp:include>

<br>


<form action="CriaNota">
		
			<div class="form-group">
			  <label for="title_id"><b>Título da nota *</b></label>
			  <input type="text" class="form-control" id="title_id" name="title" required>
			</div>
		
			<!--Título:
			<input type="text" name="title"><br><br>-->
			<div class="form-group">
			<label for="descricao"><b>Texto da nota *</b></label>
			<textarea class = "textarea_1 form-control" rows="5" cols="111" name="novaNota" id ="descricao" required></textarea><br><br>
			</div>
			<a href="home.jsp"><button class="btn btn-sm btn-success" type="submit">Gravar</button></a>
			<a href="home.jsp"><button class="btn btn-sm btn-secondary" type="button">Cancelar</button></a>
<!-- 			<a href="home.jsp"><input type="submit" value="Enviar"></a>
			<a href="home.jsp"><input type="button" value="Cancelar"></a> -->
		</form>
		

	</div>

</body>
</html>