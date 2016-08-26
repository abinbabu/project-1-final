<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="<c:url value="/resources/css/admin.css" />"
	rel="stylesheet">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Product</title>
</head>
<body>
	<h2 style="text-align: center; font-family: verdana; color: #00000F">ADD PRODUCT</h2>

	<c:url var="addProduct" value="to_add_product"></c:url>
	<form:form action="${addProduct}" commandName="product"
 	enctype="multipart/form-data" method="post">
	
    
	<table >
		<tr>
			<td style=" font-family: verdana; color: #00000F"><form:label path="id">
					<spring:message text="ProductID" />
				</form:label></td>
			<c:choose>

				<c:when test="${!empty product.id}">
					<td><form:input path="id" disabled="true" readonly="true" />
					</td>
				</c:when>

				<c:otherwise>
					<td><form:input path="id"  required="true"
							title="Enter a valid id" /></td>
				</c:otherwise>
			</c:choose>
		</tr>

			<tr>
			    <form:input path="id" hidden ="true"/>
			<td style=" font-family: verdana; color: #00000F"><form:label path="name">
					<spring:message text="ProductName"></spring:message>
				</form:label></td>
			<td><form:input path="name" required="true"></form:input></td>
		</tr>
		
		
		<tr>
			<td style=" font-family: verdana; color: #00000F"><form:label path="description">
					<spring:message text="ProductDescription"></spring:message>
				</form:label></td>
			<td><form:input path="description" required="true"></form:input></td>
		</tr>

		<tr>
			<td style=" font-family: verdana; color: #00000F"><form:label path="price">
					<spring:message text="ProductPrice"></spring:message>
				</form:label></td>
			<td><form:input path="price" required="true"></form:input></td>
		</tr>
		<tr>
				<td><form:label path="supplier">
						<spring:message text="Supplier" />
					</form:label></td>
				<td><form:select path="supplier.name" items="${supplierList}"
						itemValue="name" itemLabel="name" /></td>
			</tr>
			<tr>
				<td><form:label path="category">
						<spring:message text="Category" />
					</form:label></td>
				<td><form:select path="category.name" items="${categoryList}"
						itemValue="name" itemLabel="name" /></td>
			</tr>
		
		<tr>
			    <td align="left"><form:label path="image">
			             <spring:message text="Image"/>
			             </form:label></td>
			    <td align="left"><form:input type="file" path="image"/></td>
			 </tr> 
		<tr>
				<!-- if the category is already exist, then edit -->
				<td colspan="2"><c:if test="${!empty product.name }">
						<input type="submit"
							value="<spring:message text="Edit"></spring:message>">
					</c:if> <c:if test="${empty product.name}">
						<input type="submit"
							value="<spring:message text="Add"></spring:message>">
					</c:if></td>
			</tr>
	</table>
	
	</form:form>
	
	
	<h2 style=" font-family: verdana; color: #00000F;text-align: center">LIST OF PRODUCTS</h2>
	<c:if test="${!empty productList}">
	<table>
	<tr>
				<th style=" font-family: verdana; color: #00000F"> ID</th>
				<th style=" font-family: verdana; color: #00000F"> NAME</th>
				<th style=" font-family: verdana; color: #00000F"> DESCRIPTION</th>
				<th style=" font-family: verdana; color: #00000F"> PRICE</th>
				<th style=" font-family: verdana; color: #00000F">Product Category</th>
				<th style=" font-family: verdana; color: #00000F">Product Supplier</th>
				<th style=" font-family: verdana; color: #00000F"> EDIT</th>
				<th style=" font-family: verdana; color: #00000F"> DELETE</th>
			</tr>
			<c:forEach items="${productList}" var="product">
				<tr>
					<td style=" font-family: verdana; color: #00000F">${product.id}</td>
					<td style=" font-family: verdana; color: #00000F">${product.name}</td>
					<td style=" font-family: verdana; color: #00000F">${product.description}</td>
					<td style=" font-family: verdana; color: #00000F">${product.price}</td>
				    <td style=" font-family: verdana; color: #00000F">${product.category.name}</td>
					<td style=" font-family: verdana; color: #00000F">${product.supplier.name}</td>
					<td style=" font-family: verdana; color: #00000F"><a href="<c:url value='product/edit/${product.id}' />">Edit</a></td>
					<td style=" font-family: verdana; color: #00000F"><a href="<c:url value='product/remove/${product.id}' />">Delete</a></td>
				</tr>
			</c:forEach>
	
	</table>
	</c:if>
	
</body>
</html>