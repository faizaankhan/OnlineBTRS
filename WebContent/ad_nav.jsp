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
<body onload="parent.body.location='a_profile.jsp'">

<ul>
 <li><a  href="home.html" target="body">Home</a></li>
  <li><a  href="a_profile.jsp" target="body">Profile</a></li>
  <li><a  href="bus.html" target="body">Bus</a></li>
  <li><a href="cus.html" target="body">Customers</a></li>
  <li><a href="DisplayTranServlet" target="body">All Transactions</a></li>
  <ul style="float:right;list-style-type:none;">
  <li><a href="AboutUs.html" target="body">About Us</a></li>
    <li><a class="active" href="#">Hello, Admin</a></li>
    <li><a href="nav.jsp" target="nav">Logout</a></li>
  </ul>
</ul>

</body>
</html>
