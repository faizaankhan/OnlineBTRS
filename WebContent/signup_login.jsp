<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>LoginPage</title>
		<link rel="stylesheet" href="loginstyle.css">
		</head>
<body>
<div style="height:400px; padding:5px;">
			<div class="container">
				<div id="login-form">
	   		    <h3>Login</h3>
				    <fieldset>
					<center><h5 class="gree">Account created...</h5><center>
					      <form action="LoginServlet" method="get" target="nav">
						        <input type="email" name="email" required value="Email" onBlur="if(this.value=='')this.value='Email'" onFocus="if(this.value=='Email')this.value='' "> 
						        <!-- JS because of IE support; better: placeholder="Email" -->
								<br>
        						<input type="password" name="pswd" required value="Password" onBlur="if(this.value=='')this.value='Password'" onFocus="if(this.value=='Password')this.value='' ">
        						 <!-- JS because of IE support; better: placeholder="Password" -->
								<br>
        				        <input type="submit" value="Login">
								<p>
        								<span class="clearfix">
							          <span class="info">?</span>
							          <a href="#">Forgot Password</a>
        								</span>
								</p>
      						</form>
				    </fieldset>
		  </div> <!-- end login-form -->
	</div>
</div>
</body>
</html>
