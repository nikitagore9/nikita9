<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

 <%@ taglib prefix ="c" uri = "http://java.sun.com/jsp/jstl/core" %>
 <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
 <%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> 
		<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
		
		<title>sign up here</title>
		<style type="text/css">
.errmsg{
color:black;
}
</style>
		
</head>
<style>
body {
    background-image: url("resources/images/Pink.jpg");
}

p.italic {
    font-style: italic;
}

 p {
    font-size:50px;
}
h1 {
    font-size:80px;
}
h1{
font-family:French Script MT}
h2 {
    font-size:80px;
}
h2{
font-family:French Script MT}
p{
font-family:French Script MT}
body {
    color:black;
}


</style>

<body>

<jsp:include page="navbar.jsp" />

<center>
<c:url var="formaction"  value="/signup"/>
 <form:form cssClass="form-inline" method = "POST" modelAttribute="customer" action = "${formaction}">
 
 <h4 style="color: black;">Sign Up Now</h4><hr></br>
 
 <table class="Container">
 
  <tr>
 <td><form:label   path = "cusName">Name</form:label></td>
 <td><form:input cssclass="form-control" path = "cusName" /></td>
  <td><form:errors cssClass="errmsg" path="cusName" /></td>
  </tr>

  <tr>
    <td><form:label   path = "address">Address</form:label></td>
     <td><form:input cssclass="form-control" path = "address" /></td>
     <td><form:errors cssClass="errmsg" path="address" /></td>
     </tr>
     
    </br></br>
    
     <tr>
      <td> <form:label   path = "email">Email Address</form:label></td>
   <td><form:input  cssclass="form-control" path="email" /></td>
   <td><form:errors cssClass="errmsg" path="email" /></td>
         </tr>
         
         </br></br> 
         
         <tr>
      <td><form:label   path = "password">Password</form:label></td>
      <td><form:input type="password" cssclass="form-control" path="password" /></td>
      <td><form:errors cssClass="errmsg" path="password" /></td>
  </tr>
  
  </br></br>
  
  <tr>      
   <td><form:label   path = "confirmPassword">Confirm Password</form:label></td>
  <td><form:input type="password" cssclass="form-control" path="confirmPassword" /></td>
  <td><form:errors cssClass="errmsg" path="confirmPassword" /></td>
  
  </tr>
  
  </br></br>
  <tr>
  <td><form:label   path = "phone">Phone Number</form:label></td>
  <td><form:input  cssclass="form-control" path="phone" /></td>
    <td><form:errors cssClass="errmsg" path="phone" /></td>
   </tr>
   
   </table>
   
    <button type="submit" class="btn btn-primary btn-sm">
       <span class="glyphicon glyphicon-save"></span>
          REGISTER</button>
         
      <a href="">Forgot Password?</a>
     </center>
     </form:form>
      </div>
      
       <center>
       
       <div class="social-login">
             
       </br>
            <p>- - - - - - - - - - - - - Sign In With - - - - - - - - - - - - - </p>
    		<ul>
            <li><a href=""><i class="fa fa-facebook"></i> Facebook</a></li>
            <li><a href=""><i class="fa fa-google-plus"></i> Google+</a></li>
            <li><a href=""><i class="fa fa-twitter"></i> Twitter</a></li>
            </ul>
             </div>
             </center>
             
           
      <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
</br></br>




<jsp:include page="footer.jsp"/>

</body>
</html>