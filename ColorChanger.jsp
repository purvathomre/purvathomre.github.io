<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.Cookie" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Colored Cookies</title>
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<!-- Optional theme -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css" integrity="sha384-rHyoN1iRsVXV4nD0JutlnGaslCJuC7uwjduW9SVrLvRYooPp2bWYgmgJQIXwl/Sp" crossorigin="anonymous">
<!-- Latest compiled and minified JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js" integrity="sha384-Tc5IQib027qvyjSMfHjOMaLkfuWVxZxUPnCJA7l2mCWNIpG9mGCD8wGNIcPD7Txa" crossorigin="anonymous"></script>
<script type = "text/javascript">
        
            
         
      </script>
      <!--    <%
 String backgroundColor = "";
 if ( request.getParameter("color") != null){
  
  backgroundColor = request.getParameter("color");
  
  Cookie cookie = new Cookie("bg-color", backgroundColor);
  cookie.setMaxAge(24*60*60);
  response.addCookie(cookie);
  
 }
 else{
  Cookie[] cookies = request.getCookies();
  boolean foundCookie = false;
  if (cookies != null)
  {
   for (Cookie cookie : cookies){
    if (cookie.getName().equals("bg-color")){
     backgroundColor = cookie.getValue();
     foundCookie = true;
     break;
    }     
   }
  }
  else
   backgroundColor = "FFFFFF";
 }
%>-->
      
     
<style>
 .jumbotron{
  text-align: center;
 }
 body{
  background-color: #<%= backgroundColor %>;
 }
</style>


</head>
<body
<%
 Cookie myCookie = null;

 if ( request.getParameter("color") != null){
  
  backgroundColor = request.getParameter("color");
  
  Cookie cookie = new Cookie("bg-color", backgroundColor);
  cookie.setMaxAge(24*60*60);
  response.addCookie(cookie);
  
 }
 else{
  Cookie[] cookies = request.getCookies();
  boolean foundCookie = false;
  if (cookies != null)
  {
   for (Cookie cookie : cookies){
    if (cookie.getName().equals("bg-color")){
     backgroundColor = cookie.getValue();
     foundCookie = true;
     break;
    }     
   }
  }
  else
   backgroundColor = "FFFFFF";
 }
%>
>
<div class="container"> 
 <div class="row">
  <div class="col-sm-offset-3 col-sm-6">
  <div class="jumbotron">
    <h1>ColorChanger</h1>
    
    <%
    String clr = "";
    if(request.getParameter("color")==null)
    {
     clr=backgroundColor;
    }
    else
    {
     clr=request.getParameter("color");
    }
    %> 
    <p> Background: #<%= clr %>
  </div>
  <form>
    <div class="form-group">
      <label>Enter a Color</label>
      <input type="text" name="color" class="form-control" placeholder="Hex Value" name ="myColor" pattern="^([a-fA-F0-9]{6}|[a-fA-F0-9]{3})$"  >
    </div>    
    <button type="submit" class="btn btn-default">Change Color</button>
  </form>
  </div>
 </div>
</div>





</body>
</html>