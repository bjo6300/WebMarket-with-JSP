<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="UTF-8"%>
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
<meta charset="UTF-8">
<title>Test Web Site</title>
</head>
<body>
   <nav class = "navbar navbar-expand navbar-dark bg-dark">
      <div class="container">
         <a class = "navbar-brand" href="./welcome.jsp">Home</a>
      </div>
   </nav>
   <%! String greeting = "웹 쇼핑몰에 오신 것을 환영합니다.";
   String tagline = "Welcome to Web Market!";%>
   <div class="jumbotron">
      <div class ="container">
         <h1 class = "display-3">
            <%= greeting%>
         </h1>
      </div>
   </div>
   <main role ="main">
   <div class="container">
      <div class="text-center">
         <h3>
            <%= tagline%>
         </h3>
         <%
         	response.setIntHeader("Refresh", 5);
         	Date day = new java.util.Date();
         	String am_pm;
         	int hour = day.getHours();
         	int minute = day.getMinutes();
         	int second = day.getSeconds();
         	if(hour / 12 == 0){
         		am_pm="AM";
         	}else{
         		am_pm="PM";
         		hour=hour-12;
         	}
         %>
      </div>
      <hr>
   </div>
   </main>
   <footer class = "container">
      <p>&copy; WebMarket</p>
   </footer>
</body>
</html>