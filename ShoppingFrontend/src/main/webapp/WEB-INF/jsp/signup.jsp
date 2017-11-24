<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>sign up</title>

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
<jsp:include page="navbar.jsp" />
<div class="container">
  <h2>Sign up form</h2>
  <form action="/action_page.php">
    <div class="form-group">
      <label for="name">Name:</label>
      <input type="name" class="form-control" id="name" placeholder="Enter name" name="name">
    </div>
    <div class="form-group">
      <label for="email">Email:</label>
      <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
    </div>
    <div class="form-group">
      <label for="pwd">Password:</label>
      <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
    </div>
    
    <div class="form-group">
      <label for="address">Address:</label>
      <input type="address" class="form-control" id="add" placeholder="Enter address" name="address">
    </div>
    <div class="form-group">
      <label for="contact_no">Contact number:</label>
      <input type="number" class="form-control" id="no" placeholder="Enter number" name="contact number">
    </div>
    <div class="form-group">
      <label for="pin code">Pin code:</label>
      <input type="number" class="form-control" id="pincode" placeholder="Enter pincode" name="pincode">
    </div>
  
    <div class="checkbox">
      <label><input type="checkbox" name="remember"> Remember me</label>
    </div>
    <button type="submit" class="btn btn-default">Submit</button>
  </form>
</div>

</body>
</html>


</body>
</html>