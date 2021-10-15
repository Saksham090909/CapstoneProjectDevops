<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" isELIgnored = "false"%>
    <%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel = "stylesheet" href = "https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<title>See Data Here</title>
</head>
<body>
<h1>See all data here : </h1>
	<c:if test="${list.size()>0 }">
		<div>
			<h2>Health Data List</h2>
		<table class = "table table-bordered">
			<tr>
			<th>IDROW</th>
			<th>BP</th>
			<th>SUGAR</th>
			<th>DATE</th>
			</tr>
			<c:forEach var = "h" items = "${list}">
				<tr>
				<td>${h.idrow}</td>
				<c:choose>
					<c:when test="${h.bp < 80}"><td bgcolor="#FF00FF">${h.bp}</td></c:when>
					<c:when test="${h.bp > 120}"><td bgcolor="red">${h.bp}</td></c:when>
					<c:otherwise ><td>${h.bp}</td></c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${h.sugar < 40}"><td bgcolor="#FF00FF">${h.sugar}</td></c:when>
					<c:when test="${h.sugar > 100}"><td bgcolor="red">${h.sugar}</td></c:when>
					<c:otherwise><td>${h.sugar}</td></c:otherwise>
				</c:choose>
				<td>${h.date}</td>
				</tr>
			</c:forEach>
		</table>
		</div>
	</c:if>
	<a href="/healthForm" class = "btn btn-primary">Add Records</a>
	<h4>RED : Above Normal Range</h4>
	<h4>MAGENTA : Below Normal Range</h4>
	<h4 style = "color:red">In both cases please consult doctor as soon as possible.</h4>
</body>
</html>