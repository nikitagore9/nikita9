<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
    <%@taglib uri = "http://www.springframework.org/tags/form" prefix = "form"%>
    <%@ taglib uri="http://www.springframework.org/security/tags" prefix="security" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CRUD OPERATIONS</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>


<style>
body {
    background-image: url("resources/images/Pink.jpg");
}

p.italic {
    font-style: italic;
}

 td{
    font-size:25px;
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
td{
font-family:French Script MT}
body {
    color:black;
}



</style>
<style type="text/css">
.errmsg{
  color:blue;
  }
</style>
</head>
<body>

<jsp:include page="navbar.jsp" />

<div>
${msg}
</div>
<security:authorize access="hasRole('ROLE_ADMIN')">
<c:if test="${isEditing}" >
<c:url var="formaction"  value="/admin/product/update"/>
</c:if>
<c:if test="${not isEditing}" >
<c:url var="formaction"  value="/admin/product/save"/>
</c:if>
<form:form cssClass="form-inline" method = "POST" modelAttribute="product" action = "${formaction}" enctype="multipart/form-data">
      <form:hidden  path = "p_id" />
         <table>

<tr>
               <td><form:label path = "p_name">Name:</form:label></td>
               <td><form:input cssClass="form-control" path = "p_name" /><br/> <br/> </td>
               <td><form:errors cssClass="errmsg" path="p_name" /> </td>
            </tr>

 <tr>
               <td><form:label path = "description">Description</form:label></td>
               <td><form:input cssClass="form-control" path = "description" /> <br/> <br/> </td>
                <td><form:errors cssClass="errmsg" path="description" /> </td>
               
            </tr>
            
            <tr>
             <td><form:label path="category.c_id"> Category &nbsp;</form:label></td>
             <td>
              <form:select cssClass = "form-control" path = "category.c_id" >
               <c:forEach items="${categoryList }" var="cat">
                <form:option value="${cat.c_id }">${cat.c_name }</form:option>
               </c:forEach>
              </form:select>
             <br/><br/>
             </td>
            </tr>
            
           <tr>
            <td><form:label path="supplier.s_id"> Supplier &nbsp;</form:label></td>
             <td>
              <form:select cssClass = "form-control" path = "supplier.s_id" >
               <c:forEach items="${supplierList }" var="sup">
                <form:option value="${sup.s_id }">${sup.s_name }</form:option>
               </c:forEach>
              </form:select>
             <br/><br/>
             </td>
           </tr>
               
           <tr>
               <td><form:label path = "qty">Quantity</form:label></td>
               <td><form:input cssClass="form-control" path = "qty" /> <br/> <br/>
               <form:errors cssClass="errmsg" path="qty" />
                </td>
            </tr>
            
            <tr>
               <td><form:label path = "price">Price</form:label></td>
               <td><form:input cssClass="form-control" path = "price" /> <br/> <br/>
               <form:errors cssClass="errmsg" path="qty" /> </td>
            </tr>
          
            <tr>
               <td><form:label path = "multipartfile">Select Image &nbsp;</form:label></td>
               <td><form:input type="file" cssClass="form-control" path = "multipartfile" />
               <c:if test="${isEditing }">
                <form:input cssClass = "form-control" path= "imagePath"/>
               </c:if>
                </td>              
            </tr>
          

<tr>
               <td colspan = "2">
             
               <c:if test="${isEditing}" >
                  <button type="submit" class="btn btn-primary btn-sm">
                    <span class="glyphicon glyphicon-save"></span>
                   UPDATE</button>
                  </c:if>
                     <c:if test="${not isEditing}" >
                  <button type="submit" class="btn btn-primary btn-sm">
                    <span class="glyphicon glyphicon-save"></span>
                   SAVE</button>
                  </c:if>
               </td>
            </tr>
</table>
</form:form>
</security:authorize>
      <table class = "container">
      <table class = "table table-bordered">
      <thread>
<tr>
      
      <th>Image</th>
      <th>Name</th>
      <th>Price</th>
      
       </tr>
<c:forEach var="prd" items="${productList}" >
<tr>
      
      <td><img src="<c:url value='/resources/images/${prd.imagePath}' />" width="80px" height="80px" /> </td>
      <td>${prd.p_name}</td>
     
       <td>${prd.price}</td>
      
       <security:authorize access="hasRole('ROLE_ADMIN')"> 
      <td><a href="<c:url value = '/admin/product/update/${prd.p_id}'/>" class="btn btn-info btn-sm">
          <span class = "glyphicon glyphicon-pencil"></span> Edit
          </a>
      <td><a href="<c:url value='/admin/product/delete/${prd.p_id}' />" class="btn btn-info btn-sm">
          <span class="glyphicon glyphicon-trash"></span> Delete
        </a></td>
        </security:authorize>
        
         <td>
      
       <a href="<c:url value='/showProduct/${prd.p_id}'/> " class="btn btn-info btn-sm">
          <span class="glyphicon glyphicon-pencil"></span> View Details
        </a>
     
     
   <td>
        
        <td>
     
      <security:authorize access="hasRole('ROLE_USER')"> 
     <a href="<c:url value='/user/addToCart/${prd.p_id}'/>" class="btn btn-info btn-sm">
          <span class="glyphicon glyphicon-trash"></span> ADD TO CART
        </a>
     </security:authorize>
     
     
     <td>
     <security:authorize access="isAnonymous()">
   
        <a class="btn btn-info btn-sm" href="<c:url value='/login' />"><span class="glyphicon glyphicon-log-in"></span> Login To Add to Cart</a>
        </security:authorize>
      </td>
      
      </tr>
</c:forEach>

</thread>
      </table>
      
      </table>
      
      
      <jsp:include page= "footer.jsp" />
</body>
</html>