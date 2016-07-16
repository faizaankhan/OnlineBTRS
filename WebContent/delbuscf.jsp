<html>
<head>
<title>DeleteBus Confirmation</title>

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
<%@ page import="com.bus.BusData" %>
<%
BusData ob=(BusData)request.getAttribute("allrecords");
%>




<h3>CONFIRM DELETION</h3>

<form action="DeleteBusServlet" method="get">
<table align="center" cellpadding = "5">

 <tr>
<td>BUS ID</td>
<td><input type="text" class="tb5" name="busID" maxlength="30" value="<%=ob.getBid()%>" readonly />
</td>
</tr>
 
 <!-----source ---------------------------------------------------------->
<tr>
<td>SOURCE</td>
<td><input type="text" class="tb5"  name="source" maxlength="30" value="<%=ob.getSource()%>"  readonly />
</td>
</tr>
 
<!-----DESTINATION---------------------------------------------------------->
<tr>
<td>DESTINATION</td>
<td><input type="text" class="tb5"  name="destination" maxlength="30" value="<%=ob.getDest()%>"  readonly />
</td>
</tr>
 
<!-----NO. OF SEATS ---------------------------------------------------------->
<tr>
<td>NO. OF SEATS</td>
<td><input type="text" class="tb5"  name="noOfSeats" maxlength="10" value="<%=ob.getNo_seats()%>"  readonly /></td>
</tr>

<!-- --TYPE --> 

<tr>
<td>Type</td>
<td>
<input type="radio" name="type" value="NAC" checked> Non-AC
<input type="radio" name="type" value="AC"> AC
</td>
</tr>




<!-----TIME---------------------------------------------------------->
<tr>
<td>TIME OF DEPARTURE</td>
<td><input type="time" class="tb5"  name="time" maxlength="20" value="<%=ob.getTime()%>"  readonly /></td>
</tr>

 
<!--------------------------------------------------------------->
<tr>
<td>FARE</td>
<td><input type="text" class="tb5"  name="fare" maxlength="10" value="<%=ob.getFare()%>"  readonly /></td>
</tr>


<!----- Submit and Reset ------------------------------------------------->

<tr>
<td colspan="2" align="center">
<input type="submit" class="b1" value="DELETE">
</td>
<tr>

</table>

</form>
</body>
</html>