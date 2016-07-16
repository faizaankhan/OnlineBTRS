<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>All Transaction Details</title>

<style>
table {
    border-collapse: collapse;
    width: 70%;
    align: center;
}

th, td {
    text-align: left;
    padding: 8px;
}

tr:nth-child(even){background-color: #f2f2f2}

th {
    background-color: #4CAF50;
    color: white;
}

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
</style>

</head>
<body bgcolor="#e5e5e5">
<form action="CancelTicketServlet" method="get">
<%@ page import="java.util.List" %>
<%@ page import="com.bus.HisData" %>

<%
	List <HisData> list=(List <HisData>) request.getAttribute("allrecords");
%>
<h3>All Reservation History</h3>
   <table align="center">
    
      <tr>
        <th>Reservation ID</th>
        <th>Bus ID</th>
        <th>Travel Date</th>
        <th>Reservation Date</th>
        <th>Source</th>
        <th>Destination</th>
      </tr>
      <%for (HisData ob: list) {%>
      <tr>
        <td><input type="radio" name="tid" value="<%=ob.getTid()%>"/><%=ob.getTid()%></td>
    	<td><%=ob.getBid()%></td>
    	<td><%=ob.getTrvl_date()%></td>
    	<td><%=ob.getR_date()%></td>
      	<td><%=ob.getSource()%></td>
      	<td><%=ob.getDest()%></td>	
      </tr>
<%      
    }
%>
</table>
<br><br>
<center><input type="submit" class="b1"  value="Cancel Ticket" ></center>
</form>
</body>
</html>