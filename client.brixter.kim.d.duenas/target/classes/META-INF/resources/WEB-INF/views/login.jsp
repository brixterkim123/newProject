<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->


<html>
<head>

<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<link href="../../css/Login.css" rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
</head>
<style>
</style>
<body id="LoginForm">

	<div class="container">
		<div class="login-form">
			<div class="main-div">
				<div class="panel">
					<h2>Billing Automated Requisition System</h2>
					<h2>Login</h2>
				</div>
				
				<form id="Login" action="/loginMember" method="POST">

					<div class="form-group">
						<input name="userName" class="form-control" id="userName"
							placeholder="User Name" required>
					</div>

					<div class="form-group">
						<input type="password" name="password" class="form-control" id="inputPassword"
							placeholder="Password" required>
					</div>
					<div class="forgot">
						<a href="#">Forgot password?</a>
					</div>
					<div class="form-group">
						<center>
					<font size="3.5"
						style="font-family: Calibri, Garamond, Serif; color: #D2691E;">${loginFail} </font>
				</center>
					</div>
					
					<button type="submit" class="btn btn-primary">Login</button>

				</form>
				
			</div>
			<p class="botto-text"></p>
		</div>
	</div>


</body>
</html>
