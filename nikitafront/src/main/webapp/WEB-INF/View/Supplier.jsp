<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> 
   <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
    <jsp:include page="navbar.jsp" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CRUD operations</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 </head>
</head>
<style type="text/css">


.errmsg{
color:blue;
}

p.italic {
    font-style: italic;
}

 td{
    font-size:25px;
}
td{
font-family:French Script MT}

p{
font-family:French Script MT}

p{
font-size: 50px;}

body {
    color: black;
}
body{
    background-image:url("resources/images/Pink.jpg");
}
</style>
</head>
<body>

<div>
${msg}
</div>


<c:if test="${isEditing}" >
<c:url var="formaction"  value="/admin/supplier/update"/>
</c:if>
<c:if test="${not isEditing}" >
<c:url var="formaction"  value="/admin/supplier/save"/>
</c:if>

<center>
<form:form cssClass="form-inline" method = "POST" modelAttribute="supplier" action = "${formaction}">
<td><form:hidden path = "s_id" /></td>
         <table>

<tr>
               <td><form:label path = "s_name">Name:</form:label></td>
               <td><form:input cssClass="form-control" path = "s_name" /> <br/><br/></td>
               <td><form:errors cssClass="errmsg" path="s_name" /> </td>
               
            </tr>
<tr>
               <td><form:label path = "address">Address:</form:label></td>
                <td><form:input  cssClass="form-control" path ="address" /> </br> </br> </td>
               <td><form:errors cssClass="errmsg" path="address" />   </td>
            
            </tr>
<tr>
               <td colspan = "2">
                <center>
               <c:if test="${isEditing}" >
                  <input type = "submit" value = "Update"/>
                  </c:if>
                     <c:if test="${not isEditing}" >
               
                   <button type="submit" class="btn btn-primary btn-sm">
                    <span class="glyphicon glyphicon-save"></span>
                   Save</button>
                   
                  </c:if>
                  </center>
               </td>
            </tr>
</table>
</form:form>
     <table class="table table-bordered">
<tr>
      
      <th>Name</th>
      <th>Address</th>
      </tr>
<c:forEach var="sup" items="${supplierList}" >
<tr>
      
      <td>${sup.s_name}</td>
      <td>${sup.address}</td>
      <td><a href="<c:url value = '/admin/supplier/update/${sup.s_id}'/>"  class="btn btn-info btn-sm">
          <span class="glyphicon glyphicon-pencil"></span> Edit</a></td>
          
      <td><a href="<c:url value = '/admin/supplier/delete/${sup.s_id}'/>" class="btn btn-info btn-sm">
          <span class="glyphicon glyphicon-trash"></span> Delete</a></td>
      </tr>
</c:forEach>
      </table>
      <jsp:include page="footer.jsp" />
</body>
</html>
</body>
</html>