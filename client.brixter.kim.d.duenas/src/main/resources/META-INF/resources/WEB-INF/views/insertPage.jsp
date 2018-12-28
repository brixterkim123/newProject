
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>

<!------ Include the above in your HEAD tag ---------->

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Homepage</title>


<style>
@import
(
'https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.0/css/bootstrap.min.css'
)
.
funkyradio
div
{
clear:
both;
overflow
:
 
hidden
;


}
.funkyradio label {
	width: 100%;
	border-radius: 3px;
	border: 1px solid #D1D3D4;
	font-weight: normal;
}

.funkyradio input[type="radio"]:empty, .funkyradio input[type="checkbox"]:empty
	{
	display: none;
}

.funkyradio input[type="radio"]:empty ~ label, .funkyradio input[type="checkbox"]:empty 
	~ label {
	position: relative;
	line-height: 2.5em;
	text-indent: 3.25em;
	margin-top: 2em;
	cursor: pointer;
	-webkit-user-select: none;
	-moz-user-select: none;
	-ms-user-select: none;
	user-select: none;
}

.funkyradio input[type="radio"]:empty ~ label:before, .funkyradio input[type="checkbox"]:empty 
	~ label:before {
	position: absolute;
	display: block;
	top: 0;
	bottom: 0;
	left: 0;
	content: '';
	width: 2.5em;
	background: #D1D3D4;
	border-radius: 3px 0 0 3px;
}

.funkyradio input[type="radio"]:hover:not (:checked ) ~ label,
	.funkyradio input[type="checkbox"]:hover:not (:checked ) ~ label {
	color: #888;
}

.funkyradio input[type="radio"]:hover:not (:checked ) ~ label:before,
	.funkyradio input[type="checkbox"]:hover:not (:checked ) ~ label:before
	{
	content: '\2714';
	text-indent: .9em;
	color: #C2C2C2;
}

.funkyradio input[type="radio"]:checked ~ label, .funkyradio input[type="checkbox"]:checked 
	~ label {
	color: #777;
}

.funkyradio input[type="radio"]:checked ~ label:before, .funkyradio input[type="checkbox"]:checked 
	~ label:before {
	content: '\2714';
	text-indent: .9em;
	color: #333;
	background-color: #ccc;
}

.funkyradio input[type="radio"]:focus ~ label:before, .funkyradio input[type="checkbox"]:focus 
	~ label:before {
	box-shadow: 0 0 0 3px #999;
}

.funkyradio-default input[type="radio"]:checked ~ label:before,
	.funkyradio-default input[type="checkbox"]:checked ~ label:before {
	color: #333;
	background-color: #ccc;
}

.funkyradio-primary input[type="radio"]:checked ~ label:before,
	.funkyradio-primary input[type="checkbox"]:checked ~ label:before {
	color: #fff;
	background-color: #337ab7;
}

.funkyradio-success input[type="radio"]:checked ~ label:before,
	.funkyradio-success input[type="checkbox"]:checked ~ label:before {
	color: #fff;
	background-color: #5cb85c;
}

.funkyradio-danger input[type="radio"]:checked ~ label:before,
	.funkyradio-danger input[type="checkbox"]:checked ~ label:before {
	color: #fff;
	background-color: #d9534f;
}

.funkyradio-warning input[type="radio"]:checked ~ label:before,
	.funkyradio-warning input[type="checkbox"]:checked ~ label:before {
	color: #fff;
	background-color: #f0ad4e;
}

.funkyradio-info input[type="radio"]:checked ~ label:before,
	.funkyradio-info input[type="checkbox"]:checked ~ label:before {
	color: #fff;
	background-color: #5bc0de;
}

.customers {
	font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
	border-collapse: collapse;
	width: 100%;
}

.customers td, .customers th {
	border: 1px solid #ddd;
	padding: 8px;
}

.customers tr:nth-child(even) {
	background-color: #f2f2f2;
}

.customers tr:hover {
	background-color: #ddd;
}

.customers th {
	padding-top: 12px;
	padding-bottom: 12px;
	text-align: left;
	background-color: #FFAB91;
	color: white;
}
</style>



</head>
<body>

	<table id="content"
		style="min-height: 80px; height: 80px; width: 100%; border: 0px; margin: 0; padding: 0; bordercollapse: collapse; background-color: #800000;">
		<tr style="height: 60px;">
			<td><img src="../../css/acn_logo.PNG" alt="Banner Image"></td>
			<td align=right>
				<p style="font-family: Calibri, Garamond, Serif;">
					<font color="white"; ><B> Accenture Philippines Delivery
							Center </B></font>
				</p>
				<p style="font-family: Calibri, Garamond, Serif;">
					<font color="white";>Technology Capability Fundamentals for
						Java</font>
				</p>
			</td>
		</tr>
	</table>
	<br>
	<br>
	<form method="POST" action="/backLogin">
		<div>
			</a>
		</div>
		<button class="btn btn-primary">
			<span><i class="glyphicon glyphicon-circle-arrow-left"></i></span>&nbspBack
		</button>
	</form>
	<form action="/insertMember" method="POST">

		<center>
			<font size="3.5"
				style="font-family: Calibri, Garamond, Serif; color: #D2691E;">Admin:
				Create User </font> <br> <br>

			<div class="" style="width: 1000px">

				<div class="col-sm-12">
				<div class="form-group">
					<center>
						<font size="5"
							style="font-family: Calibri, Garamond, Serif; color: #D2691E;">${errorMessage}
						</font>
					</center>
				</div>
				<div class="form-group">
					<input name="userName" class="form-control" id="userName"
						placeholder="User Name" required>
				</div>
				<div class="form-group">
					<input type="password" name="password" class="form-control"
						id="password" placeholder="Password" required>
				</div>
				</div>

				<div class="col-sm-6">
					<div class="funkyradio">
						<div class="funkyradio-primary">
							<input type="radio" name="userType" value="Admin" id="radio1"
								checked /> <label for="radio1">Admin</label>
						</div>
					</div>

				</div>
				<div class="col-sm-6">
					<div class="funkyradio">
						<div class="funkyradio-primary">
							<input type="radio" name="userType" value="Member" id="radio2" />
							<label for="radio2">Member</label>
						</div>
					</div>
				</div>

				<button type="submit" class="btn btn-success" style="width: 100px">Add</button>
			</div>
		</center>

	</form>

	<br>
	<br>
	<br>
	<br>

	<!-- Footer -->
	<style>
#footer {
	background-color: white;
	color: black;
	clear: both;
	text-align: center;
	padding: 5px;
	border: 1px solid #999999
}
</style>
	<div id="footer">

		<P align=center style="font-family: Calibri, Garamond, Serif;">
			<font size="1.5"> TCF Java - Client </font>
		</P>
	</div>
	<!-- Footer END -->
</body>
<!--<p>${response}</p>  -->
</html>