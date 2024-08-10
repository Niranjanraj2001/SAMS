<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LoginPage</title>
<style type="text/css">
	body{
    background-image: linear-gradient(to right, #fa709a 0%, #fee140 100%);}
    
    input{
    width: 100%;
    height: 20%;
    margin-left: 2%;
    padding: 10px;
    margin-top: 10px;
    font-size: larger;
    border-radius: 4px;
}

h1{
    text-align: center;
    font-family:'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande', 'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
    color:rgb(65, 63, 63);

}

.btn {
  text-decoration: none;
  padding: 0.5rem;
background-image: linear-gradient(-225deg, #B7F8DB 0%, #50A7C2 100%);
  color: black;
  border: 1px solid #333333;
  width: 120px;
  padding: 12px;
  border-radius: 4px;
  margin-top: 20%;
  font-size: larger;
  
}

form{
    padding: 20px;
    box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
    width: 30%;
    margin-left: 35%;
    margin-top: 110px;
    background-color: white;
    border-radius: 10px;
    box-shadow: rgba(0, 0, 0, 0.56) 0px 22px 70px 4px;
    box-shadow: 24px -29px 28px 8px rgba(0,0,0,0.85);
-webkit-box-shadow: 24px -29px 28px 8px rgba(0,0,0,0.85);
-moz-box-shadow: 24px -29px 28px 8px rgba(0,0,0,0.85);
}

#submit{
	width: 120px;
    padding: 12px;
    margin-top: 10%;
   
    font-size: larger;
    background-color: rgb(8, 161, 8);
    color: white;
    border-radius: 4px;
    border-color: white;
}
	
</style>
<script type="text/javascript">

function myFunction(){
	var username = document.getElementById("uname").value
	var password = document.getElementById("pwd").value
	
	if(username == "" | password == ""){
		alert("please enter the value")
		return false;
	}
	
	
}


</script>
</head>
<body class="hello">


	<form action="Validation" method ="get" onsubmit="return myFunction()">
	<h1 align="center">Faculty Login</h1>
	
	
	<table align="center">
	<tr>
	<td></td>
	<td><input type="text" id="uname" name="uname" placeholder="username"></td>
	</tr>
	
	<tr>
	<td></td>
	<td><input type="password" id="pwd" name="pwd" placeholder="password"></td>
	</tr>
	
	<tr>
	<td></td>
	<td><input type="submit" id="submit"></td>
	
	
	
	</tr>
	
	
	</table>
	
	</form>

</body>
</html>