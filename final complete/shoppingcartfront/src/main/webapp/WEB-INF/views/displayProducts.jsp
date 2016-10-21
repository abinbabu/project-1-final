<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>display</title>



<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootswatch/3.2.0/sandstone/bootstrap.min.css">
<script	src="//ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
<script	src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>








</head>
<body>
<h2 class="title text-center">Products</h2>


<a href="<c:url value='/angular' />" >angular</a>






					
					 <c:forEach items="${category.products}" var="product">
					<div class="col-sm-4">
						<div class="product-image-wrapper">
							<div class="single-products">
								<div class="productinfo text-center">
								    <a href = "product/get/${product.id}">
									<img src="<c:url value = 'D:\fileupload\image\s${selectedProduct.id}.jpg"' />" alt="" />
						</a>
									<h2>Rs.${product.price}</h2>
									<h2>${product.name}</h2>
									
									<a href="<c:url value='/addc/${product.id}' />" class="btn btn-default add-to-cart"><i
										class="fa fa-shopping-cart"></i>Add to cart</a>
									
									</br>
									</br>
									</br>
									</br>
									</br>
									</br>
									</br>
									</br>
									</br>
									</br>
									</br>
									</br>
									</br>
									</br>
									</br>									
									<br>
									<br>
									<br>
									<br>
								</div>
								
							</div>
							
						</div>
						
					</div>
					</c:forEach>
					
				
					
					
</body>
</html>