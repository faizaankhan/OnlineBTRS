<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Profile</title>

<style>
.button {
  display: inline-block;
  border-radius: 4px;
  background-color: #4CAF50;
  border: none;
  color: #FFFFFF;
  text-align: center;
  font-size: 20px;
  padding: 4px;
  width: 200px;
  transition: all 0.5s;
  cursor: pointer;
  margin: 5px;
}
.button span {
  cursor: pointer;
  display: inline-block;
  position: relative;
  transition: 0.5s;
}
.button span:after {
  content:'>';
  position: absolute;
  opacity: 0;
  top: 0;
  right: -20px;
  transition: 0.5s;
}
.button:hover span {
  padding-right: 25px;
}
.button:hover span:after {
  opacity: 1;
  right: 0;
}
</style>

</head>
<body bgcolor="#e5e5e5">
<br><br><br><br>
<center><img src="admin.jpg" height="150" width="150"></center>
<center><h1>Welcome Back</h1></center>
<center><h4>Logged in as Admin...</h1></center>

<center> <a href="EditProfileServlet" class="button"  style="vertical-align:middle"><span>
Edit Details
</span></a></center>
</body>
</html>