
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
}
</style>



</head>
<body >
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
		<a href="login" type=""  ><button class="btn" >Log out</button></a>
	</div>
	<br>
		<a href="insertPage" type="" ><button class="btn btn-success">New User</button></a>
		
	
	<form action="/deleteMember" method="POST">

		<center>
			<font size="10"
				style="font-family: Calibri, Garamond, Serif; color: #D2691E;">Admin: User List </font>
		</center>
		<br> <br>
		<center>
			<table class="customers" style="width:90%">
				<tr>
					<th>Id</th>
					<th>User Name</th>
					<th>User Type</th>
					<th colspan = "2"><center>Action</center></th>
				</tr>

				<c:forEach var="recordItem" items="${userList}">
					<tr>
						<td>${recordItem.userId}</td>
						<td>${recordItem.userName}</td>
						<td>${recordItem.userType}</td>
						<td>
						<form action="/deleteMember" method="POST">
						<button class="btn btn-danger" value="${recordItem.userName}" name="userName" onclick="return confirm('Are you sure?')">Delete</button>
						</td>
						<td>
						</form>
						
						<form action="/updatePage" method="POST">
						<button class="btn btn-primary" value="${recordItem.userName}" name="userName">Update</button>
							
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