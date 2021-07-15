<%@ page import="quiz.QuestionDisplay" %>
<%@ page import="java.util.ArrayList"%>
<%@ page import="quiz.AnswerableQuestion" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
 <% ArrayList<AnswerableQuestion> questionlist=(ArrayList)request.getAttribute("questionlist"); %>
<%
for(AnswerableQuestion question:questionlist){
%>
<h1><%=question.getQuestionId() %></h1>
<h1><%=question.getQuestion() %></h1>
<h1><%=question.getOption1() %></h1>
<h1><%=question.getOption2() %></h1>
<h1><%=question.getOption3() %></h1>
<h1><%=question.getOption4() %></h1>
<%} %>
<h1>hiiii</h1>
</body>
</html>