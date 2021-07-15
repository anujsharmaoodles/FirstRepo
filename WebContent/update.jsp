<%@  page import="quiz.Question"  %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%Question question=(Question)request.getAttribute("key"); %>
<form action="updated">
<table>
	<tr>
	<td>Question ID</td>
	<td><input type="number" name="id" value=<%=question.getQuestionId()%> readonly></td>
	</tr>
	
	<tr>
	<td>Question</td>
	<td><textarea  name="questn" ><%=question.getQuestion()%></textarea></td>
	</tr>
	
		<tr>
	<td>option 1</td>
	<td><input type="text" name="op1" value=<%=question.getOption1() %>></td>
	</tr>
	
			<tr>
	<td>option 2</td>
	<td><input type="text" name="op2"  value=<%=question.getOption2() %>></td>
	</tr>
	
				<tr>
	<td>option 3</td>
	<td><input type="text" name="op3" value=<%=question.getOption3() %>></td>
	</tr>
	
				<tr>
	<td>option 4</td>
	<td><input type="text" name="op4" value=<%=question.getOption4() %>></td>
	</tr>
	
	<tr>
	<td>Right option</td>
	<td><select  name="rightoption"><option>option 1</option><option>option 2</option><option>option 3</option><option>option 4</option></select></td>
	</tr>
	<tr>
	 <td><input type="submit" value="update"></td>
	<td> <button  onclick="window.location='blank.jsp'">cancel</button></td>
	</tr>
</table>
</form>

</body>
</html>