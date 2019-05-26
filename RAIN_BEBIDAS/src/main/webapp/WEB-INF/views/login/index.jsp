<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri='http://java.sun.com/jsp/jstl/core' prefix='c' %>
<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Login</title>

	<link rel="icon" href="resources/img/login.png" />
	<link rel="stylesheet" href="resources/css/style-login.css">
	<link rel="stylesheet" href="resources/css/style.css">

</head>
<body>

	<div class="vid-container">
		<img class="bgvid" src="resources/img/login-bk.jpg" />
		<div class="inner-container">
			<img class="bgvid inner" src="resources/img/login-bk.jpg"/>
			<div class="box">
				<form action="/login" method="post">
					<h1 class="title">Login</h1>
					<c:if test="${retorno != null}" >
						<span class="alert" style="color:red;">
							${retorno}
						</span>
					</c:if>
					<input type="text" name="email" placeholder="Email"/>
					<input type="password" name="senha" placeholder="Senha"/>
					<button type="submit">Entrar</button>
				</form>
			</div>
		</div>
	</div>

</body>

</html>