<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
      <%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<body>
<jsp:include page="navbar.jsp" />
<div class="container">
<div>
<center>
<img src="<c:url value='/resources/images/${prd.imagePath}'/>" width="70px" height="70px" />
</center>

</br></br>
</div>
<table class="table">

      <tr>
        <th>Name</th>
        <td>${prd.p_name}</td>
        </tr>
        <tr>
        <th>Price</th>
        <td>${prd.price}</td>
        </tr>
        <tr>
        <th>Description</th>
        <td>${prd.description}</td>
        </tr>
        <tr>
        <th>Quantity</th>
        <td>${prd.qty}</td>
        </tr>
  </table>



<security:authorize access="hasRole('ROLE_USER')"> 
      <a href="<c:url value='/user/addToCart/${prd.p_id}'/>" class="btn btn-info btn-sm">
          <span class="glyphicon glyphicon-trash"></span> ADD TO CART
        </a>
        </security:authorize>
     <security:authorize access="isAnonymous()">
    
        <a class="btn btn-info btn-sm" href="<c:url value='/login' />"><span class="glyphicon glyphicon-log-in"></span> Login To Add to Cart</a>
        </security:authorize>

</div>

<jsp:include page="footer.jsp"/>

</body>
</html>

</body>
</html>