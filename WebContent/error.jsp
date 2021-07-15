<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
	*{font-family: Arial, Helvetica, sans-serif;}
	h1{color:#1a53ff;}
	#main{display:flex;}
	#msg{margin-left: 161px;
    margin-top: 147px;border: 1px solid #1a53ff;padding: 0px 41px;height: 142px;}
    button{color:white;background-color:#1a53ff;margin-left: 177px;
    padding: 10px 40px;
    font-size: 15px;}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="main">
<%@ include file="teachersection.html"  %>

<div id="msg">
   <h1>Please select .csv or .json file</h1>
   <button onclick="window.location='blank.jsp'">OK</button>
   </div>
   </div>
</body>
</html>