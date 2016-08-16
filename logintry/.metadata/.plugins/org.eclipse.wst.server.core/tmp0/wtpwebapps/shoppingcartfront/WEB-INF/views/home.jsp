<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">




<html>
<head>

<link href="<c:url value="/resources/css/menu.css" />"
	rel="stylesheet">
	
	<link href="<c:url value="/resources/css/thumb.css" />"
	rel="stylesheet">


<link href="<c:url value="/resources/css/par.css" />"
	rel="stylesheet">
	
	
<link href="<c:url value="/resources/css/par2.css" />"
	rel="stylesheet">


<link href="<c:url value="/resources/css/carousel.css" />"
	rel="stylesheet">



<!-- Latest compiled and minified CSS -->
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">

<!-- jQuery library -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>

<!-- Latest compiled JavaScript -->
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>welcome</title>
</head>
<body>
	<div class="navbar-wrapper">
		<div class="container">

			<nav class="navbar navbar-inverse navbar-fixed-top">
			<div class="container">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed"
						data-toggle="collapse" data-target="#navbar" aria-expanded="false"
						aria-controls="navbar">
						<span class="sr-only">Toggle navigation</span> <span
							class="icon-bar"></span> <span class="icon-bar"></span> <span
							class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="#">ShOPPIng Cart</a>
				</div>
				<div id="navbar" class="navbar-collapse collapse">
					<ul class="nav navbar-nav">

						<li><a href="https://www.linkedin.com/in/abin-baba-045296b6?trk=nav_responsive_tab_profile_pic">About Me</a></li>
						<li><a href="https://goo.gl/maps/n1TsMiShtn92">Contact Me</a></li>
						<li><a href="register">register</a></li>
						<div class="navbar-form navbar-right">

							<button type="submit" class="btn btn-success" data-toggle="modal"
								data-target="#mysignin">Sign in</button>


						</div>
					</ul>
				</div>
			</div>
			</nav>

		</div>
	</div>





	<div class="container">



		<!-- Modal -->
		<div class="modal fade" id="mysignin" role="dialog">
			<div class="modal-dialog">

				<!-- Modal content-->
				<div class="modal-content">
					<div class="modal-header">
						<button type="button" class="close" data-dismiss="modal">&times;</button>
						<h4 class="modal-title">login here</h4>
					</div>
					<div class="modal-body">
						<c:url var="action" value="/login"></c:url>

						<form:form action="${action}" method="post">
							<table>
								<tr>
									<td>User Name:</td>

									<td><input type="text" name="name"></td>
								</tr>

								<tr>
									<td>Password:</td>
									<td><input type="password" name="password" /></td>
								</tr>

							</table>
					</div>
					<div class="modal-footer">
						<td><input type="submit" value="Login"></td>
					</div>
					</form:form>
				</div>

			</div>
		</div>

	</div>






	<!-- Carousel
    ================================================== -->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active">
				<img class="first-slide"
					src="<c:url value="/resources/images/ma.png/" />"
					alt="First slide">
				<div class="container">
					<div class="carousel-caption">
						<h1>Hurry..... don't wait..</h1>

						<p>
							<a class="btn btn-lg btn-primary" href="#" role="button">Sign
								up today</a>
						</p>
					</div>
				</div>
			</div>
			<div class="item">
				<img class="second-slide"
					src="<c:url value="/resources/images/shopinggirl.png/" />"
					alt="Second slide">
				<div class="carousel-caption">
					<h1>BIG saLE OffEr</h1>

					<p>
						<a class="btn btn-lg btn-primary" href="#" role="button">Sign
							up today</a>
					</p>
				</div>
			</div>
			<div class="item">
				<img class="third-slide"
					src="<c:url value="/resources/images/sam.png/" />"
					alt="Third slide">
				<div class="carousel-caption">
					<h1>Go on....</h1>

					<p>
						<a class="btn btn-lg btn-primary" href="#" role="button">Sign
							up today</a>
					</p>
				</div>
			</div>
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"
			aria-hidden="true"></span> <span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>
<br> <br> <br><br> <br>



<div data-role="main" class="ui-content">

			<hr color="red" size="5">

			<ul id="menu">
				<c:if test="${not empty categoryList}">
					<c:forEach items="${categoryList}" var="category">
						<li><a href=${category.name}>${category.name}</a>
							<ul>
								<c:forEach items="${category.products}" var="product">

									<li><a href="<c:url value='product/get/${product.id}' />">${product.name}</a></li>

								</c:forEach>

							</ul></li>
					</c:forEach>
				</c:if>

			</ul>
			<hr color="red" size="5">
			<br> <br> <br>
			<div>
				<c:if test="${!empty selectedProduct.name}">
					<table>
						<tr>
							<th align="left" width="80">Product ID</th>
							<th align="left" width="120">Product Name</th>
							<th align="left" width="200">Product Description</th>
							<th align="left" width="80">Price</th>
							<th align="left" width="200">Product Category</th>
							<th align="left" width="200">Product Supplier</th>

						</tr>
						<tr>
							<td align="left">${selectedProduct.id}</td>
							<td align="left">${selectedProduct.name}</td>
							<td align="left">${selectedProduct.description}</td>
							<td align="left">${selectedProduct.price}</td>
							<td align="left">${selectedProduct.category.name}</td>
							<td align="left">${selectedProduct.supplier.name}</td>
						</tr>
					</table>
				</c:if>
			</div>







<div id="myCart">
				<c:if test="${displayCart==true}">

					<table>
						<tr>
							<th align="left" width="80">Cart ID</th>
							<th align="left" width="120">Product Name</th>
							<th align="left" width="200">Quantity</th>
							<th align="left" width="80">Price</th>
							<th align="left" width="60">Delete from Cart</th>

						</tr>
						<c:forEach items="${cartList}" var="cart">
							<tr>
								<td align="left">${cart.id}</td>
								<td align="left">${cart.productName}</td>
								<td align="left">${cart.quantity}</td>
								<td align="left">${cart.price}</td>
								<td align="left"><a
									href="<c:url value='/cart/delete/${cart.id}'  />">Delete</a></td>
								<td align="left"><a href="<c:url value='pay/${cart.id}' />">
										Proceed</a></td>
							</tr>
						</c:forEach>

					</table>
					
			<%--		<h2>Total cost : ${totalAmount}</h2>
					 <a href="<c:url value='/pay/${cart.userID}'/>">Proceed</a>  
					<a href="<c:url value='/pay/${cart.id}'/>">Proceed</a> --%>
					
					</c:if>
					</div>









		<table width="100%">
			<tr>
				<c:choose>
					<c:when test="${empty loggedInUser}">




					</c:when>

					<c:when test="${not empty loggedInUser}">
						<td>Welcome ${loggedInUser},</td>
						<td align="right"><a href="logout"> logout</a></td>
					</c:when>
				</c:choose>
			</tr>
			<tr>
				<c:if test="${loggedOut==true}">
					<td>${logoutMessage}</td>
				</c:if>
			</tr>
			<tr>
					
						<td align="right"><a href="myCart"> My Cart </a>( ${cartSize}
							)</td>
					
				</tr>
		</table>
		<div id="login">
			<c:if
				test="${isUserClickedLoginHere==true || invalidCredentials==true}">
				<div id="error">${errorMessage}</div>


			</c:if>
		</div>


		<div id="isAdmin">
			<c:if test="${isAdmin==true }">
				<%@ include file="Isadmin.jsp"%> 
			</c:if>
		</div>

		<div id="category">
			<c:if test="${isAdminCLickedCategory==true }">
				<%@ include file="Category.jsp"%>
			</c:if>
		</div>

		<div id="product">
			<c:if test="${isAdminClickedProduct==true }">
				<%@ include file="Product.jsp"%>
			</c:if>
		</div>

		<div id="supplier">
			<c:if test="${isAdminClickedSupplier==true }">
				<%@ include file="Supplier.jsp"%>
			</c:if>
		</div>




		<div id="register">
			<c:if test="${isUserClickedRegisterHere==true}">


			</c:if>
		</div>
		
	
	
	
	
	<div class="container" id="tourpackages-carousel">
      
      <div class="row">
        
        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="<c:url value="/resources/images/thumb13.PNG/" />" alt="">
              <div class="caption">
                <h4>limited offer</h4>
                
                <p><a href="#" class="btn btn-info btn-xs" role="button">BUY</a> 
            </div>
          </div>
        </div>

        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="<c:url value="/resources/images/thumb14.PNG/" />" alt="">
              <div class="caption">
                <h4>coming soon</h4>
                   <p><a href="#" class="btn btn-info btn-xs" role="button">BUY</a> 
            </div>
          </div>
        </div>

        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="<c:url value="/resources/images/thumb15.PNG/" />" alt="">
              <div class="caption">
                <h4>coming soon</h4>
                <p><a href="http://www.flipkart.com/roopkala-silks-plain-chanderi-polycotton-sari/p/itmecs3gcdfgabum?pid=SARECS3GVZUQNUSN&al=3JZrPtpo9AYMkZCV4JBey8ldugMWZuE7eGHgUTGjVrpHfuDG0toaOrkpKM1OjAX6yp5wAZMweBU%3D&ref=L%3A5932318478141181534&srno=b_1&findingMethod=OMU&otracker=hp_omu_The%20Flipkart%20Fashion%20Sale_4_3bcf10ed-1007-4307-8b07-141aea155060_3" class="btn btn-info btn-xs" role="button">BUY</a> 
            </div>
          </div>
        </div>

        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="<c:url value="/resources/images/thumb16.PNG/" />" alt="">
              <div class="caption">
                <h4>limited offer</h4>
                <p><a href="#" class="btn btn-info btn-xs" role="button">BUY</a> 
            </div>
          </div>
        </div>
        
      </div><!-- End row -->
      
    </div><!-- End container -->	
</div>
	
	
	
	
	 
		
		

		
<div class="parallax"></div>

<div style="height:0px;background-color:white;font-size:36px">
LIMITED OFFER......

<div class="container" id="tourpackages-carousel">
      
      <div class="row">
        
        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="<c:url value="/resources/images/thumb4.PNG/" />" alt="">
              <div class="caption">
                <h4>limited offer</h4>
                
                <p><a href="#" class="btn btn-info btn-xs" role="button">BUY</a> 
            </div>
          </div>
        </div>

        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="<c:url value="/resources/images/thumb5.PNG/" />" alt="">
              <div class="caption">
                <h4>coming soon</h4>
                   <p><a href="#" class="btn btn-info btn-xs" role="button">BUY</a> 
            </div>
          </div>
        </div>

        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="<c:url value="/resources/images/thumb6.PNG/" />" alt="">
              <div class="caption">
                <h4>coming soon</h4>
                <p><a href="http://www.flipkart.com/roopkala-silks-plain-chanderi-polycotton-sari/p/itmecs3gcdfgabum?pid=SARECS3GVZUQNUSN&al=3JZrPtpo9AYMkZCV4JBey8ldugMWZuE7eGHgUTGjVrpHfuDG0toaOrkpKM1OjAX6yp5wAZMweBU%3D&ref=L%3A5932318478141181534&srno=b_1&findingMethod=OMU&otracker=hp_omu_The%20Flipkart%20Fashion%20Sale_4_3bcf10ed-1007-4307-8b07-141aea155060_3" class="btn btn-info btn-xs" role="button">BUY</a> 
            </div>
          </div>
        </div>

        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="<c:url value="/resources/images/thumb7.PNG/" />" alt="">
              <div class="caption">
                <h4>limited offer</h4>
                <p><a href="#" class="btn btn-info btn-xs" role="button">BUY</a> 
            </div>
          </div>
        </div>
        
        
        
        
        
        
      </div><!-- End row -->
      
    </div><!-- End container -->	
</div>




<div class="parallax"></div>





<div class="parallax"></div>

<div style="height:0px;background-color:white;font-size:36px">


<div class="container" id="tourpackages-carousel">
      
      <div class="row">
        
        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="<c:url value="/resources/images/thumb1.PNG/" />" alt="">
              <div class="caption">
                <h4>limited offer</h4>
                
                <p><a href="#" class="btn btn-info btn-xs" role="button">BUY</a> 
            </div>
          </div>
        </div>

        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="<c:url value="/resources/images/thumb2.PNG/" />" alt="">
              <div class="caption">
                <h4>coming soon</h4>
                   <p><a href="#" class="btn btn-info btn-xs" role="button">BUY</a> 
            </div>
          </div>
        </div>

        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="<c:url value="/resources/images/thumb3.PNG/" />" alt="">
              <div class="caption">
                <h4>coming soon</h4>
                <p><a href="http://www.flipkart.com/roopkala-silks-plain-chanderi-polycotton-sari/p/itmecs3gcdfgabum?pid=SARECS3GVZUQNUSN&al=3JZrPtpo9AYMkZCV4JBey8ldugMWZuE7eGHgUTGjVrpHfuDG0toaOrkpKM1OjAX6yp5wAZMweBU%3D&ref=L%3A5932318478141181534&srno=b_1&findingMethod=OMU&otracker=hp_omu_The%20Flipkart%20Fashion%20Sale_4_3bcf10ed-1007-4307-8b07-141aea155060_3" class="btn btn-info btn-xs" role="button">BUY</a> 
            </div>
          </div>
        </div>

        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="<c:url value="/resources/images/thumb8.PNG/" />" alt="">
              <div class="caption">
                <h4>limited offer</h4>
                <p><a href="#" class="btn btn-info btn-xs" role="button">BUY</a> 
            </div>
          </div>
        </div>
        
      </div><!-- End row -->
      
    </div><!-- End container -->	
</div>




<div class="parallax"></div>










<div class="parallaxx"></div>

<div style="height:0px;background-color:white;font-size:36px">
ONly FOR u....

<div class="container" id="tourpackages-carousel">
      
      <div class="row">
        
        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="<c:url value="/resources/images/thumb9.PNG/" />" alt="">
              <div class="caption">
                <h4>limited offer</h4>
                
                <p><a href="#" class="btn btn-info btn-xs" role="button">BUY</a> 
            </div>
          </div>
        </div>

        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="<c:url value="/resources/images/thumb10.PNG/" />" alt="">
              <div class="caption">
                <h4>coming soon</h4>
                   <p><a href="#" class="btn btn-info btn-xs" role="button">BUY</a> 
            </div>
          </div>
        </div>

        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="<c:url value="/resources/images/thumb11.PNG/" />" alt="">
              <div class="caption">
                <h4>coming soon</h4>
                <p><a href="http://www.flipkart.com/roopkala-silks-plain-chanderi-polycotton-sari/p/itmecs3gcdfgabum?pid=SARECS3GVZUQNUSN&al=3JZrPtpo9AYMkZCV4JBey8ldugMWZuE7eGHgUTGjVrpHfuDG0toaOrkpKM1OjAX6yp5wAZMweBU%3D&ref=L%3A5932318478141181534&srno=b_1&findingMethod=OMU&otracker=hp_omu_The%20Flipkart%20Fashion%20Sale_4_3bcf10ed-1007-4307-8b07-141aea155060_3" class="btn btn-info btn-xs" role="button">BUY</a> 
            </div>
          </div>
        </div>

        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="<c:url value="/resources/images/thumb12.PNG/" />" alt="">
              <div class="caption">
                <h4>limited offer</h4>
                <p><a href="#" class="btn btn-info btn-xs" role="button">BUY</a> 
            </div>
          </div>
        </div>
        
      </div><!-- End row -->
      
    </div><!-- End container -->	
</div>




<div class="parallaxx"></div>

<div class="parallaxx"></div>

<div style="height:0px;background-color:white;font-size:36px">
ONly FOR u....

<div class="container" id="tourpackages-carousel">
      
      <div class="row">
        
        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="<c:url value="/resources/images/thumb13.PNG/" />" alt="">
              <div class="caption">
                <h4>limited offer</h4>
                
                <p><a href="#" class="btn btn-info btn-xs" role="button">BUY</a> 
            </div>
          </div>
        </div>

        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="<c:url value="/resources/images/thumb14.PNG/" />" alt="">
              <div class="caption">
                <h4>coming soon</h4>
                   <p><a href="#" class="btn btn-info btn-xs" role="button">BUY</a> 
            </div>
          </div>
        </div>

        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="<c:url value="/resources/images/thumb15.PNG/" />" alt="">
              <div class="caption">
                <h4>coming soon</h4>
                <p><a href="http://www.flipkart.com/roopkala-silks-plain-chanderi-polycotton-sari/p/itmecs3gcdfgabum?pid=SARECS3GVZUQNUSN&al=3JZrPtpo9AYMkZCV4JBey8ldugMWZuE7eGHgUTGjVrpHfuDG0toaOrkpKM1OjAX6yp5wAZMweBU%3D&ref=L%3A5932318478141181534&srno=b_1&findingMethod=OMU&otracker=hp_omu_The%20Flipkart%20Fashion%20Sale_4_3bcf10ed-1007-4307-8b07-141aea155060_3" class="btn btn-info btn-xs" role="button">BUY</a> 
            </div>
          </div>
        </div>

        <div class="col-xs-18 col-sm-6 col-md-3">
          <div class="thumbnail">
            <img src="<c:url value="/resources/images/thumb16.PNG/" />" alt="">
              <div class="caption">
                <h4>limited offer</h4>
                <p><a href="#" class="btn btn-info btn-xs" role="button">BUY</a> 
            </div>
          </div>
        </div>
        
      </div><!-- End row -->
      
    </div><!-- End container -->	
</div>




<div class="parallaxx"></div>

</body>
</html>
<%@ include file="footer.jsp"%>