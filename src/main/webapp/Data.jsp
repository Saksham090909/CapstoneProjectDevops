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
			<th>Name</th>
			<th>Age</th>
			<th>BP</th>
			<th>SUGAR</th>
			<th>BMI</th>
			<th>DATE</th>
			</tr>
			<c:forEach var = "h" items = "${list}">
				<tr>
				<td>${h.idrow}</td>
				<td>${h.name}</td>
				<td>${h.age}</td>
				<c:choose>
					<c:when test="${h.bp > 0}">
						<c:choose>
							<c:when test="${h.bp < 80}"><td bgcolor="#FF00FF">${h.bp}</td></c:when>
							<c:when test="${h.bp > 120}"><td bgcolor="red">${h.bp}</td></c:when>
							<c:otherwise ><td>${h.bp}</td></c:otherwise>
						</c:choose>
					</c:when>
					<c:otherwise ><td>-</td></c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${h.sugar > 0}">
						<c:choose>
							<c:when test="${h.sugar < 40}"><td bgcolor="#FF00FF">${h.sugar}</td></c:when>
							<c:when test="${h.sugar > 100}"><td bgcolor="red">${h.sugar}</td></c:when>
							<c:otherwise><td>${h.sugar}</td></c:otherwise>
						</c:choose>
					</c:when>
					<c:otherwise ><td>-</td></c:otherwise>
				</c:choose>
				<c:choose>
					<c:when test="${(h.weight)*(h.height) > 0}">
						<c:choose>
							<c:when test="${(h.weight)/((h.height)*(h.height)) < 18.5}"><td bgcolor="#FF00FF">${(h.weight)/((h.height)*(h.height))}</td></c:when>
							<c:when test="${(h.weight)/((h.height)*(h.height)) > 24.9}"><td bgcolor="red">${(h.weight)/((h.height)*(h.height))}</td></c:when>
							<c:otherwise><td>${(h.weight)/((h.height)*(h.height))}</td></c:otherwise>
						</c:choose>
					</c:when>
					<c:otherwise ><td>-</td></c:otherwise>
				</c:choose>
				<td>${h.date}</td>
				</tr>
			</c:forEach>
		</table>
		</div>
	</c:if>
	<div class = "container my-4">
		<a href="/HealthManagementApp/healthForm" class = "btn btn-primary">Add Records</a>
		<h5>RED : Above Normal Range</h5>
		<h5>MAGENTA : Below Normal Range</h5>
		<h5 style = "color:red">If BP or Sugar is above/below normal range, please consult doctor.</h5>
		<h5>If BMI is out of normal range, checkout NIH provided : <a href = "https://www.nhlbi.nih.gov/health/educational/lose_wt/BMI/bmi_tbl.htm" class = "btn btn-primary">BMI Chart</a></h5>
	</div>
</body>
</html>