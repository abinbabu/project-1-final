<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>confrm</title>
</head>
<body>
<div>
						
						
						
						<form:form modelAttribute="user">
							${user.id}
							
								<br />
							${user.name}
							
							<br/>
							${user.password}	
							
							<br />
							${user.contactnumber}
								 
						    <br />
						    ${user.mailid}		
							
							<br />
							${user.address}
							
							<br />
							
							<button type="submit" >Edit</button><br/>
							<button type="submit" >Confirm Details</button>
							
						</form:form>
					</div>
</body>
</html>