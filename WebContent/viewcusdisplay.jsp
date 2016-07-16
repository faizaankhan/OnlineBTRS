<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>ALL CUSTOMER DETAILS</title>
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
<%@ page import="com.bus.CustomerData" %>

<%
	List <CustomerData> list=(List <CustomerData>) request.getAttribute("allrecords");
%>
 <h3>ALL USER RECORDS</h3>
    <table align="center">
   
      <tr>
        <th>EMAIL ID</th>
        <th>FIRST NAME</th>
        <th>LAST NAME</th>
        <th>SEX</th>
        <th>CONTACT NUMBER</th>
        <th>CITY</th>
        <th>PASSWORD</th>
      </tr>
      <%for (CustomerData ob: list) {%>
      <tr>
        <td><%=ob.getEmail()%></td>
    	<td><%=ob.getFname()%></td>
    	<td><%=ob.getLname()%></td>
    	<td><%=ob.getSex()%></td>
    	<td><%=ob.getPhone()%></td>
    	<td><%=ob.getCity()%></td>
    	<td>***********</td>
      </tr>
<%      
    }
%>
	</table>

</body>
</html>