<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<title>로그인</title>
<head>


<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<link rel="stylesheet" href="resources/journal/bootstrap.css"
	media="screen">
<link rel="stylesheet" href="resources/_assets/css/custom.min.css">
<link rel="stylesheet" href="resources/ourcss/main.css">
<link rel="stylesheet" href="resources/ourcss/customLogin.css">


</head>

<body>

	<header>
		<div class="header_wrap">
			<div class="logo">
				<a href="/opalproject/main">
					<h1>
						<img src="resources/images/Opal.png" width=150 alt
							class="default_logo">
					</h1>
				</a>
			</div>

			<div class="top_nav">
				<div class="top_ul">
					<div class="bs-component1">
						<nav class="navbar navbar-expand-lg navbar-light bg-light">
							<button class="navbar-toggler" type="button"
								data-toggle="collapse" data-target="#navbarColor03"
								aria-controls="navbarColor03" aria-expanded="false"
								aria-label="Toggle navigation">
								<span class="navbar-toggler-icon"></span>
							</button>

							<div class="collapse navbar-collapse" id="navbarColor03">
								<ul class="navbar-nav mr-auto">
									<li class="nav-item"><a class="nav-link"
										style="font-size: 12px;" href="/opalproject/customLogin">로그인</a></li>
									<li class="nav-item"><a class="nav-link"
										style="font-size: 12px;" href="/opalproject/entrance">회원가입</a></li>
									<li class="nav-item"><a class="nav-link"
										style="font-size: 12px;" href="#">고객센터</a></li>
								</ul>
							</div>
						</nav>
					</div>
				</div>
			</div>
	</header>
	<!--header 끝-->

	<div class="bs-component2">
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarColor03" aria-controls="navbarColor03"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<!--건드리지 마세요.-->

			<div class="collapse navbar-collapse" id="navbarColor03"
				style="height: 100px">
				<div class="navbar-nav2">
					<ul class="navbar-nav mr-auto">
						<li class="nav-item2"><a class="nav-link"
							style="padding-right: 4rem;" href="/opalproject/about">소개</a></li>
						<li class="nav-item2"><a class="nav-link"
							style="padding-right: 4rem;" href="/opalproject/datamain">질병DATA</a></li>
						<li class="nav-item2"><a class="nav-link"
							style="padding-right: 4rem;" href="/opalproject/goods">농산물구매</a></li>
						<li class="nav-item2"><a class="nav-link"
							style="padding-right: 4rem;" href="/opalproject/markets">농가별구매</a></li>
						<li class="nav-item2"><a class="nav-link"
							style="padding-right: 4rem;" href="#">레시피</a></li>
						<li class="nav-item2"><a class="nav-link"
							style="padding-right: 4rem;" href="#">식단추천</a></li>
						<li class="nav-item2"><a class="nav-link"
							style="padding-right: 4rem;" href="#">정기결제</a></li>
					</ul>
				</div>
			</div>
		</nav>
	</div>
	<hr>
	<br>
	<!--main navbar 끝-->

	<section id="customLogin">
		<div class="login_card">
			<div id="card_feagure" class="card border-success mb-3" style="max-width: 40rem;">
				<div class="card-header">
					<h1>Custom Login page</h1>
				</div>
				<div class="card-body">
					<form method='post' action="/opalproject/login">
						<div>
							<input type="text" name="username" value="admin">
						</div>
						<div>
							<input type="password" name="password" value="admin">
						</div>
						<div>
							<button type="submit" class="btn btn-success" style="width=200px">로그인</button>
						
						</div>

						<input type="hidden" name="${_csrf.parameterName}"
							value="${_csrf.token}">
					</form>
					<a href="/opalproject/entrance">회원가입</a> / <a
						href="/opalproject/entrance">비밀번호/아이디찾기</a>
				</div>
			</div>
			<h2>
				<c:out value="${error}" />
			</h2>
			<h2>
				<c:out value="${logout}" />
			</h2>
		</div>
	</section>

	<footer>
		<h3>홈페이지 정보(바닥 글)</h3>
	</footer>
	<!--footer 끝-->

</body>


<script src="resources/_vendor/jquery/dist/jquery.min.js"></script>
<script src="resources/_vendor/popper.js/dist/umd/popper.min.js"></script>
<script src="resources/_vendor/bootstrap/dist/js/bootstrap.min.js"></script>
<script src="resources/_assets/js/custom.js"></script>

</html>