<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
	<%@ taglib uri = "http://www.springframework.org/tags/form" prefix = "form" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<title>Health Form</title>
<style type="text/css">
</style>
<script type="text/javascript">
function validateForm() {
	  let age = document.forms["hf"]["age"].value;
	  let name = document.forms["hf"]["name"].value;
	  let bp = document.forms["hf"]["bp"].value;
	  let sugar = document.forms["hf"]["sugar"].value;
	  let weight = document.forms["hf"]["weight"].value;
	  let height = document.forms["hf"]["height"].value;
	  let date = document.forms["hf"]["date"].value;
	  if (age.length == 0 || name.length == 0 || bp.length == 0 || sugar.length == 0 || weight.length == 0 || height.length == 0 || date.length == 0)  {
	    alert("All fields must be filled out");
	    return false;
	  }
	}
</script>
</head>
<body>
	<div class = "container pt-3">
	<h1>Please Fill All Details : </h1>
	<form:form action = "saveForm" modelAttribute = "health" name="hf" onsubmit="return validateForm()">
		<div class = "form-group">
			<label for = "name">Name </label>
			<form:input path="name" class = "form-control" name = "name" onfocus = "this.value=''"/>
		</div>
		<div class = "form-group">
			<label for = "age">Age </label>
			<form:input path="age" class = "form-control" name = "age" onfocus = "this.value=''"/>
		</div>
		<div class = "form-group">
			<label for = "bp">Blood pressure </label>
			<form:input path="bp" class = "form-control" placeholder = "Normal Range : 80-120" name = "bp" onfocus = "this.value=''"/>
		</div>
		<div class = "form-group">
			<label for = "sugar">Sugar Level (Fasting) </label>
			<form:input path="sugar" class = "form-control" placeholder = "Normal Range : 40 - 100" name = "sugar" onfocus = "this.value=''"/>
		</div>
		<div class = "form-group">
			<label for = "weight">Weight </label>
			<form:input path="weight" class = "form-control" name = "weight" onfocus = "this.value=''"/>&nbsp; KG
		</div>
		<div class = "form-group">
			<label for = "height">Height </label>
			<form:input path="height" class = "form-control" name = "height" onfocus = "this.value=''"/>&nbsp; meter
		</div>
		<div class = "form-group">
			<label for = "date">Date </label>
			<form:input path="date" type = "date" class = "form-control" placeholder = "DD.MM.YYYY" name = "date"/>
		</div>
		<button type = "submit" class = "btn btn-success">Submit</button>
	</form:form>
</div>
</body>
</html>