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
			String i = "a";
			String link = "usersAdm.jsp?id=" ;
			link += "1";%>
			
			<a href=<%=link%> ><button type="button">Editar users</button></a>
			
			<a href = "index.jsp"><span class="navbar-text buttons_nav"> Log Out </span></a>
		</div>
	</nav>
	
	