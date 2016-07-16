<!DOCTYPE html>
<html>
<head>
<title>Search Bus</title>
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

.wd{

}
</style>
</head>
<body bgcolor="#e5e5e5">
<%@ page import="java.util.List" %>
<%@ page import="com.bus.BusData" %>

<%
	List <String> slist=(List <String>) request.getAttribute("source");
	List <String> dlist=(List <String>) request.getAttribute("destination");
%>

<h3>BUS ENQUIRY</h3>
<form action="EnqueryServlet" method="get">
<table align="center">
<tr>
<td>Source </td>

<td>
<select name="source" id="Source" class="tb5">
<%for (String ob: slist) {%>
<option value="<%=ob%>"><%=ob%></option>
<%      
    }
%>
</select>
</td>
</tr>
<tr>
<td>Destination</td>
<td>
<select name="dest" id="Destination" class="tb5">
<%for (String ob1: dlist) {%>
<option value="<%=ob1%>"><%=ob1%></option>
<%      
    }
%>
</select>
</td>
</tr>
<tr>

<td>Date Of Journey</td>
<td>
<select name="j_date" id="Journey_Date" class="d1">
<option value="-1">Day:</option>
<option value="1">1</option>
<option value="2">2</option>
<option value="3">3</option>
 
<option value="4">4</option>
<option value="5">5</option>
<option value="6">6</option>
<option value="7">7</option>
<option value="8">8</option>
<option value="9">9</option>
<option value="10">10</option>
<option value="11">11</option>
<option value="12">12</option>
 
<option value="13">13</option>
<option value="14">14</option>
<option value="15">15</option>
<option value="16">16</option>
<option value="17">17</option>
<option value="18">18</option>
<option value="19">19</option>
<option value="20">20</option>
<option value="21">21</option>
 
<option value="22">22</option>
<option value="23">23</option>
<option value="24">24</option>
<option value="25">25</option>
<option value="26">26</option>
<option value="27">27</option>
<option value="28">28</option>
<option value="29">29</option>
<option value="30">30</option>
 
<option value="31">31</option>
</select>
 
<select id="Journey_Month" name="j_month" class="d1">
<option value="-1">Month:</option>
<option value="01">Jan</option>
<option value="02">Feb</option>
<option value="03">Mar</option>
<option value="04">Apr</option>
<option value="05">May</option>
<option value="06">Jun</option>
<option value="07">Jul</option>
<option value="08">Aug</option>
<option value="09">Sep</option>
<option value="10">Oct</option>
<option value="11">Nov</option>
<option value="12">Dec</option>
</select>
 
<select id="Journey_Year" name="j_year" class="d1">
 
<option value="-1">Year:</option>
<option value="2028">2028</option>
<option value="2027">2027</option>
<option value="2026">2026</option>
<option value="2025">2025</option>
<option value="2024">2024</option>
<option value="2023">2023</option>
<option value="2022">2022</option>
<option value="2021">2021</option>
<option value="2020">2020</option>
<option value="2019">2019</option>
<option value="2018">2018</option>
<option value="2017">2017</option>
<option value="2016">2016</option>
</select>
</td>
</tr>

<tr>
<td colspan="2" align="center">
<input type="submit" class="b1"  value="Check">
</td>
</tr>
</table>
</form>
</body>

</html>