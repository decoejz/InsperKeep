<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html lang="en">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	
	<meta name="viewport"
		content="width=device-width, initial-scale=1, shrink-to-fit=no">
	<meta name="description" content="">
	<meta name="author" content="">
	
	
	<title>Insperkeep</title>
	
	
	<link rel="stylesheet"
		href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- 		integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u"
		crossorigin="anonymous" -->
	<link href="${pageContext.request.contextPath}/css/main.css" rel="stylesheet">
	
	
	<!-- <link rel="stylesheet" type="text/css" href="css/test_style.css"> -->

</head>

<body class="text-center">
<%@ page import="java.util.*,br.edu.insper.*"%>
	<form class="form-signin" method="post" action = "ValidarUser">
		<h1 class="h3 mb-3 font-weight-normal">Insperkeep</h1>
		<input type="text" id="inputusername" class="form-control"
			placeholder="Username" required autofocus name="login"> <input
			type="password" id="inputPassword" class="form-control"
			placeholder="Password" required autofocus name="password">

		<button class="btn btn-lg btn-primary btn-block" type="submit">Sign in</button>
	</form>


</body>
</html>



