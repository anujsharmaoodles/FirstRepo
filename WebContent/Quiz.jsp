<%@ page import="quiz.QuestionService" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
	*{font-family: Arial, Helvetica, sans-serif;}
	h1{text-align:center;font-size:100px;color:#1a53ff;   margin-left: 168px;}
	#questn{margin-left:200px;}
	#startbtn{padding:10px 40px;margin-left:100px;background-color:#1a53ff;color:white;}
	#adminbtn{float:right;background-color:#1a53ff;color:white;padding:5px 10px;}
	#main{display:flex;}
	
	
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="main">
<%@ include file="teachersection.html"  %>

<div>
  <%String count = QuestionService.count();%>
  <div> 
<h1>Quiz</h1>  
<form action="questiondisplay">
<div id="questn">
Number of questions : <input type="number" name="numberofquestn"> / <%=count %><br>
<br>
<input type="submit" id="startbtn" value="START QUIZ">
</div>
</form>
</div>
</div>
</body>
</html>