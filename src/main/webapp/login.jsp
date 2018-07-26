<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<!DOCTYPE html>
<html lang="en">
<head>
<style>
body {
	background-image: url("../resources/img/flight.jpg");
	background-size: cover;
	
}

div.login-box-header {
	background-color: white;
	padding: 20px;
}
</style>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<meta name="description" content="">
<meta name="author" content="">

<title>AdminLTE 2 | Log in</title>
<!-- Tell the browser to be responsive to screen width -->
<meta
	content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no"
	name="viewport">
<!-- Bootstrap 3.3.7 -->
<link rel="stylesheet"
	href="${contextPath}/resources/css/bower_components/bootstrap/dist/css/bootstrap.min.css">
<!-- Font Awesome -->
<link rel="stylesheet"
	href="${contextPath}/resources/css/bower_components/font-awesome/css/font-awesome.min.css">
<!-- Ionicons -->
<link rel="stylesheet"
	href="${contextPath}/resources/css/bower_components/Ionicons/css/ionicons.min.css">
<!-- Theme style -->
<link rel="stylesheet"
	href="${contextPath}/resources/css/dist/css/AdminLTE.min.css">
<!-- iCheck -->
<link rel="stylesheet"
	href="${contextPath}/resources/css/plugins/iCheck/square/blue.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
  <![endif]-->

<!-- Google Font -->
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,600,700,300italic,400italic,600italic">



<title>Sistem Tempahan Tiket Penerbangan</title>


</head>

<body class="hold-transition fixed">
	<div class="login-box">
		<!-- /.login-logo -->
		<div class="login-box-header">
			<img class="img.responsive"
				src="${contextPath}/resources/img/mpc-header.png"
				style="width: 100%;">
		</div>
		<div class="login-box-body" style="background: rgba(0, 0, 0, 0.3);">
			<form method="POST" action="${contextPath}/login" class="form-signin">
				<div class="box-header with-border">
					<h3 align="center" style="color: black;">
						<strong>SISTEM TEMPAHAN TIKET PENERBANGAN</strong>
					</h3>
				</div>
				<!-- /.col	<div class="form-group has-feedback">
					<input type="username" class="form-control"
						placeholder="Nama Pengguna"> <span
						class="glyphicon glyphicon-envelope form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" class="form-control"
						placeholder="Kata Laluan"> <span
						class="glyphicon glyphicon-lock form-control-feedback"></span>
				</div>
				<div class="row">
				
					<div class="col-xs-4">
						<button type="submit" class="btn btn-primary btn-block btn-flat">Log
							Masuk</button>
					</div>
					<div class="col-xs-6 pull-right">
						<a data-toggle="modal" data-target="#modal-reset">I forgot my
							password</a><br>
					</div> -->
				<div class="form-group ${error != null ? 'has-error' : ''}">
					<span>${message}</span>
					<div class="form-group has-feedback">
						<input name="username" type="text" class="form-control"
							placeholder="Nama Pengguna"> <span
							class="glyphicon glyphicon-envelope form-control-feedback"></span>
					</div>
					<div class="form-group has-feedback">
						<input name="password" type="password" class="form-control"
							placeholder="Kata Laluan"> <span
							class="glyphicon glyphicon-lock form-control-feedback"></span>
					</div>
					<span>${error}</span> <input type="hidden"
						name="${_csrf.parameterName}" value="${_csrf.token}" />
					<div class="row">
						<div class="col-xs-4">
							<button type="submit" class="btn btn-primary btn-block btn-flat">Log
								Masuk</button>
						</div>
						<div class="col-xs-6 pull-right">
							<a data-toggle="modal" data-target="#modal-reset">I forgot my
								password</a><br>
						</div>

					</div>
				</div>
				 <h4 class="text-center">
					<a href="${contextPath}/registration">Create an account</a>
				</h4>
			
		</div>
		</form>

	</div>


	</div>

	<!-- jQuery 3 -->
	<script
		src="${contextPath}/resources/css/bower_components/jquery/dist/jquery.min.js"></script>
	<!-- Bootstrap 3.3.7 -->
	<script
		src="${contextPath}/resources/css/bower_components/bootstrap/dist/js/bootstrap.min.js"></script>
	<!-- iCheck -->
	<script src="${contextPath}/resources/css/plugins/iCheck/icheck.min.js"></script>
	<script>
		function reset_noti() {

			alert("reset");
		}

		$(function() {
			$('input').iCheck({
				checkboxClass : 'icheckbox_square-blue',
				radioClass : 'iradio_square-blue',
				increaseArea : '20%' /* optional */
			});
		});
	</script>

	<!--  <div class="container">

		<form method="POST" action="${contextPath}/login" class="form-signin">
			<h2 class="form-heading">Log in</h2>

			<div class="form-group ${error != null ? 'has-error' : ''}">
				<span>${message}</span> 
				<input name="username" type="text"
					class="form-control" placeholder="Username" autofocus="true" /> 
					<input
					name="password" type="password" class="form-control"
					placeholder="Password" /> <span>${error}</span> <input
					type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />

				<button class="btn btn-lg btn-primary btn-block" type="submit">Log
					In</button>
				<h4 class="text-center">
					<a href="${contextPath}/registration">Create an account</a>
				</h4>
			</div>

		</form>

	</div>
-->
</body>
</html>
