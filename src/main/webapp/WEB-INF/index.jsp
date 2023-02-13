<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!-- Formatting (dates) --> 
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"  %>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!-- for rendering errors on PUT routes -->
<%@ page isErrorPage="true" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Counter</title>
    <link rel="stylesheet" href="/webjars/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="/css/main.css"> <!-- change to match your file/naming structure -->
    <script src="/webjars/jquery/jquery.min.js"></script>
    <script src="/webjars/bootstrap/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="/js/app.js"></script><!-- change to match your file/naming structure -->
</head>
<body>

  <div class="container align-items-center">
    <h1>Counter</h1>
  </div>
<div class="container mt-3 align-items-center  ">
  <div class="card align-items-center bg-dark" style="width: 18rem;">
    <div class="card-body">
      <h1 class="text-light">Welcome User!</h1>
      <a class="btn btn-primary" href="/your_server/counter">Visit Page ++</a>

      
    </div>
    <p class="text-light">
    <c:out value="${count}"></c:out>
  </p>
  </div>
  
</div>
</body>
</html>
