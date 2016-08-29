<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>


<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootswatch/3.2.0/sandstone/bootstrap.min.css">
<script	src="//ajax.googleapis.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
<script	src="//netdna.bootstrapcdn.com/bootstrap/3.1.1/js/bootstrap.min.js"></script>
<script	src="http://ajax.googleapis.com/ajax/libs/angularjs/1.2.23/angular.min.js"></script>

<script>
 var app = angular.module('myApp', []);
//app.controller("MyController",MyController);
function MyController($scope, $http) {
	
	  $scope.sortType     = 'name'; // set the default sort type
	  $scope.sortReverse  = false;  // set the default sort order
	  $scope.searchsubject   = '';     // set the default search/filter term
	  
        $scope.getDataFromServer = function() {
                $http({
                        method : 'GET',
                        url : 'p'
                }).success(function(data, status, headers, config) {
                        $scope.Products = data; alert(data);
                }).error(function(data, status, headers, config) {
                        
                });

        };
        
}; 


</script>
</head>
<body>
<div class="container" ng-app="myApp" ng-controller="MyController" >
  
  
  
  <form>
    <div class="form-group">
      <div class="input-group">
        <div class="input-group-addon"><i class="fa fa-search"></i></div>
        <input type="text" class="form-control" ng-model="searchsubject" placeholder="Search Product Name" >
       <!--  <button  ng-click="getDataFromServer()">List of products</button> &nbsp; --> 
       </div>      
    </div>
  </form>
  
  <div ng-init="getDataFromServer()" >
  
  
  
  
  
  
  <div >
  -----------****--------------
  <ul>
  	<li style=border-top:2px solid blue;padding:2em" ng-repeat="roll in Products | orderBy:sortType:sortReverse | filter:searchsubject">
  	<br/><br/>
  	product.id:{{ roll.id}}<br/><br/>
  	product.name:{{ roll.name}}<br/><br/>
  	{{ roll.description }}<br/><br/>
  	<br/><br/>
  	
  	</li>
  </ul>
  
 
 </div>
 </div>
 
  -----------------****---------------------------
</div>

</body>
</html>