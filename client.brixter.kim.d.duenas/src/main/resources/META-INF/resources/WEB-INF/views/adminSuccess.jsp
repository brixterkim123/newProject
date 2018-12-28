
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
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Homepage</title>


<style>
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
	
	background-image:url("https://hdwallsource.com/img/2014/9/blur-26347-27038-hd-wallpapers.jpg"); 
	background-repeat:no-repeat; background-position:center; background-size:cover; padding:10px;
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
	<div>
		<a href="login" type=""><button class="btn">Log out</button></a>
	</div>
	<br>
	<form method="POST" action="/insertPage">
	<button class="btn btn-success"><span><i class="glyphicon glyphicon-plus"></i></span>&nbspNew
			User</button>
	</form>

	<form action="/deleteMember" method="POST">

		<center>
			<font size="10"
				style="font-family: Calibri, Garamond, Serif; color: #D2691E;">Admin:
				User List </font>
		</center>
		<br> <br>
		<center>
			<center>
				<font size="5"
					style="font-family: Calibri, Garamond, Serif; color: #d24d57;">${userDelete}
				</font>
			</center>
			<center>
				<font size="5"
					style="font-family: Calibri, Garamond, Serif; color: #01DF74;">${userCreate}
				</font>
			</center>
			<center>
				<font size="5"
					style="font-family: Calibri, Garamond, Serif; color: #2E9AFE;">${userUpdate}
				</font>
			</center>
			
			
			<table class="customers" style="width: 90%">
				<tr>
					<th>Id</th>
					<th>User Name</th>
					<th>User Type</th>
					<th colspan="2"><center>Action</center></th>
				</tr>

				<c:forEach var="recordItem" items="${userList}">
					<tr>
						<td>${recordItem.userId}</td>
						<td>${recordItem.userName}</td>
						<td>${recordItem.userType}</td>
						<td>
							<form action="/deleteMember" method="POST">
								<button class="btn btn-danger" value="${recordItem.userName}"
									name="userName" onclick="return confirm('Are you sure?')"><span><i class="fa fa-trash"></i></span>&nbspDelete</button>
						</td>
						<td>
							</form>

							<form action="/updatePage" method="POST">
								<button class="btn btn-primary" value="${recordItem.userName}"
									name="userName"><span><i class="glyphicon glyphicon-edit"></i></span>&nbspUpdate</button>

							</form>
						</td>
					</tr>
				</c:forEach>
			</table>

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