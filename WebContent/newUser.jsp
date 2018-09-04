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


<form action="CriaUsuario">

			<div class="form-group">		 	
			<label for="title_id"><b>Login *</b></label>
			<input type="text" class="form-control" id="title_id" name="login" required>
			
			<label for="title_id"><b>Senha *</b></label>
			<input type="text" class="form-control" id="title_id" name="password" required>
			
			<label for="title_id"><b>Nome Completo *</b></label>
			<input type="text" class="form-control" id="title_id" name="nome_completo" required>
			
			<label for="title_id"><b>Email *</b></label>
			<input type="email" class="form-control" id="title_id" name="email" required>
			
			<label for="title_id"><b>Administrador *</b></label>
			<input type="number" min="0" max="1" name="adm" required>
			<p>0 - Caso não seja administrador</p>
			<p>1 - Caso seja administrador.</p>
			</div>
			
			<a href="home.jsp"><button class="btn btn-sm btn-success" type="submit">Gravar</button></a>
			<a href="home.jsp"><button class="btn btn-sm btn-secondary" type="button">Cancelar</button></a>
<!-- 			<a href="home.jsp"><input type="submit" value="Enviar"></a>
			<a href="home.jsp"><input type="button" value="Cancelar"></a> -->
		</form>
		

	</div>

</body>
</html>