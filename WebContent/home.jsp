<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">

<link rel="stylesheet" type="text/css" href="reset.css">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">


<link href="${pageContext.request.contextPath}/css/home.css" rel="stylesheet">
	


<title>Home</title>
</head>
<body>
	<%@ page import="java.util.*,br.edu.insper.*"%>
	
	<div class="container">
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">Navbar w/ text</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarText" aria-controls="navbarText"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarText">
			<ul class="navbar-nav mr-auto">

			</ul>
			<span class="navbar-text"> Editar os usuários </span>
		</div>
	</nav>


	
		<a href="newNote.html"><button type="button"
				class="btn btn-success btn-primary btn-lg add_button">+</button></a>



		<table class="table table-hover">
			<thead>
				<tr>

					<th scope="col" class="font-weight-bold" >Titulo</th>
					<th scope="col" class="font-weight-bold" >Opções</th>

				</tr>
			</thead>
			<tbody>



				<%
					DAO dao = new DAO();
					List<Nota> notas = dao.getLista();
					for (Nota nota : notas) {
				%>
				<tr>
					<td><%=nota.getTitle()%> </td>
					<td><%=nota.getPersonId()%></td>
				</tr>
				<%
					}
				%>



			</tbody>
		</table>

	</div>

</body>
</html>