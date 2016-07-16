<!DOCTYPE html>
<html>
<head>
<title>BOOK YOUR TiCKET</title>
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


.tb5 {
	border:2px solid #4CAF50;
	border-radius:10px;
	height: 30px;
	width: 230px;
	padding: 2px;
}
.d1 {
	border:2px solid #4CAF50;
	border-radius:10px;
	height: 28px;
	width: 60px;
	padding: 2px;
}
h3{
font-family:Courier New; 
font-size: 22pt; 
font-weight: bold; 
color: #696969;
text-align: center; 
}

table{
float: center;
padding:1px;
font-family: Calibri; 
color:#000000; 
font-size: 12pt; 
font-style: normal;
background-color:"#e5e5e5";
border-collapse: collapse; 
border: 2px solid navy;
}

table.inner{
border: 1px
}

.wd{

}
</style>
</head>
<body bgcolor="#e5e5e5">
<%@ page import="java.util.List" %>
<%@ page import="com.bus.BusData" %>
<%@page import="com.bus.EnqData" %>

<%
	List <EnqData> list=(List <EnqData>) request.getAttribute("allrecords");
	String tdate=(String) request.getAttribute("tdate");
%>

<h3>BOOK YOUR TICKET</h3>
<form action="a_unsuccess.html" method="get">
<table align="center" cellpadding= "5" >
    <caption>AVAILABLE BUSES FROM SOURCE TO DESTINATION </caption>
      <tr>
        <th>BUS ID</th>
        <th>TYPE </th>
        <th>TIME </th>
        <th>FARE </th>
        <th>SEATS LEFT </th>
        </tr>
      <%for (EnqData ob: list) {%>
      <tr>
        <td><input type="radio" name="bid" value="<%=ob.getBid()%>"/><%=ob.getBid()%></td>
    	<td><%=ob.getType()%></td>
    	<td><%=ob.getTime()%></td>
    	<td><%=ob.getFare()%></td>
    	<td><%=ob.getSeats_left()%></td>
      </tr>
      
<%      
    }
%>
	
<tr>
<td colspan = 5 float= "center" align ="center">
<input type="reset" class="b1"  value="RESET" >
<input type="submit" class="b1"  value="BOOK" >
</td>
</tr>
</table>
<input type="hidden" name="tdate" value="<%=tdate%>"/>
</form>
</body>
</html>
