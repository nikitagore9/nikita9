<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order here</title>
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
    color:white;
}

img {
    width:100%;
}

</style>
<body>
<div class="container">
<jsp:include page="navbar.jsp" />
  <h2>order here</h2>
  <p>
 <img src= "resources/images/cupcake1.jpg" style="width:210px;height:170px;"></br>
  <a href="cupcake.jsp">cupcakes</a></br>
  
  <img src= "resources/images/cookies.jpg" style="width:210px;height:170px;"></br>
  <a href="cookies.jsp">cookies</a></br>
  
  <img src= "resources/images/doughnuts.jpg" style="width:210px;height:170px;"></br>
  <a href="doughnuts.jsp">doughnuts</a></br>
  
  <img src= "resources/images/bread1.jpg" style="width:210px;height:170px;"></br>
  <a href="bread.jsp">breads</a></br>
  
  <img src= "resources/images/cake1.jpg" style="width:210px;height:170px;"></br>
  <a href="cakes.jsp">cakes</a></br>

</p>
<jsp:include page="footer.jsp" />
</div>
</body>
</html>