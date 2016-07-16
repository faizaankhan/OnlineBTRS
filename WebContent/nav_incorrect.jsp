<!DOCTYPE html>
<html>
<head>
<style>

ul {
    list-style-type: none;
    margin: 0;
    padding: 0;
    overflow: hidden;
    background-color: #333;
}

li {
    float: left;
}

li a {
    display: block;
    color: white;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}

li a:hover:not(.active) {
    background-color: #4CAF50;
}

.active {
    background-color: #4CAF50;
}

</style>
</head>
<body onload="parent.body.location='incorrect_login.jsp'">

<ul>
  <li><a  href="home.html" target="body">Home</a></li>
  <li><a  href="Enquery_Details.jsp" target="body">Enquery</a></li>
  <ul style="float:right;list-style-type:none;">
   <li><a href="AboutUs.html" target="body">About Us</a></li>
    <li><a class="active" href="#">Hello</a></li>
    <li><a href="login.jsp"  target="body">Login</a></li>
    <li><a href="reg.jsp"  target="body">Sign Up</a></li>
  </ul>
</ul>
</body>
</html>
