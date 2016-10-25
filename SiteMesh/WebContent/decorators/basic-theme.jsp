<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title><decorator:title /></title>
<link href="<%=request.getContextPath()%>/css/style.css"
	rel="stylesheet" type="text/css" />

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<style type="text/css">
#header {
	background: #01C1D6;
	padding: 10px;
	color: white;
}

#content {
	padding-bottom: 100px; /* Height of the footer element */
}

#footer {
	text-align: left;
	width: 100%;
	height: 100px;
	position: absolute;
	bottom: -85;
	left: 0;
	background: #ededed;
}

.sidenav {
	padding-top: 20px;
	/* background-color: #f1f1f1; */
	height: 100%;
	text-align: left;
}
</style>
</head>
<body>
	<div align="center">
		<div align="left" id="wrapper"
			style="height: 1084px; width: 970px; box-shadow: 0px 1px 25px 2px grey;">

			<div id="header">
				<table style="width: 100%">
					<tr>
						<td><h1 style="text-align: left; color: white;">Group
								Health</h1></td>
						<td style="text-align: right;"><input type="search"
							placeholder="search" /></td>
					</tr>
				</table>
			</div>

			<div class="container-fluid text-center">
				<div class="row content">
					<div class="col-sm-2 sidenav" style="width: 13.33%">
						<p>
							<a href="home.jsp">Home</a>
						</p>
						<p>
							<a href="register.jsp">Register</a>
						</p>
						<p>
							<a href="contact.jsp">Contact</a>
						</p>
						<p>
							<a href="products.jsp">Products</a>
						</p>
						<p>
							<a href="aboutUs.jsp">About Us</a>
						</p>
					</div>
					<div class="col-sm-8 text-left">
						<br />
						<decorator:body />
					</div>
					<div class="col-sm-2 sidenav" style="width: 20%">
						<div class="well">
							<p>
								<sub style="color: orange;">See Your Health Profile</sub> Health
								ProfileGet a jump on better health with an online report that
								assesses your risks and offers ways to improve your health.
							</p>
						</div>
						<div class="well">
							<super style="color: white;background-color: black;width: 100%">VIDEOS
							& TOOLS</super>
							<p>
								Use these as you consider pros and cons about your care or
								treatment options. They may help you have a better discussion
								with your doctor.<br />Videos and Tools: Making Decisions About
								Your Care
							</p>
						</div>
					</div>
				</div>
			</div>
			<!-- #content -->

			<div id="footer" style="box-shadow: 0px 20px 25px 0px grey;">
				<br /> <strong style="color: #01C1D6; size: 10em;"> <a
					href="https://www.ghc.org/html/public/site-map">Site Map</a> <a
					href="https://www.ghc.org/html/public/customer-service/help">Help</a>
					<a
					href="https://www.ghc.org/html/public/customer-service/site-policies">Terms
						of Use & Privacy Policy</a> <a
					href="https://www.ghc.org/html/public/about/awards">Awards</a> <a
					href="https://www.ghc.org/html/public/about/contact">Contact Us</a></strong>
				<br /> <sub>Copyright 2016 Group Health Cooperative</sub>
			</div>
			<!-- #footer -->

		</div>
		<!-- #wrapper -->
	</div>

</body>
</html>