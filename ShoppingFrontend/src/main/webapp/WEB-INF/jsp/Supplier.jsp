<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CRUD operations</title>
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
<c:if test="${isEditing}" >
<c:url var="formaction"  value="/admin/Supplier/update"/>
</c:if>
<c:if test="${not isEditing}" >
<c:url var="formaction"  value="/admin/Supplier/save"/>
</c:if>
<form:form method = "POST" modelAttribute="Supplier" action = "${formaction}">
<td><form:hidden path = "s_id" /></td>
         <table>

<tr>
               <td><form:label path = "s_name">Name:</form:label></td>
               <td><form:input cssClass="form-control" path = "s_name" /> <br/><br/></td>
               <td><form:errors cssClass="errmsg" path="s_name" /> </td>
               
            </tr>
<tr>
               <td><form:label path = "address">Address</form:label></td>
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
                   SAVE</button>
                   
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
      <td>${sup.description}</td>
      <td><a href="<c:url value = '/admin/Supplier/update/${sup.s_id}'/>"  class="btn btn-info btn-sm">
          <span class="glyphicon glyphicon-pencil"></span> Edit</a></td>
          
      <td><a href="<c:url value = '/admin/Supplier/delete/${sup.s_id}'/>" class="btn btn-info btn-sm">
          <span class="glyphicon glyphicon-trash"></span> Delete</a></td>
      </tr>
</c:forEach>
      </table>
      <jsp:include page="footer.jsp" />
</body>
</html>
</body>
</html>