<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NewUser</title>
<style type="text/css">

body{
background-image: linear-gradient(to top, #4fb576 0%, #44c489 30%, #28a9ae 46%, #28a2b7 59%, #4c7788 71%, #6c4f63 86%, #432c39 100%);
background-repeat: no-repeat;
 background-attachment: fixed;
  background-position: center;

}
	.btn {
  text-decoration: none;
  padding: 10px;
  border: 1px solid #333333;
  margin-right: 50px;
  margin-top: 50%;
  background-color: white;
  border-radius: 5px;
  
}

input{
	padding:6%;
	width: 170%;
	margin-left: 3%;
	margin-right: 10%;
	margin-top: 10px;
	border: 2px solid black;
	border-radius: 10px;
}

#submit{
	width: 120px;
    padding: 12px;
    margin-top: 10%;
    margin-left: 10%;
    font-size: larger;
    background-color: rgb(8, 161, 8);
    color: white;
    border-radius: 10px;
    border-color: white;
}

form{
	border-radius: 10px;
	padding: 20px;
	border: 3px solid black;
	width: 30%;
	margin-top: 5%;
	margin-left: 35%;
    background-image: linear-gradient(to top, #cfd9df 0%, #e2ebf0 100%);
   box-shadow: -51px -28px 16px 4px rgba(0,0,0,0.87);
-webkit-box-shadow: -51px -28px 16px 4px rgba(0,0,0,0.87);
-moz-box-shadow: -51px -28px 16px 4px rgba(0,0,0,0.87);
	
}
	
</style>
<script type="text/javascript">

function myFunction(){
	var username = document.getElementById("uname").value
	var password = document.getElementById("pwd").value
	var rollnum = document.getElementById("rollnum").value
	
	
	
	if(username == "" || password == ""){
		alert("please enter the value")
		return false;
		
	}
	else if(rollnum == ""){
		alert("please enter the Roll number")
		return false;
		
	}
	
		
	
	}
	
	



</script>
</head>
<body class="hello">


	<form action="AddStudentDetails" method="post" onsubmit="return myFunction()">
	<h1 align="center">Register Form</h1>
	
	
	<table align="center">
	<tr>
	
	<tr>
	<td></td>
	<td><input type="text" id="rollnum" name="rollnum" placeholder="Roll number"></td>
	</tr>
	
	<td></td>
	<td><input type="text" id="uname" name="studentname" placeholder="Student name"></td>
	</tr>
	
	<tr>
	<td></td>
	<td><input type="password" id="pwd" name="password" placeholder="password"></td>
	</tr>
	
	
	<tr>
	<td></td>
	<td><input type="submit" id="submit"></td>
	<td><a class="btn" href="login.html">Login </a></td>
	</tr>
	
	
	</table>
	
	</form>

</body>
</html>