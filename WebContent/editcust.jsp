<html>
<head>
<title>Edit Customer Details</title>

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
<h3>ENTER THE CUSTOMER EMAIL ID TO EDIT DETAILS</h3>
	<center>
	<form action="CnfEditCustomerServlet" method="get">
	Email&nbsp;&nbsp;&nbsp;<input type="text" class="tb5" name="cusId">
    <br>
    <br>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type= "submit" class="b1" value="Next">
	</form>
	</center>
</body>
</html>