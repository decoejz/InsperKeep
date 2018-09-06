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
	<div class="container">
	<%
		String i = "a";
	%>


	<%
		try {
			i = request.getAttribute("id").toString();
		} catch (NullPointerException e) {
			
			/* i = "a"; */
		
		    String redirectURL = "user_not.jsp";
		    response.sendRedirect(redirectURL);


		}
	%>


	<%
	 if (i != "a") {

		} %>
	
	
	
	<%String link_adicionar = "newNote.jsp?id=";
		link_adicionar += i;
	%>
		<jsp:include page="header.jsp"></jsp:include>
		<%-- <h1><%= request.getAttribute("attributeKey") %></h1> --%>
		<br> <a href=<%=link_adicionar%>><button type="button"
				class="btn btn-outline-success btn-lg btn-block">Adicionar
				nota</button></a>
	
	
		<table class="table table-hover">

		<%-- <% if (${name} =! nulls) %> --%>
			<thead>

				<tr>

					<th scope="col" class="font-weight-bold">Titulo</th>
					<th scope="col" class="font-weight-bold">Nota</th>
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
								String notaId = nota.getNoteId().toString();
								link = "editNote.jsp?nota_id=";
								link += notaId;
								link += "&person_id=";
								link += i;							
								
				%>
				<tr>
					<td><%=nota.getTitle()%></td>
					<td class="max_width"><%=nota.getNote()%></td>
					
					<td><a href=<%=link%> ><button class="btn btn-sm btn-primary btn-block" type="button">Editar</button></a>
				
					<form action="DeletaNota">
						<input type="hidden" name="nota_id" value="<%=notaId%>" />
						<input type="hidden" name="person_id" value="<%=i%>"/>
						
						<button class="btn btn-sm btn-danger	 btn-block" type="submit">Deletar</button>
					</form>
					
					<!-- <button class="btn btn-sm btn-danger	 btn-block" type="button">Deletar</button> --></td>
				</tr>
				<%
					}

						}

				%>



			</tbody>
		</table>


	

	</div>
</body>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" ></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js" ></script>
</html>