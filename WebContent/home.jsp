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


<!--  	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous" -->
<link href="${pageContext.request.contextPath}/css/home.css"
	rel="stylesheet">



<title>Home</title>
</head>
<body>
	<%@ page import="java.util.*,br.edu.insper.*"%>
	<%
		String i = "a";
	%>


	<%
		try {
			i = request.getAttribute("id").toString();
		} catch (NullPointerException e) {
			System.out.print("Caught the NullPointerException");
			i = "a";
		}
	%>


	<%
		if (i != "a") {
	%>

	<div class="container">
		<jsp:include page="header.jsp"></jsp:include>

		<br> <a href="newNote.jsp"><button type="button"
				class="btn btn-outline-success btn-lg btn-block">Adicionar
				nota</button></a>


		<table class="table table-hover">

			<%-- <% if (${name} =! nulls) %> --%>
			<thead>

				<tr>

					<th scope="col" class="font-weight-bold">Titulo</th>
					<th scope="col" class="font-weight-bold">Opções</th>

				</tr>
			</thead>
			<tbody>

				<%
					if (i != null) {

							DAO dao = new DAO();
							List<Nota> notas = dao.getLista();
							for (Nota nota : notas) {
				%>
				<tr>
					<td><%=nota.getTitle()%></td>
					<td><button class="btn btn-sm btn-primary btn-block"
							type="button">Editar</button>
						<button class="btn btn-sm btn-danger	 btn-block" type="button">Deletar</button></td>
				</tr>
				<%
					}
						}
				%>



			</tbody>
		</table>


	</div>
	<%
		} else {
	%>
	<h1>Usuário não autenticado</h1>
	<img src = "https://media.giphy.com/media/12XMGIWtrHBl5e/giphy.gif" alt = "No"> <%}%>
</body>
</html>