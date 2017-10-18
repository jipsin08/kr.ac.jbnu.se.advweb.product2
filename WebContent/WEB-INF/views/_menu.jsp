<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
   
<head>
<meta charset="UTF-8">

<script src="https://code.jquery.com/jquery-3.1.0.js"></script>
<script>
	$(document).ready(function() {
	});
	
	function showUserInfo()
	{
		$.get("${pageContext.request.contextPath}/SignUp", 
			{
				
			}, function(data) {
			$('#SignUp').html(data);
		});
	}
</script>


</head>   
    
<div style="padding: 5px;">
 
   <a href="${pageContext.request.contextPath}/">Home</a>
   |
   <a href="${pageContext.request.contextPath}/productList">Product List</a>
   |
   <a href="${pageContext.request.contextPath}/userInfo">My Account Info</a>
   |
   <a href="${pageContext.request.contextPath}/login">Login</a>
   | 
   <a href="javascript:void(0);" onclick="javascript:showUserInfo();">Sign Up</a>
    
</div> 
<div style="border:1px solid white; float:right; background-color:white; width:500px" ></div>
<div style="border:1px solid white; float:right; background-color:white;" id="SignUp"></div>
