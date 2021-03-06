<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>

<html>
<head>

<link href="<c:url value="/resources/css/reg.css" />"
	rel="stylesheet">
	
	<link href="<c:url value="/resources/css/bootstrap.css" />"
	rel="stylesheet">
	
	<link href="<c:url value="/resources/css/style.css" />"
	rel="stylesheet">
	
	<link href="<c:url value="/resources/css/font-awesome.css" />"
	rel="stylesheet">

 <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.1/css/font-awesome.min.css">
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Register User</title>
</head>
<body background="<c:url value="/resources/images/reg.png/" />"> 

<div class="login">
		<div class="main-agileits">
				<div class="form-w3agile form1">	
    <form:form  modelAttribute="user" >
    </br></br></br>
		<table align="center">
			<tr>
			
				<td><form:label path="id">
						<spring:message text="ID" />
					</form:label></td>
         
				<td><form:input path="id" pattern=".{4,7}" 
						title="id should contains 4 to 7 characters" />
						
						
						</td>
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('id')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach>	
			</tr>
			<tr>
				<td><form:label path="name">
						<spring:message text="User Name" />
					</form:label></td>

				<td><form:input path="name" pattern=".{2,30}" 
						title="name should not be empty" />
						
						
					</td>
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('name')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach>	
			</tr>
			<tr>
				<td><form:label path="password">
						<spring:message text="Password" />
					</form:label></td>

				<td><form:input path="password" pattern=".{7,15}"
						
						title="password should contains 7 to 15 characters" />
						
						
						
						</td>
				<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach>		
			</tr>
			<tr>
				<td><form:label path="contactnumber">
						<spring:message text="Mobile" />
					</form:label></td>

				<td><form:input type="tel" path="contactnumber" pattern="^\d{10}$" 
						title="Please enter valid mobile number" />
						
						
						</td>
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('contactnumber')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach>
							
			</tr>

			<tr>
				<td><form:label path="mailid">
						<spring:message text="Email" />
					</form:label></td>

				<td><form:input type="email" path="mailid" 
				title="Please enter email"/>
				
				
				
				
				</td>
				<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('mailid')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach>
			</tr>

			<tr>
				<td><form:label path="address">
						<spring:message text="Address" />
					</form:label></td>

				<td><form:input path="address" pattern=".{4,30}" 
				title="max 30"/>
				
				
				
				</td>
				<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('address')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach>
				
			</tr>

			<tr>
                <td>
				<button name="_eventId_submit" type="submit" class="btn btn-default">Signup</button>
				</td>
			</tr>

		</table>
 
	</form:form>
	
		</div>
				
			</div>
		</div>
	
	
	
					
			
	
	</body>
</html>