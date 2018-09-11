	<%@ page import="java.util.*,br.edu.insper.*"%>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="#">InsperKeep</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarText" aria-controls="navbarText"
			aria-expanded="false" aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarNav">
			<ul class="navbar-nav mr-auto">

			</ul>
			
			
			
			
			<% 
			try {
				
				
	
				
				
				
				String a = request.getParameter("id_header");
				DAO dao = new DAO();
				
				boolean adm = dao.verifyAdm(a);
				if (adm==true){
					
					
				

			%>
		<form action="RedirectUser">
			<input type="hidden" name="id" value=<%=a%> />
		
		<button class="btn" type="submit">Gerenciador Notas</button>
			</form>
			
			
			
			
			<form action="RedirectUserAdm">
			<input type="hidden" name="id" value=<%=a%> />
		
						<button class="btn" type="submit">Administrar Usuários</button>
			</form>
			
			
			<%
				}
			} catch (NullPointerException e) {
			
		
/* 		    String redirectURL = "index.jsp";
		    response.sendRedirect(redirectURL); */
		    System.out.println("Usuário não definido");


		}

			
 
			
			
%>
			<a href = "index.jsp"><span class="navbar-text buttons_nav"> Log Out </span></a>
		</div>
	</nav>
	
	