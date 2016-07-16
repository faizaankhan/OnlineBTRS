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
<%@ page import="java.util.List" %>
<%@ page import="com.bus.TranData" %>

<%
	List <TranData> list=(List <TranData>) request.getAttribute("allrecords");
%>
<h3>All Transaction Details</h3>
    <table align="center">
    
      <tr>
        <th>Reservation ID</th>
        <th>Bus ID</th>
        <th>Customer Email</th>
        <th>Travel Date</th>
        <th>Reservation Date</th>
      </tr>
      <%for (TranData ob: list) {%>
      <tr>
        <td><%=ob.getTid()%></td>
    	<td><%=ob.getBid()%></td>
    	<td><%=ob.getCid()%></td>
    	<td><%=ob.getTrvl_date()%></td>
    	<td><%=ob.getR_date()%></td>
      </tr>
<%      
    }
%>
	</table>

</body>
</html>