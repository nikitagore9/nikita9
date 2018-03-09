<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
     <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
   <%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Cart</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

</head>
<style>
body {
    background-image: url("resources/images/Pink.jpg");
}

p.italic {
    font-style: italic;
}

 p {
    font-size:80px;
}
p{
font-family:French Script MT}
body {
    color: black;
}
 img
 {width:40px;
    height:30px;
  margin: auto;
}
</style>

<body>

<jsp:include page="navbar.jsp" />

<div>
${msg }
</div>
<div class="container">
 <table class="table table-bordered"> 
 
  
 
<c:forEach var="cart" items="${cartList}">
         
         <tr>
         
          <th>Name</th>
           
          <th>Price</th>
          
          <th>Quantity</th>
          
           </tr>
           
          <tr>
       <td>${cart.product.p_name}</td>
       
       
       
        <td>${cart.product.price}</td>
        
        
       
        <td>${cart.qty}</td>
        </tr>
        
       <td>
     <a href="<c:url value='/user/cart/delete/${cart.cartid}' />" class="btn btn-info btn-sm">
          <span class="glyphicon glyphicon-trash"></span> Delete
        </a>
        </td>
        <th></th>
        <th></th>
    
        </c:forEach>
  <h2>Total Cost :${total}</h2>
  
  </div>
        
  </table>
  
<center>
<tr>
  <td>
   <a href="<c:url value='/user/Shipping/checkout/' />" class="btn btn-info btn-sm">
          <span class="glyphicon glyphicon-checkout"></span> CheckOut
        </a>
        
        <br/>
        
        
<a href="<c:url value='/'/>">Continue Shopping</a>
<br>
  </td>
  </tr>
</center>

</br></br>
<jsp:include page="footer.jsp"/>

</body>
</html>