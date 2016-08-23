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
	
	<link href="<c:url value="/resources/css/bootstrap.css" />"
	rel="stylesheet">
	
	<link href="<c:url value="/resources/css/coreSlider.css" />"
	rel="stylesheet">
	
	<link href="<c:url value="/resources/css/flexslider.css" />"
	rel="stylesheet">
	
	<link href="<c:url value="/resources/css/font-awesome.css" />"
	rel="stylesheet">
	
	<link href="<c:url value="/resources/css/jquery-ui.css" />"
	rel="stylesheet">
	
	<link href="<c:url value="/resources/css/jstarbox.css" />"
	rel="stylesheet">
	
	<link href="<c:url value="/resources/css/owl.carousel.css" />"
	rel="stylesheet">
	
	<link href="<c:url value="/resources/css/styles.css" />"
	rel="stylesheet">
	





<link href="<c:url value="/resources/css/carousel.css" />"
	rel="stylesheet">










<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>

<script src="<c:url value="/resources/js/jquery.min.js" />" type="text/javascript"></script>
<link href='//fonts.googleapis.com/css?family=Cagliostro' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,800italic,800,700italic,700,600italic,600,400italic,300italic,300' rel='stylesheet' type='text/css'>
<!--search jQuery-->
	
	<script src="<c:url value="/resources/js/main.js" />" type="text/javascript"></script>
<!--search jQuery-->

<script src="<c:url value="/resources/js/responsiveslides.min.js" />" type="text/javascript"></script>
 <script>
    $(function () {
      $("#slider").responsiveSlides({
      	auto: true,
      	nav: true,
      	speed: 500,
        namespace: "callbacks",
        pager: true,
      });
    });
 </script>
 <!--mycart-->
 <script src="<c:url value="/resources/js/bootstrap-3.1.1.min.js" />" type="text/javascript"></script>

 <!-- cart -->
 <script src="<c:url value="/resources/js/simpleCart.min.js" />" type="text/javascript"></script>

<!-- cart -->
  <!--start-rate-->
  <script src="<c:url value="/resources/js/jstarbox.js" />" type="text/javascript"></script>
<link href="<c:url value="/resources/css/jstarbox.css" />"
	rel="stylesheet">
	
		<script type="text/javascript">
			jQuery(function() {
			jQuery('.starbox').each(function() {
				var starbox = jQuery(this);
					starbox.starbox({
					average: starbox.attr('data-start-value'),
					changeable: starbox.hasClass('unchangeable') ? false : starbox.hasClass('clickonce') ? 'once' : true,
					ghosting: starbox.hasClass('ghosting'),
					autoUpdateAverage: starbox.hasClass('autoupdate'),
					buttons: starbox.hasClass('smooth') ? false : starbox.attr('data-button-count') || 5,
					stars: starbox.attr('data-star-count') || 5
					}).bind('starbox-value-changed', function(event, value) {
					if(starbox.hasClass('random')) {
					var val = Math.random();
					starbox.next().text(' '+val);
					return val;
					} 
				})
			});
		});
		</script>


























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
							<th align="left" width="200">add to cart</th>

						</tr>
						<tr>
							<td align="left">${selectedProduct.id}</td>
							<td align="left">${selectedProduct.name}</td>
							<td align="left">${selectedProduct.description}</td>
							<td align="left">${selectedProduct.price}</td>
							<td align="left">${selectedProduct.category.name}</td>
							<td align="left">${selectedProduct.supplier.name}</td>
							<td><a href="<c:url value='addc/${selectedProduct.id}' />">add to cart</a></td>
							<img src="<c:url value = 'D:\fileupload\image\s${selectedProduct.id}.jpg"' />" alt="" />
						</tr>
					</table>
				</c:if>
			</div>


<div id="displayCart">
				<c:if test="${displayCart==true}">

					<table>
						<tr>
							<th align="left" width="80">Cart ID</th>
							<th align="left" width="120">Product Name</th>
							<th align="left" width="200">Quantity</th>
							<th align="left" width="80">Price</th>
							

						</tr>
						<c:forEach items="${cartList}" var="cart">
							<tr>
								<td align="left">${cart.id}</td>
								<td align="left">${cart.productName}</td>
								<td align="left">${cart.quantity}</td>
								<td align="left">${cart.price}</td>
							<td align="left"><a href="<c:url value='deletec/${cart.id}' />">
										delete</a></td>
									
								<td align="left"><a href="<c:url value='pay/${cart.id}' />">
										Proceed</a></td>
							</tr>
						</c:forEach>

					</table>

				<%--	<h2>Total cost : ${totalAmount}</h2>
					 <a href="<c:url value='/pay/${cart.userID}'/>">Proceed</a>  
					<a href="<c:url value='/pay/${cart.id}'/>">Proceed</a>--%>
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
					
						<td align="right"><a href="myCart"> My Cart </a></td>
					
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
		
	
	
	
<div class="content">
			<!--banner-bottom-->
				<div class="ban-bottom-w3l">
					<div class="container">
						<div class="col-md-6 ban-bottom">
							<div class="ban-top">
								<img src="<c:url value="/resources/images/p1.png/" />" class="img-responsive" alt=""/>
								
								<div class="ban-text">
									<h4>Mens Clothing</h4>
								</div>
								<div class="ban-text2 hvr-sweep-to-top">
									<h4>50% <span>Off/-</span></h4>
								</div>
							</div>
						</div>
						<div class="col-md-6 ban-bottom3">
							<div class="ban-top">
								<img src="<c:url value="/resources/images/p2.png/" />" class="img-responsive" alt=""/>
								<div class="ban-text1">
									<h4>Womens Clothing</h4>
								</div>
							</div>
							<div class="ban-img">
								<div class=" ban-bottom1">
									<div class="ban-top">
										<img src="<c:url value="/resources/images/p3.png/" />" class="img-responsive" alt=""/>
										<div class="ban-text1">
											<h4>T - Shirt</h4>
										</div>
									</div>
								</div>
								<div class="ban-bottom2">
									<div class="ban-top">
										<img src="<c:url value="/resources/images/p4.png/" />" class="img-responsive" alt=""/>
										<div class="ban-text1">
											<h4>Hand Bag</h4>
										</div>
									</div>
								</div>
								<div class="clearfix"></div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			<!--banner-bottom-->
			<!--new-arrivals-->
				<div class="new-arrivals-w3agile">
					<div class="container">
						<h2 class="tittle">New Arrivals</h2>
						<div class="arrivals-grids">
							<div class="col-md-3 arrival-grid simpleCart_shelfItem">
								<div class="grid-arr">
									<div  class="grid-arrival">
										<figure>		
											<a href="#" class="new-gri" data-toggle="modal" data-target="#myModal1">
												<div class="grid-img">
													<img src="<c:url value="/resources/images/p6.png/" />" class="img-responsive" alt="">
												</div>
												<div class="grid-img">
													<img src="<c:url value="/resources/images/p5.png/" />" class="img-responsive"  alt="">
												</div>			
											</a>		
										</figure>	
									</div>
									<div class="ribben">
										<p>NEW</p>
									</div>
									<div class="ribben1">
										<p>SALE</p>
									</div>
									<div class="block">
										<div class="starbox small ghosting"> </div>
									</div>
									<div class="women">
										<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
										<span class="size">XL / XXL / S </span>
										<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
										<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
									</div>
								</div>
							</div>
							<div class="col-md-3 arrival-grid simpleCart_shelfItem">
								<div class="grid-arr">
									<div  class="grid-arrival">
										<figure>		
											<a href="#" class="new-gri" data-toggle="modal" data-target="#myModal2">
												<div class="grid-img">
													<img src="<c:url value="/resources/images/p7.png/" />" class="img-responsive" alt="">
												</div>
												<div class="grid-img">
													<img src="<c:url value="/resources/images/p8.png/" />" class="img-responsive"  alt="">
												</div>			
											</a>		
										</figure>	
									</div>
									<div class="ribben2">
										<p>OUT OF STOCK</p>
									</div>
									<div class="block">
										<div class="starbox small ghosting"> </div>
									</div>
									<div class="women">
										<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
										<span class="size">XL / XXL / S </span>
										<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
										<a href="#" data-text="Add To Cart" class=" my-cart-b item_add">Add To Cart</a>
									</div>
								</div>
							</div>
							<div class="col-md-3 arrival-grid simpleCart_shelfItem">
								<div class="grid-arr">
									<div  class="grid-arrival">
										<figure>		
											<a href="#" class="new-gri" data-toggle="modal" data-target="#myModal3">
												<div class="grid-img">
													<img src="<c:url value="/resources/images/p10.png/" />" class="img-responsive" alt="">
												</div>
												<div class="grid-img">
													<img src="<c:url value="/resources/images/p9.png/" />" class="img-responsive"  alt="">
												</div>			
											</a>		
										</figure>	
									</div>
									<div class="ribben1">
										<p>SALE</p>
									</div>
									<div class="block">
										<div class="starbox small ghosting"> </div>
									</div>
									<div class="women">
										<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
										<span class="size">XL / XXL / S </span>
										<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
										<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
									</div>
								</div>
							</div>
							<div class="col-md-3 arrival-grid simpleCart_shelfItem">
								<div class="grid-arr">
									<div  class="grid-arrival">
										<figure>		
											<a href="#" class="new-gri" data-toggle="modal" data-target="#myModal4">
												<div class="grid-img">
													<img src="<c:url value="/resources/images/p11.png/" />" class="img-responsive" alt="">
												</div>
												<div class="grid-img">
													<img src="<c:url value="/resources/images/p12.png/" />" class="img-responsive"  alt="">
												</div>			
											</a>		
										</figure>	
									</div>
									<div class="block">
										<div class="starbox small ghosting"> </div>
									</div>
									<div class="women">
										<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
										<span class="size">XL / XXL / S </span>
										<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
										<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			<!--new-arrivals-->
				<!--accessories-->
			<div class="accessories-w3l">
				<div class="container">
					<h3 class="tittle">20% Discount on</h3>
					<span>TRENDING DESIGNS</span>
					<img src="<c:url value="/resources/images/ban1.png/" />" class="img-responsive"  alt="">
					<div class="button">
						<a href="#" class="button1"> Shop Now</a>
						<a href="#" class="button1"> Quick View</a>
					</div>
				</div>
			</div>
			<!--accessories-->
			<!--Products-->
				<div class="product-agile">
					<div class="container">
						<h3 class="tittle1"> New Products</h3>
						<div class="slider">
							<div class="callbacks_container">
								<ul class="rslides" id="slider">
									<li>	 
										<div class="caption">
											<div class="col-md-3 cap-left simpleCart_shelfItem">
												<div class="grid-arr">
													<div  class="grid-arrival">
														<figure>		
															<a href="single.html">
																<div class="grid-img">
																	<img src="<c:url value="/resources/images/p14.png/" />" class="img-responsive" alt="">
																</div>
																<div class="grid-img">
																	<img src="<c:url value="/resources/images/p13.png/" />" class="img-responsive"  alt="">
																</div>			
															</a>		
														</figure>	
													</div>
													<div class="block">
														<div class="starbox small ghosting"> </div>
													</div>
													<div class="women">
														<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
														<span class="size">XL / XXL / S </span>
														<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
														<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
													</div>
												</div>
											</div>
											<div class="col-md-3 cap-left simpleCart_shelfItem">
												<div class="grid-arr">
													<div  class="grid-arrival">
														<figure>		
															<a href="single.html">
																<div class="grid-img">
																	<img src="<c:url value="/resources/images/p15.png/" />" class="img-responsive" alt="">
																</div>
																<div class="grid-img">
																	<img src="<c:url value="/resources/images/p16.png/" />" class="img-responsive"  alt="">
																</div>			
															</a>		
														</figure>	
													</div>
													<div class="ribben">
														<p>NEW</p>
													</div>
													<div class="block">
														<div class="starbox small ghosting"> </div>
													</div>
													<div class="women">
														<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
														<span class="size">XL / XXL / S </span>
														<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
														<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
													</div>
												</div>
											</div>
											<div class="col-md-3 cap-left simpleCart_shelfItem">
												<div class="grid-arr">
													<div  class="grid-arrival">
														<figure>		
															<a href="single.html">
																<div class="grid-img">
																	<img src="<c:url value="/resources/images/p18.png/" />" class="img-responsive" alt="">
																</div>
																<div class="grid-img">
																	<img src="<c:url value="/resources/images/p17.png/" />" class="img-responsive"  alt="">
																</div>			
															</a>		
														</figure>	
													</div>
													<div class="ribben1">
														<p>SALE</p>
													</div>
													<div class="block">
														<div class="starbox small ghosting"> </div>
													</div>
													<div class="women">
														<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
														<span class="size">XL / XXL / S </span>
														<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
														<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
													</div>
												</div>
											</div>
											<div class="col-md-3 cap-left simpleCart_shelfItem">
												<div class="grid-arr">
													<div  class="grid-arrival">
														<figure>		
															<a href="single.html">
																<div class="grid-img">
																	<img src="<c:url value="/resources/images/p20.png/" />" class="img-responsive" alt="">
																</div>
																<div class="grid-img">
																	<img src="<c:url value="/resources/images/p19.png/" />" class="img-responsive"  alt="">
																</div>			
															</a>		
														</figure>	
													</div>
													<div class="ribben">
														<p>-20%</p>
													</div>
													<div class="block">
														<div class="starbox small ghosting"> </div>
													</div>
													<div class="women">
														<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
														<span class="size">XL / XXL / S </span>
														<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
														<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
													</div>
												</div>
											</div>
											<div class="clearfix"></div>
										</div>
									</li>
									<li>	 
										<div class="caption">
											<div class="col-md-3 cap-left simpleCart_shelfItem">
												<div class="grid-arr">
													<div  class="grid-arrival">
														<figure>		
															<a href="single.html">
																<div class="grid-img">
																	<img src="<c:url value="/resources/images/p21.png/" />" class="img-responsive" alt="">
																</div>
																<div class="grid-img">
																	<img src="<c:url value="/resources/images/p22.png/" />" class="img-responsive"  alt="">
																</div>			
															</a>		
														</figure>	
													</div>
													<div class="block">
														<div class="starbox small ghosting"> </div>
													</div>
													<div class="women">
														<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
														<span class="size">XL / XXL / S </span>
														<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
														<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
													</div>
												</div>
											</div>
											<div class="col-md-3 cap-left simpleCart_shelfItem">
												<div class="grid-arr">
													<div  class="grid-arrival">
														<figure>		
															<a href="single.html">
																<div class="grid-img">
																	<img src="<c:url value="/resources/images/p24.png/" />" class="img-responsive" alt="">
																</div>
																<div class="grid-img">
																	<img src="<c:url value="/resources/images/p23.png/" />" class="img-responsive"  alt="">
																</div>			
															</a>		
														</figure>	
													</div>
													<div class="ribben">
														<p>NEW</p>
													</div>
													<div class="block">
														<div class="starbox small ghosting"> </div>
													</div>
													<div class="women">
														<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
														<span class="size">XL / XXL / S </span>
														<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
														<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
													</div>
												</div>
											</div>
											<div class="col-md-3 cap-left simpleCart_shelfItem">
												<div class="grid-arr">
													<div  class="grid-arrival">
														<figure>		
															<a href="single.html">
																<div class="grid-img">
																	<img src="<c:url value="/resources/images/p26.png/" />" class="img-responsive" alt="">
																</div>
																<div class="grid-img">
																	<img src="<c:url value="/resources/images/p25.png/" />" class="img-responsive"  alt="">
																</div>			
															</a>		
														</figure>	
													</div>
													<div class="ribben">
														<p>-75%</p>
													</div>
													<div class="block">
														<div class="starbox small ghosting"> </div>
													</div>
													<div class="women">
														<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
														<span class="size">XL / XXL / S </span>
														<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
														<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
													</div>
												</div>
											</div>
											<div class="col-md-3 cap-left simpleCart_shelfItem">
												<div class="grid-arr">
													<div  class="grid-arrival">
														<figure>		
															<a href="single.html">
																<div class="grid-img">
																	<img src="<c:url value="/resources/images/p10.png/" />" class="img-responsive" alt="">
																</div>
																<div class="grid-img">
																	<img src="<c:url value="/resources/images/p9.png/" />" class="img-responsive"  alt="">
																</div>			
															</a>		
														</figure>	
													</div>
													<div class="ribben">
														<p>NEW</p>
													</div>
													<div class="block">
														<div class="starbox small ghosting"> </div>
													</div>
													<div class="women">
														<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
														<span class="size">XL / XXL / S </span>
														<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
														<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
													</div>
												</div>
											</div>
											<div class="clearfix"></div>
										</div>
									</li>
								</ul>
							</div>
						</div>
					</div>
				</div>
			<!--Products-->
			<div class="latest-w3">
				<div class="container">
					<h3 class="tittle1">Latest Fashion Trends</h3>
					<div class="latest-grids">
						<div class="col-md-4 latest-grid">
							<div class="latest-top">
								<img src="<c:url value="/resources/images/l1.png/" />" class="img-responsive"  alt="">
								<div class="latest-text">
									<h4>Men</h4>
								</div>
								<div class="latest-text2 hvr-sweep-to-top">
									<h4>-50%</h4>
								</div>
							</div>
						</div>
						<div class="col-md-4 latest-grid">
							<div class="latest-top">
								<img src="<c:url value="/resources/images/l2.png/" />" class="img-responsive"  alt="">
								<div class="latest-text">
									<h4>Shoes</h4>
								</div>
								<div class="latest-text2 hvr-sweep-to-top">
									<h4>-20%</h4>
								</div>
							</div>
						</div>
						<div class="col-md-4 latest-grid">
							<div class="latest-top">
								<img src="<c:url value="/resources/images/l3.png/" />" class="img-responsive"  alt="">
								<div class="latest-text">
									<h4>Women</h4>
								</div>
								<div class="latest-text2 hvr-sweep-to-top">
									<h4>-50%</h4>
								</div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="latest-grids">
						<div class="col-md-4 latest-grid">
							<div class="latest-top">
								<img src="<c:url value="/resources/images/l4.png/" />" class="img-responsive"  alt="">
								<div class="latest-text">
									<h4>Watch</h4>
								</div>
								<div class="latest-text2 hvr-sweep-to-top">
									<h4>-45%</h4>
								</div>
							</div>
						</div>
						<div class="col-md-4 latest-grid">
							<div class="latest-top">
								<img src="<c:url value="/resources/images/l5.png/" />" class="img-responsive"  alt="">
								<div class="latest-text">
									<h4>Bag</h4>
								</div>
								<div class="latest-text2 hvr-sweep-to-top">
									<h4>-10%</h4>
								</div>
							</div>
						</div>
						<div class="col-md-4 latest-grid">
							<div class="latest-top">
								<img src="<c:url value="/resources/images/l6.png/" />" class="img-responsive"  alt="">
								<div class="latest-text">
									<h4>Cameras</h4>
								</div>
								<div class="latest-text2 hvr-sweep-to-top">
									<h4>-30%</h4>
								</div>
							</div>
						</div>
						<div class="clearfix"></div>
					</div>
				</div>
			</div>
				<div class="new-arrivals-w3agile">
					<div class="container">
						<h3 class="tittle1">Best Sellers</h3>
						<div class="arrivals-grids">
							<div class="col-md-3 arrival-grid simpleCart_shelfItem">
								<div class="grid-arr">
									<div  class="grid-arrival">
										<figure>		
											<a href="single.html">
												<div class="grid-img">
													<img src="<c:url value="/resources/images/p28.png/" />" class="img-responsive" alt="">
												</div>
												<div class="grid-img">
													<img src="<c:url value="/resources/images/p27.png/" />" class="img-responsive"  alt="">
												</div>			
											</a>		
										</figure>	
									</div>
									<div class="ribben">
										<p>NEW</p>
									</div>
									<div class="ribben1">
										<p>SALE</p>
									</div>
									<div class="block">
										<div class="starbox small ghosting"> </div>
									</div>
									<div class="women">
										<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
										<span class="size">XL / XXL / S </span>
										<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
										<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
									</div>
								</div>
							</div>
							<div class="col-md-3 arrival-grid simpleCart_shelfItem">
								<div class="grid-arr">
									<div  class="grid-arrival">
										<figure>		
											<a href="single.html">
												<div class="grid-img">
													<img src="<c:url value="/resources/images/p30.png/" />" class="img-responsive" alt="">
												</div>
												<div class="grid-img">
													<img src="<c:url value="/resources/images/p29.png/" />" class="img-responsive"  alt="">
												</div>			
											</a>		
										</figure>	
									</div>
									<div class="ribben2">
										<p>OUT OF STOCK</p>
									</div>
									<div class="block">
										<div class="starbox small ghosting"> </div>
									</div>
									<div class="women">
										<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
										<span class="size">XL / XXL / S </span>
										<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
										<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
									</div>
								</div>
							</div>
							<div class="col-md-3 arrival-grid simpleCart_shelfItem">
								<div class="grid-arr">
									<div  class="grid-arrival">
										<figure>		
											<a href="single.html">
												<div class="grid-img">
													<img src="<c:url value="/resources/images/s2.png/" />" class="img-responsive" alt="">
												</div>
												<div class="grid-img">
													<img src="<c:url value="/resources/images/s1.png/" />" class="img-responsive"  alt="">
												</div>			
											</a>		
										</figure>	
									</div>
									<div class="ribben1">
										<p>SALE</p>
									</div>
									<div class="block">
										<div class="starbox small ghosting"> </div>
									</div>
									<div class="women">
										<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
										<span class="size">XL / XXL / S </span>
										<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
										<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
									</div>
								</div>
							</div>
							<div class="col-md-3 arrival-grid simpleCart_shelfItem">
								<div class="grid-arr">
									<div  class="grid-arrival">
										<figure>		
											<a href="single.html">
												<div class="grid-img">
													<img src="<c:url value="/resources/images/s4.png/" />" class="img-responsive" alt="">
												</div>
												<div class="grid-img">
													<img src="<c:url value="/resources/images/s3.png/" />" class="img-responsive"  alt="">
												</div>			
											</a>		
										</figure>	
									</div>
									<div class="ribben">
										<p>NEW</p>
									</div>
									<div class="block">
										<div class="starbox small ghosting"> </div>
									</div>
									<div class="women">
										<h6><a href="single.html">Sed ut perspiciatis unde</a></h6>
										<span class="size">XL / XXL / S </span>
										<p ><del>$100.00</del><em class="item_price">$70.00</em></p>
										<a href="#" data-text="Add To Cart" class="my-cart-b item_add">Add To Cart</a>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			<!--new-arrivals-->
		</div>
		<!--content-->
		<!---footer--->
					<div class="footer-w3l">
						<div class="container">
							<div class="footer-grids">
								<div class="col-md-3 footer-grid">
									<h4>About </h4>
									<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat.</p>
									<div class="social-icon">
										<a href="#"><i class="icon"></i></a>
										<a href="#"><i class="icon1"></i></a>
										<a href="#"><i class="icon2"></i></a>
										<a href="#"><i class="icon3"></i></a>
									</div>
								</div>
								<div class="col-md-3 footer-grid">
									<h4>My Account</h4>
									<ul>
										<li><a href="checkout.html">Checkout</a></li>
										<li><a href="login.html">Login</a></li>
										<li><a href="registered.html"> Create Account </a></li>
									</ul>
								</div>
								<div class="col-md-3 footer-grid">
									<h4>Information</h4>
									<ul>
										<li><a href="index.html">Home</a></li>
										<li><a href="products.html">Products</a></li>
										<li><a href="codes.html">Short Codes</a></li>
										<li><a href="mail.html">Mail Us</a></li>
										<li><a href="products1.html">products1</a></li>
									</ul>
								</div>
								<div class="col-md-3 footer-grid foot">
									<h4>Contacts</h4>
									<ul>
										<li><i class="glyphicon glyphicon-map-marker" aria-hidden="true"></i><a href="#">E Comertown Rd, Westby, USA</a></li>
										<li><i class="glyphicon glyphicon-earphone" aria-hidden="true"></i><a href="#">1 599-033-5036</a></li>
										<li><i class="glyphicon glyphicon-envelope" aria-hidden="true"></i><a href="mailto:example@mail.com"> example@mail.com</a></li>
										
									</ul>
								</div>
							<div class="clearfix"> </div>
							</div>
							
						</div>
					</div>
					<!---footer--->
					<!--copy-->
					<div class="copy-section">
						<div class="container">
							
							<div class="copy-right">
								<img src="<c:url value="/resources/images/card.png/" />" alt=""/>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				<!--copy-->
				<div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body">
							<div class="news-gr">
								<div class="col-md-5 new-grid1">
								<img src="<c:url value="/resources/images/p5.png/" />" class="img-responsive" alt="">
								</div>
									<div class="col-md-7 new-grid">
										<h5>Ten Women's Cotton Viscose fabric Grey Shrug</h5>
										<h6>Quick Overview</h6>
										<span>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span>
										<div class="color-quality">
											<div class="color-quality-left">
												<h6>Color : </h6>
												<ul>
													<li><a href="#"><span></span>Red</a></li>
													<li><a href="#" class="brown"><span></span>Yellow</a></li>
													<li><a href="#" class="purple"><span></span>Purple</a></li>
													<li><a href="#" class="gray"><span></span>Violet</a></li>
												</ul>
											</div>
											<div class="color-quality-right">
												<h6>Quality :</h6>
												<div class="quantity"> 
													<div class="quantity-select">                           
														<div class="entry value-minus1">&nbsp;</div>
														<div class="entry value1"><span>1</span></div>
														<div class="entry value-plus1 active">&nbsp;</div>
													</div>
												</div>
												<!--quantity-->
														<script>
														$('.value-plus1').on('click', function(){
															var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10)+1;
															divUpd.text(newVal);
														});

														$('.value-minus1').on('click', function(){
															var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10)-1;
															if(newVal>=1) divUpd.text(newVal);
														});
														</script>
													<!--quantity-->
											</div>
											<div class="clearfix"> </div>
										</div>
									<div class="women">
										<span class="size">XL / XXL / S </span>
										<p ><del>$100.00</del><em class="item_price"> $70.00 </em></p>
										<div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="3" data-name="Kabuli Chana" data-summary="summary 3" data-price="2.00" data-quantity="1" data-image="images/of2.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="modal fade" id="myModal2" tabindex="-1" role="dialog">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body">
							<div class="news-gr">
								<div class="col-md-5 new-grid1">
								<img src="<c:url value="/resources/images/p7.png/" />" class="img-responsive" alt="">
								</div>
									<div class="col-md-7 new-grid">
										<h5>Ten Women's Cotton Viscose fabric Grey Shrug</h5>
										<h6>Quick Overview</h6>
										<span>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span>
										<div class="color-quality">
											<div class="color-quality-left">
												<h6>Color : </h6>
												<ul>
													<li><a href="#"><span></span>Red</a></li>
													<li><a href="#" class="brown"><span></span>Yellow</a></li>
													<li><a href="#" class="purple"><span></span>Purple</a></li>
													<li><a href="#" class="gray"><span></span>Violet</a></li>
												</ul>
											</div>
											<div class="color-quality-right">
												<h6>Quality :</h6>
												<div class="quantity"> 
													<div class="quantity-select">                           
														<div class="entry value-minus1">&nbsp;</div>
														<div class="entry value1"><span>1</span></div>
														<div class="entry value-plus1 active">&nbsp;</div>
													</div>
												</div>
												<!--quantity-->
														<script>
														$('.value-plus1').on('click', function(){
															var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10)+1;
															divUpd.text(newVal);
														});

														$('.value-minus1').on('click', function(){
															var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10)-1;
															if(newVal>=1) divUpd.text(newVal);
														});
														</script>
													<!--quantity-->
											</div>
											<div class="clearfix"> </div>
										</div>
									<div class="women">
										<span class="size">XL / XXL / S </span>
										<p ><del>$100.00</del><em class="item_price"> $70.00 </em></p>
										<div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="3" data-name="Kabuli Chana" data-summary="summary 3" data-price="2.00" data-quantity="1" data-image="images/of2.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="modal fade" id="myModal3" tabindex="-1" role="dialog">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body">
							<div class="news-gr">
								<div class="col-md-5 new-grid1">
								<img src="<c:url value="/resources/images/p10.png/" />" class="img-responsive" alt="">
								</div>
									<div class="col-md-7 new-grid">
										<h5>Ten Men's Cotton Viscose fabric Grey Shrug</h5>
										<h6>Quick Overview</h6>
										<span>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span>
										<div class="color-quality">
											<div class="color-quality-left">
												<h6>Color : </h6>
												<ul>
													<li><a href="#"><span></span>Red</a></li>
													<li><a href="#" class="brown"><span></span>Yellow</a></li>
													<li><a href="#" class="purple"><span></span>Purple</a></li>
													<li><a href="#" class="gray"><span></span>Violet</a></li>
												</ul>
											</div>
											<div class="color-quality-right">
												<h6>Quality :</h6>
												<div class="quantity"> 
													<div class="quantity-select">                           
														<div class="entry value-minus1">&nbsp;</div>
														<div class="entry value1"><span>1</span></div>
														<div class="entry value-plus1 active">&nbsp;</div>
													</div>
												</div>
												<!--quantity-->
														<script>
														$('.value-plus1').on('click', function(){
															var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10)+1;
															divUpd.text(newVal);
														});

														$('.value-minus1').on('click', function(){
															var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10)-1;
															if(newVal>=1) divUpd.text(newVal);
														});
														</script>
													<!--quantity-->
											</div>
											<div class="clearfix"> </div>
										</div>
									<div class="women">
										<span class="size">XL / XXL / S </span>
										<p ><del>$100.00</del><em class="item_price"> $70.00 </em></p>
										<div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="3" data-name="Kabuli Chana" data-summary="summary 3" data-price="2.00" data-quantity="1" data-image="images/of2.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>
			<div class="modal fade" id="myModal4" tabindex="-1" role="dialog">
				<div class="modal-dialog" role="document">
					<div class="modal-content modal-info">
						<div class="modal-header">
							<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
						</div>
						<div class="modal-body">
							<div class="news-gr">
								<div class="col-md-5 new-grid1">
								<img src="<c:url value="/resources/images/p12.png/" />" class="img-responsive" alt="">
								</div>
									<div class="col-md-7 new-grid">
										<h5>Ten Men's Cotton Viscose fabric Grey Shrug</h5>
										<h6>Quick Overview</h6>
										<span>Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</span>
										<div class="color-quality">
											<div class="color-quality-left">
												<h6>Color : </h6>
												<ul>
													<li><a href="#"><span></span>Red</a></li>
													<li><a href="#" class="brown"><span></span>Yellow</a></li>
													<li><a href="#" class="purple"><span></span>Purple</a></li>
													<li><a href="#" class="gray"><span></span>Violet</a></li>
												</ul>
											</div>
											<div class="color-quality-right">
												<h6>Quality :</h6>
												<div class="quantity"> 
													<div class="quantity-select">                           
														<div class="entry value-minus1">&nbsp;</div>
														<div class="entry value1"><span>1</span></div>
														<div class="entry value-plus1 active">&nbsp;</div>
													</div>
												</div>
												<!--quantity-->
														<script>
														$('.value-plus1').on('click', function(){
															var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10)+1;
															divUpd.text(newVal);
														});

														$('.value-minus1').on('click', function(){
															var divUpd = $(this).parent().find('.value1'), newVal = parseInt(divUpd.text(), 10)-1;
															if(newVal>=1) divUpd.text(newVal);
														});
														</script>
													<!--quantity-->
											</div>
											<div class="clearfix"> </div>
										</div>
										<div class="women">
										<span class="size">XL / XXL / S </span>
										<p ><del>$100.00</del><em class="item_price"> $70.00 </em></p>
										<div class="add">
										   <button class="btn btn-danger my-cart-btn my-cart-b" data-id="3" data-name="Kabuli Chana" data-summary="summary 3" data-price="2.00" data-quantity="1" data-image="images/of2.png">Add to Cart</button>
										</div>
									</div>
								</div>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>
			</div>	
	 
		
		

		


</body>
</html>
