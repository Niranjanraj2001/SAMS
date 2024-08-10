<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student LogIn</title>

<script type="text/javascript">

function myFunction(){
	var rollno = document.getElementById("rollno").value
	var password = document.getElementById("password").value
	
	if(rollno == "" | password == ""){
		alert("please enter the value")
		return false;
	}
}




</script>
</head>
<body>

	<form action="StudentValidation" method="get" onsubmit="retun myFuction()">
	<h2>Student Login</h2>
		<table>
			<tr>
				<td><input type="text" name="rollno" placeholder="Roll No" id="rollno"></td>
			</tr>
			
			<tr>
				<td><input type="password" name="password" placeholder="Password" id="password"></td>
			</tr>
			
			<tr>
				<td><input type="submit" id="rollno" value="Submit"></td>
			</tr>
		
		
		</table>
	
	
	</form>

</body>
</html>