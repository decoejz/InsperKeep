<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" session = "true"%>
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
			
			/* i = "a"; */
			i="1";
		}
	%>


	<%
		/* if (i != "a") */ if(true){
	%>

	<div class="container">
		<jsp:include page="header.jsp"></jsp:include>
		<%-- <h1><%= request.getAttribute("attributeKey") %></h1> --%>
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
							String link;
							DAO dao = new DAO();
							List<Nota> notas = dao.getLista(i);
							for (Nota nota : notas) {
								link = "editNote.jsp?nota_id=";
								link += nota.getNoteId();
								System.out.println(link);
								
								
				%>
				<tr>
					<td><%=nota.getTitle()%></td>
					<td><a href=<%=link%> ><button class="btn btn-sm btn-primary btn-block" type="button">Editar</button></a>
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
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" ></script>
</html>