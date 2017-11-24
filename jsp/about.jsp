<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>About us</title>
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

<h1>About us</h1>
<p>Panaderia online Bakery bakes the finest Cakes, Pastries, and Cookies using century old European recipes that have been a Philadelphia Tradition for 90 years. At Panaderia, we use only the finest ingredients and take great care to make your wedding, birthday, anniversary or special occasion extra special. All of our products are baked fresh with love and care at our website. so, come on and indulge your tastebuds into one of our delicious treats.</p>
<p> We offer breakfast pastries in the way of coffee cakes, muffins, scones and croissants. For those interested in desserts, there is a large selection of pies, tarts, cakes, cookies and chocolate filling the shelves and display cases.</p>

<img src="resources/images/bakery.jpg" style="width:158px;height:128px;">
 
 <p>we guarantee the freshness of our delicious products delivered at your doorstep within 4 hours.</p>
 <img src="resources/images/pastrychef.jpg" style="width:158px;height:128px;" align=right>
 <p>Everything is baked on premises using only fresh and natural ingredients such as butter, real cream and imported European chocolate.
</p>



<p>Our head pastry chef, Elena Schmitter, completed a 3 year apprenticeship in Switzerland and was certified with top honors. He has worldwide work experience in cake decorating, sugar artistry and candy making, as well as in all other aspects of bakery production.</p>
<jsp:include page="footer.jsp" />
</div>
</body>
</html>


