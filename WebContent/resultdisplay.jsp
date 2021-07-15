<%@ page import="quiz.Question" %>
<%@ page import="quiz.SearchResult" %>
<%@ page import= "java.util.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
	*{font-family: Arial, Helvetica, sans-serif;}
	tr,td,th,table{border:1px solid black;border-collapse:collapse;margin-left: 38px;}
	#heading{color:white;background-color:#1a53ff}
	tr:nth-child(odd) {background:#ebebe0;}
	button{background-color:#1a53ff;color:white;padding:5px 10px;}
	#main{display:flex;}
	#close{margin-left:571px;}
</style>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<button id="close" onclick="window.location='blank.jsp'">CLOSE</button> <br>
<br>
<div id="main">
<%@ include file="teachersection.html"  %>

<div>
<table>
<tr id="heading">
<th>Question ID</th>
<th>Question</th>
<th>Option 1</th>
<th>Option 2</th>
<th>Option 3</th>
<th>Option 4</th>

</tr>
<% List<Question> listOfQuestions=(List)request.getAttribute("resultList"); %>
<%

for(Question question:listOfQuestions){
%>
<form>
<tr>
<td><%=question.getQuestionId() %></td>
<td><%=question.getQuestion() %></td>
<td><%=question.getOption1() %></td>
<td><%=question.getOption2() %></td>
<td><%=question.getOption3() %></td>
<td><%=question.getOption4() %></td>
<td><a href="update?qid=<%=question.getQuestionId()%>&q=<%=question.getQuestion() %>&op1=<%=question.getOption1() %>&op2=<%=question.getOption2() %> &op3=<%=question.getOption3()%>&op4=<%=question.getOption4()%>">EDIT</a> <a href=#>DELETE</a></td>
</tr>
</form>
<%} %>
</table>
</div>
</body>
</html>