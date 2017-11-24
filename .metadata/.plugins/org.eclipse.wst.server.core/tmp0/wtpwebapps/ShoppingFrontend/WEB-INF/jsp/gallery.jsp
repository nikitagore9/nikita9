<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>gallery</title>
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
body {
    color: white;
}
 p{
font-family:French Script MT}
   </style>
   
<body>
 <div class= "container">
<jsp:include page="navbar.jsp"/>
<img src= "resources/images/bread1.jpg" style="width:210px;height:170px;">
<img src= "resources/images/cake1.jpg" style="width:210px;height:170px;">
<img src= "resources/images/cupcake1.jpg" style="width:210px;height:170px;">
<img src= "resources/images/cupcake2.jpg" style="width:210px;height:170px;">
<img src= "resources/images/cookies1.jpg" style="width:210px;height:170px;">
<img src= "resources/images/doughnuts.jpg" style="width:210px;height:170px;">
<jsp:include page="footer.jsp" />
</div>
</body>
</html>