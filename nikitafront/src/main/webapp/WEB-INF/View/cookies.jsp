<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>cookies</title>
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



</style>
<body>
<div class="container">
<jsp:include page="navbar.jsp" />


<div class="img-with-text">
    <img src="resources/images/chocochip.jpg" alt="sometext" style="width:210px;height:170px;" />
    <p>chocolate chip and chunks  Rs. 170 (per dozen)</p>
    
    <img src="resources/images/oat.jpg" alt="sometext" style="width:210px;height:170px;" />
    <p>Oatmeal Raisin  Rs. 150 (per dozen)</p>
     
     <img src="resources/images/chocoD.jpg" alt="sometext" style="width:210px;height:170px;" />
    <p>Chocolate Decadence Rs. 210 (per dozen) </p>
     
     <img src="resources/images/peanutbutter.jpg" alt="sometext" style="width:210px;height:170px;" />
    <p>Peanut Butter Rs. 200 (per dozen)</p>
     
     <img src="resources/images/peanut milk.jpg" alt="sometext" style="width:210px;height:170px;" />
    <p>Peanut Butter milk chocolate Rs. 175 (per dozen) </p>
     
   
    
</div>
<p>

</p> 

<jsp:include page="footer.jsp" />

</div>
</body>
</html>