<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
	#main{display:flex;}
	*{font-family: Arial, Helvetica, sans-serif;}
	h3{color:#1a53ff;}
	#file{margin-left: 195px;
    text-align: center;
    margin-top: 155px;
    background-color:#d6d6c2;
    padding: 15px;height: 149px;}
    button{background-color:#1a53ff;color:white;padding:5px 10px;}
	
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="main">
<%@ include file="teachersection.html"  %>

<div id="file">
	<h3>Choose csv or json file to be uploaded</h3>
	<form action="upload">
			<input type="file" name="file"><br>
				<br>
			<button>UPLOAD</button>
			</form>
			</div>
			</div>
		
</body>
</html>