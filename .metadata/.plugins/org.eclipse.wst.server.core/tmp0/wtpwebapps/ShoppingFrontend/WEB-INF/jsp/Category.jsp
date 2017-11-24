<%@ page isELIgnored="false" language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix= "c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@taglib uri="http://www.springframework.org/tags/forms"
    prefix = "form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CRUD operations</title>
<style type="text/css">
.errmsg{color:red;}
</style>
</head>
<body>
<jsp:include page ="navbar.jsp"/>
<div>
<c:if test="${not isEditing}">
<c:url var="formaction" value="/admin/Category/save"/>
</c:if>
<center>
<form:form cssClass="form-inline" method="POST"
modelAttribute="Category" action="${formaction}">
<form:hidden path="catId"/>
<table>
<tr>
<td><form:label path="name">Name</form:label></td>
<td><form:input cssClass="form-control"path="name"/><br></br></td>
<td><form:errors cssClass="errmsg"path="name"/></td></tr>

<tr>
<td><form:label path="description">Description&nbsp</form:label></td>
<td><form:input cssClass="form-control"path="description"/><br></br></td>
<td><form:errors cssClass="errmsg"path="description"/></td></tr>



</table>





</table>



</form:form>


</div>
</body>
</html>