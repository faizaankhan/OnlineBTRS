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
.d1 {
	border:2px solid #4CAF50;
	border-radius:10px;
	height: 28px;
	width: 60px;
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
<h3>  BUS TICKET BOOKING</h3>

<form action="#" method="POST">
 
<table align="center" cellpadding = "10">
 
<!----- Customer Id ---------------------------------------------------------->
<tr>
<td>Customer ID <font color="red">*</font> </td>
<td><input type="text" class="tb5" name="cid" maxlength="30"/>
</td>
</tr>
 
<!----- Source ---------------------------------------------------------->
<tr>
<td>Source <font color="red">*</font></td>
<td><input type="text" class="tb5"  name="Source" maxlength="30"/>

</td>
</tr>
<!----- Destination ---------------------------------------------------------->
<tr>
<td>Destination <font color="red">*</font></td>
<td><input type="text" class="tb5"  name="Destination" maxlength="30"/>

</td>
</tr>
 
<!----- Date Of Journey -------------------------------------------------------->
<tr>
<td>Date of Journey <font color="red">*</font></td>
 
<td>
<select name="Journey_Date" id="Journey_Date" class="d1">
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
 
<select id="Journey_Month" name="Journey_Month" class="d1">
<option value="-1">Month:</option>
<option value="January">Jan</option>
<option value="February">Feb</option>
<option value="March">Mar</option>
<option value="April">Apr</option>
<option value="May">May</option>
<option value="June">Jun</option>
<option value="July">Jul</option>
<option value="August">Aug</option>
<option value="September">Sep</option>
<option value="October">Oct</option>
<option value="November">Nov</option>
<option value="December">Dec</option>
</select>
 
<select name="Journey_Year" id="Journey_Year" class="d1">
 
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
<!-----select bus type------------------------------------------------->
<tr>
<td>Select Type</td>
<td>
<input type="radio" name="btype" value="AC"> AC
<input type="radio" name="btype" value="NAC" checked> Non-AC
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