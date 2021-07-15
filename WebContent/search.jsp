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
<h1>SEARCH QUESTION</h1>
<form action="searchresult">
<table>
<tr>
<th>Question ID</th>
<th><input type="number" id="questnIDFld" name="questionID"></th>
</tr>

<tr>
<th>Question Description </th>
<th><textarea id="questnDescriptionArea" name="questionDescription"></textarea></th>
</tr>

<tr>
<th>option 1</th>
<th><input type="text" id="option1Fld" name="option1"></th>
</tr>

<tr>
<th>option 2</th>
<th><input type="text" id="option2Fld" name="option2"></th>
</tr>

<tr>
<th>option 3</th>
<th><input type="text" id="option3Fld" name="option3"></th>
</tr>

<tr>
<th>option 4</th>
<th><input type="text" id="option4Fld" name="option4"></th>
</tr>



<tr>
<th><input type="submit" value="SEARCH"> </th>
<th><input type="button" value="CLOSE" onclick="window.location='blank.jsp'" ></th>
</tr>

</table>
</form>
</div>
</div>


</body>
</html>