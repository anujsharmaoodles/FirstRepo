<%@ page import="quiz.QuestionService" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
	h1{text-align:center;color:#1a53ff;    margin-left: 168px;}
	*{font-family: Arial, Helvetica, sans-serif;}
	table,tr,td,th{margin-left:35%;padding:10px;background-color:#ccccb3}
	button{color:white;background-color:#1a53ff}
	#main{display:flex;}
	input[type=button]{color:white;background-color:#1a53ff}
	input[type=submit]{color:white;background-color:#1a53ff}
	textarea {
   resize: none;
}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div id="main">
<%@ include file="teachersection.html"  %>
<div>
<h1>ADD QUESTION</h1>
 <form action="inserted">  
<table>
 <% int id= QuestionService.getLastQuestionID();
    
      int presentID=(id+1);%>
  
<tr>
<th>Question ID</th>
<th><input id="number" type="number" name="questionID" value=<%=presentID %> readonly></th>
</tr>

<tr>
<th>Question </th>
<th><textarea name="question"> </textarea></th>
</tr>

<tr>
<th>option 1</th>
<th><input type="text" name="option1"></th>
</tr>

<tr>
<th>option 2</th>
<th><input type="text"  name="option2"></th>
</tr>

<tr>
<th>option 3</th>
<th><input type="text"  name="option3"></th>
</tr>

<tr>
<th>option 4</th>
<th><input type="text"  name="option4"></th>
</tr>

<tr>
<th>Right Option</th>
<th><select  name="rightoption"><option>option 1</option><option>option 2</option><option>option 3</option><option>option 4</option></select></th>
</tr>

<tr>
<th><input type="submit" value="ADD"></th>
<th><input type="button" value="CLOSE" onclick="window.location='blank.jsp'" ></th>
</tr>

</table>
</form>
</div>
</div>
</body>
</html>