<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<title>Shopping Frontend</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>

  <style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
	  width:100%;
   height: 500px;
  margin: auto;
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
    font-size:80px;
}
p{
font-family:French Script MT}
body {
    color: white;
}


</style>




<body>  

  <div class="container">
   <jsp:include page="navbar.jsp" />
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
      <li data-target="#myCarousel" data-slide-to="4"></li>
      <li data-target="#myCarousel" data-slide-to="5"></li>
      <li data-target="#myCarousel" data-slide-to="6"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner">
      <div class="item active">
        <img src="resources/images/Bread.jpg" alt="Breads" style="width:100%;">
      </div>

      <div class="item">
        <img src="resources/images/cake.jpg" alt="Cakes" style="width:100%;">
      </div>
    
      <div class="item">
        <img src="resources/images/cookies.jpg" alt="Cookies" style="width:100%;">
      </div>
      
      <div class="item">
        <img src="resources/images/cupcake.jpg" alt="Cupcakes" style="width:100%;">
      </div>
      
      <div class="item">
        <img src="resources/images/doughnut.jpg" alt="doughnuts" style="width:100%;">
      </div>
      
      
     <div class="item">
        <img src="resources/images/pastry.jpg" alt="Pastries" style="width:100%;">
      </div>
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

<p class="italic">Categories </p>

  <div class="row">
    <div class="col-sm-4" style="background-color:pink;">
    <img src="resources/images/cake1.jpg" width="300" height="200" />
     
    </div>
    <div class="col-sm-4" style="background-color:pink;">
      <img src="resources/images/cookies1.jpg" width="300" height="200" />
    </div>
    <div class="col-sm-4" style="background-color:pink;">
    <img src="resources/images/bread1.jpg" width="300" height="200" />
    </div>
      <p>....and many more!!</p>
  </div>
 <p>
  <jsp:include page="footer.jsp" />
 
  


</body>
</html>
