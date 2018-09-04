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
		


<title>Editar usuário</title>
</head>
<body>
	<%@ page import="java.util.*,br.edu.insper.*"%>
	
	<%@ page import="javax.servlet.ServletException"%>
	<%@ page import="javax.servlet.annotation.WebServlet"%>
	<%@ page import="javax.servlet.http.HttpServlet"%>
	<%@ page import="javax.servlet.http.HttpServletRequest"%>
	<%@ page import="javax.servlet.http.HttpServletResponse"%>
	
	<div class="container">
	<jsp:include page="header.jsp"></jsp:include>

<br>


<form action="EditaUsuario">
			<!-- TODO: Passar o id da pessoa aqui -->
			<%Integer pessoa_id = 2;%>
			<input type="hidden" name="pessoa_id" value="<%=pessoa_id%>" /> 
			<div class="form-group">		 	
			<%
					DAO dao = new DAO();
					User user = dao.getSpecificUser(pessoa_id);
				%>			 	
			 
			<label for="title_id"><b>Login *</b></label>
			<input type="text" class="form-control" id="title_id" name="login" required value="<%=user.getLogin()%>">
			
			<label for="title_id"><b>Senha *</b></label>
			<input type="text" class="form-control" id="title_id" name="password" required value="<%=user.getPassword()%>">
			
			<label for="title_id"><b>Nome Completo *</b></label>
			<input type="text" class="form-control" id="title_id" name="nome_completo" required value="<%=user.getNome()%>">
			
			<label for="title_id"><b>Email *</b></label>
			<input type="email" class="form-control" id="title_id" name="email" required value="<%=user.getEmail()%>">
			
			<label for="title_id"><b>Administrador *</b></label>
			<input type="number" min="0" max="1" name="adm" required value="<%=user.getAdm()%>">
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