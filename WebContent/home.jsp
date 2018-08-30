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
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
>

<!--  	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous" -->
<link href="${pageContext.request.contextPath}/css/home.css" rel="stylesheet">
	


<title>Home</title>
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
			<span class="navbar-text"> Editar os usuários </span>
			<span class="navbar-text buttons_nav"> Log Out </span>
		</div>
	</nav>

<br>
<a  href ="newNote.jsp">
 <button   type="button" class="btn btn-outline-success btn-lg btn-block">Adicionar nota</button>
</a>
	



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
					<td><button class="btn btn-sm btn-primary btn-block" type="button">Editar</button> <button class="btn btn-sm btn-danger	 btn-block" type="button">Deletar</button></td>
				</tr>
				<%
					}
				%>



			</tbody>
		</table>

	</div>

</body>
</html>