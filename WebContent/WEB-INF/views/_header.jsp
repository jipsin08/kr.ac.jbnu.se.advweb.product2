<%@ page language="java" contentType="text/html; charset=UTF-8"
  pageEncoding="UTF-8"%>
<div style="background: #E0E0E0; height: 55px; padding: 5px;">
  <div style="float: left">
    <h1>
  	 <a href="${pageContext.request.contextPath}/home">My Site</a>
  	</h1>
  </div>
 
  <div style="float: right; padding: 10px; text-align: right; word-spacing: 10px">
 
     <!-- User store in session with attribute: loginedUser -->
     Hello <b>${loginedUser.userName}</b>
   <br/>
   	 <a href="${pageContext.request.contextPath}/sign-up">Sign-Up</a>
     <a href="${pageContext.request.contextPath}/login">Login</a>
     Search <input name="search">
 
  </div>
 
</div>