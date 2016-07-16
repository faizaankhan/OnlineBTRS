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
	height: 22px;
	width: 230px;
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
<h3>ADD BUS DETAILS</h3>

<form action="InsertBusServlet" method="POST">
 
<table align="center" cellpadding = "5">
 
<tr>
<td>Bus ID</td>
<td><input type="text" class="tb5" name="busid" maxlength="30"/>
</td>
</tr>
 
<tr>
<td>Time</td>
<td><input type="time" class="tb5"  name="time" maxlength="30"/>
</td>
</tr>

<tr>
<td>Source</td>
<td><input type="text" class="tb5"  name="source" maxlength="30"/>
</td>
</tr>

<tr>
<td>Destination</td>
<td><input type="text" class="tb5"  name="dest" maxlength="30"/>
</td>
</tr>


<tr>
<td>Type</td>
<td>
<input type="radio" name="type" value="NAC" checked> Non-AC
<input type="radio" name="type" value="AC"> AC
</td>
</tr>



<tr>
<td>No. of Seats</td>
<td><input type="integer" class="tb5"  name="no_of_seats" maxlength="30"/>
</td>
</tr>

<tr>
<td>Fare</td>
<td><input type="float" class="tb5"  name="fare" maxlength="30"/> Rs. 
</td>
</tr>

 <!----- Submit and Reset ------------------------------------------------->
<tr>
<td colspan="2" align="center">

<input type="submit"  class="b1" value="Submit">

<input type="reset"  class="b1" value="Reset">
</td>
</tr>
</table>
</form>
</body>
</html>