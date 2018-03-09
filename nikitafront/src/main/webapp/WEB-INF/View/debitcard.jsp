<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
     <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
   <%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Debit card</title>

<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


  
 <style>
body {
    background-image:url("resources/images/Pink.jpg");
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
    color:black;
}

</style>
</head>
<body>
<div>

<c:url var="formaction"  value="/user/DebitCard/save"/>

<jsp:include page="navbar.jsp" />

<form:form cssClass="form-inline" method = "POST" modelAttribute="debit" action = "${formaction}">

         <table class="Container">
			<centre>	
          
         <tr>
               <td><form:label   path = "cardNo">Card Number</form:label></td>
               <td><form:input cssClass="form-control" path = "cardNo" /> <br/><br/></td>
                <td><form:errors cssClass="errmsg" path="cardNo" /></td>
            </tr>
           
         <tr>
               <td><form:label   path = "cardName">Name on Card</form:label></td>
               <td><form:input cssClass="form-control" path = "cardName" /> <br/><br/></td>
                <td><form:errors cssClass="errmsg" path="cardName" /></td>
            </tr>
 
         
           
            <tr>
               <td><form:label   path = "expireMonth">Expiry Month</form:label></td>
               <td><form:input cssClass="form-control" path = "expireMonth" /> <br/><br/></td>
                <td><form:errors cssClass="errmsg" path="expireMonth" /></td>
            </tr>
            
             <tr>
               <td><form:label   path = "expireYear">Expire Year</form:label></td>
               <td><form:input cssClass="form-control" path = "expireYear" /> <br/><br/></td>
                <td><form:errors cssClass="errmsg" path="expireYear" /></td>
            </tr>
            
             <tr>
               <td><form:label   path = "cvv">Cvv</form:label></td>
               <td><form:input type="password" cssClass="form-control" path = "cvv" /> <br/><br/></td>
                <td><form:errors cssClass="errmsg" path="cvv" /></td>
            </tr>
                      
                       <tr>
                        <security:authorize access="isAnonymous()">
               <td><form:label   path = "atmPin">ATM PIN</form:label></td>
               <td><form:input type="password" cssClass="form-control" path = "atmPin" /> <br/><br/></td>
                <td><form:errors cssClass="errmsg" path="atmPin" /></td>
                </security:authorize>
            </tr>
                      
           
           </table>
            <tr>
                   <button type="submit" class="btn btn-primary btn-sm">
                    <span class="glyphicon glyphicon-save"></span>
                   SAVE</button>
              
           </tr>
            </centre>
</form:form>
<jsp:include page="footer.jsp"/>

</div>
</body>
</html>

