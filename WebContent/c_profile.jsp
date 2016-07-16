<!DOCTYPE html>
<html>

<head>
<title>Customer Profile</title>

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

h1{
font-family:Comic Sans MS;
font-size:14px;
color:#4CAF50;
}
h2{
font-family:Comic Sans MS;
font-size:13px;
color:gray;
}

.imgc {
    border-radius: 50%;
}

</style>
</head>


<body bgcolor="#e5e5e5">
<br><br><br><br>
<table align="center" cellspacing="0px" cellpadding="0px">

<tr colspan="3"  align="center">
<td rowspan="9">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<img src="c_prf.png" height="100" width="100" align="left" class="imgc"></td>
</tr>

<tr>
<td><h1>First Name :</h1></td>	<td><h2><%= request.getAttribute("fname")%></h2></td>
</tr>

<tr>
<td><h1>Last Name :</h1></td>	<td><h2><%= request.getAttribute("lname")%></h2></td>
</tr>

<tr>
<td><h1>Sex :</h1></td>	<td><h2><%= request.getAttribute("sex")%></h2></td>
</tr>

<tr>
<td><h1>City :</h1></td>	<td><h2><%= request.getAttribute("city")%></h2></td>
</tr>

<tr>
<td><h1>Email(using as username) :</h1></td>	<td><h2><%= request.getAttribute("email")%></h2></td>
</tr>

<tr>
<td><h1>Phone :</h1></td>	<td><h2><%= request.getAttribute("phone")%></h2></td>
</tr>

<tr>
<td><h1>Password :</h1></td>	<td><h2>********</h2></td>
</tr>

<tr colspan="3" align="center">
<td>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<a href="EditProfileServlet" class="button"  style="vertical-align:middle"><span>
Edit Details
</span></a></td>
</tr>

</table>
</body>
</html>