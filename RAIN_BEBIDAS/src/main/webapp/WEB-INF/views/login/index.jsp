<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
		<img class="bgvid" src="https://images.unsplash.com/photo-1425321395722-b1dd54a97cf3?dpr=1&auto=format&fit=crop&w=1500&h=1000&q=80&cs=tinysrgb&crop=" />
		<div class="inner-container">
			<img class="bgvid inner" src="https://images.unsplash.com/photo-1425321395722-b1dd54a97cf3?dpr=1&auto=format&fit=crop&w=1500&h=1000&q=80&cs=tinysrgb&crop="/>
			<div class="box">
				<form action="/login" method="post">
					<h1 class="title">Login</h1>
					<input type="text" name="email" placeholder="Email"/>
					<input type="password" name="senha" placeholder="Senha"/>
					<button type="submit">Entrar</button>
				</form>
			</div>
		</div>
	</div>

</body>

</html>