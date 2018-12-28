
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
	background-color: #4CAF50;
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


	
	<form action="/updateMember" method="POST">
	
	<center>
			<font size="3.5"
				style="font-family: Calibri, Garamond, Serif; color: #D2691E;">Admin: Update User </font>
		
		<br> <br>
		
		<div class="col-sm-12" style="width:1000px">
			<div class="form-group">
				<input name="userName" class="form-control" id="userName" value="${userName}"
					placeholder="User Name" >
			</div>
			<div class="form-group">
				<input  type="password" name="password" class="form-control" id="password"
					placeholder="New Password" required>
			</div>
			<button type="submit" class="btn btn-primary" onclick="return confirm('Are you sure?')" style="width:100px">Update</button>
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