<html>
<head>
<title>Confirm Editing</title>

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
<%@ page import="com.bus.CustomerData" %>
<%
CustomerData ob=(CustomerData)request.getAttribute("allrecords");
%>


<h3>EDIT YOUR  DETAILS</h3>

<form action="EditCustomerServlet" method="POST">
 
<table align="center" cellpadding = "5">
 

<!----- Email Id ---------------------------------------------------------->
<tr>
<td>EMAIL ID / USER ID</td>
<td><input type="text"  class="tb5" name="Email_Id" maxlength="100"  value="<%=ob.getEmail()%>" readonly  /></td>
</tr>

<!----- First Name ---------------------------------------------------------->
<tr>
<td>FIRST NAME</td>
<td><input type="text" class="tb5" name="First_Name" maxlength="30" value="<%=ob.getFname()%>"/>
</td>
</tr>
 
<!----- Last Name ---------------------------------------------------------->
<tr>
<td>LAST NAME</td>
<td><input type="text" class="tb5"  name="Last_Name" maxlength="30" value="<%=ob.getLname()%>"/>
</td>
</tr>

<tr>
<td>SEX</td>
<td>
<input type="text" name="sex" class="tb5"  value="<%=ob.getSex()%>"/>
</td>
</tr>
 
<!----- PASSWORD ---------------------------------------------------------->
<tr>
<td>PASSWORD</td>
<td>
<input type="text" class="tb5"  name="password"  value="<%=ob.getPswd()%>"/>
</td>
</tr>

<!----- Mobile Number ---------------------------------------------------------->
<tr>
<td>MOBILE NUMBER</td>
<td>
<input type="text" class="tb5"  name="Contact_Number" maxlength="10"  value="<%=ob.getPhone()%>"/>
(Excluding ISD code)
</td>
</tr>

<!----- City ---------------------------------------------------------->
<tr>
<td>CITY</td>
<td><input type="text"  class="tb5" name="City" maxlength="30"   value="<%=ob.getCity()%>"/>

</td>
</tr>
<!----- Submit and Reset ------------------------------------------------->
<tr>
<td colspan="2" align="center">
<input type="submit" class="b1"  value="Update">
</td>
</tr>
</table>

 
</form>
</body>
</html>