<html>
<head>
<title>Book Ticket</title>

<style type="text/css">
.b1 {
    background-color: #4CAF50; /* Green */
    border: none;
    color: white;
    padding: 4px 32px;
    text-align: center;
    text-decoration: none;
    display: inline-block;
    font-size: 16px;
    margin: 4px 2px;
    cursor: pointer;
	border-radius: 12px;
}

h3{
font-family:Courier New; 
font-size: 22pt; 
font-weight: bold; 
color: #696969;
text-align: center; 
}

.tb5 {
	border:2px solid #4CAF50;
	border-radius:10px;
	height: 30px;
	width: 230px;
	padding: 2px;
}

table{
font-family: Calibri; 
color:#000000; 
font-size: 12pt; 
font-style: normal;
background-color:"#e5e5e5";
border-collapse: collapse; 
border: 0px solid navy;
}

table.inner{
border: 0px
}
</style>
</head>

<body bgcolor="#e5e5e5">

<h3>USER REGISTRATION FORM</h3>

<form action="InsertCusServlet_a" method="get">
 
<table align="center" cellpadding = "5">
 
<!----- First Name ---------------------------------------------------------->
<tr>
<td>FIRST NAME</td>
<td><input type="text" class="tb5" name="First_Name" maxlength="30"/>
</td>
</tr>
 
<!----- Last Name ---------------------------------------------------------->
<tr>
<td>LAST NAME</td>
<td><input type="text" class="tb5"  name="Last_Name" maxlength="30"/>
</td>
</tr>

<tr>
<td>SEX</td>
<td>
<input type="radio" name="sex" value="m" checked> Male
<input type="radio" name="sex" value="f"> Female
</td>
</tr>
 

<!----- Email Id ---------------------------------------------------------->
<tr>
<td>EMAIL ID</td>
<td><input type="text"  class="tb5" name="Email_Id" maxlength="100" /></td>
</tr>

<!----- PASSWORD ---------------------------------------------------------->
<tr>
<td>PASSWORD</td>
<td>
<input type="password" class="tb5" name="pswd" placeholder="Password" id="password" required>
</td>
</tr>

<!-----RE-ENTER PASSWORD ---------------------------------------------------------->
<tr>
<td>RE-ENTER PASSWORD</td>
<td>
<input type="password"  class="tb5" placeholder="Confirm Password" id="Comform_password" required>
</td>
</tr>

<!----- Mobile Number ---------------------------------------------------------->
<tr>
<td>MOBILE NUMBER</td>
<td>
<input type="text" class="tb5"  name="Mobile_Number" maxlength="10" />
(Excluding ISD code)
</td>
</tr>

<!----- City ---------------------------------------------------------->
<tr>
<td>CITY</td>
<td><input type="text"  class="tb5" name="City" maxlength="30" />

</td>
</tr>
<!----- Submit and Reset ------------------------------------------------->
<tr>
<td colspan="2" align="center">
<input type="submit" class="b1"  value="Submit">
<input type="reset" class="b1"  value="Reset">
</td>
</tr>
</table>

 
</form>
</body>
</html>