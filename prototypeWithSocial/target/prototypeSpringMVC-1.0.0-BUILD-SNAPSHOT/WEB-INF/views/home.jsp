<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>jQuery Tab</title>
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

body {
	background: #e0e0e0;
	font: normal 11px/1.5em Arial, Helvetica, sans-serif;
}

a {
	outline: none;
}

#tabContaier {
	background: #f0f0f0;
	border: 1px solid #fff;
	margin: 100px auto;
	padding: 2px;
	position: relative;
	width: 5000px;
}

#tabContaier ul {
	overflow: hidden;
	border-right: 1px solid #fff;
	height: 35px;
	position: absolute;
	z-index: 100;
}

#tabContaier li {
	float: left;
	list-style: none;
}

#tabContaier li a {
	background: #ddd;
	border: 1px solid #fcfcfc;
	border-right: 0;
	color: #666;
	cursor: pointer;
	display: block;
	height: 35px;
	line-height: 35px;
	padding: 0 30px;
	text-decoration: none;
	text-transform: uppercase;
}

#tabContaier li a:hover {
	background: #eee;
}

#tabContaier li a.active {
	background: #fbfbfb;
	border: 1px solid #fff;
	border-right: 0;
	color: #333;
}

.tabDetails {
	background: #fbfbfb;
	border: 1px solid #fff;
	margin: 34px 0 0;
}

.tabContents {
	padding: 20px
}

.tabContents h1 {
	font: normal 24px/1.1em Georgia, "Times New Roman", Times, serif;
	padding: 0 0 10px;
}

.tabContents p {
	padding: 0 0 10px;
}
</style>
</head>

<body>
	<div id="tabContaier">
		<ul>
			<li><a class="active" href="#JobSearch">JobSearch</a></li>
			<li><a href="#Courses">Courses</a></li>
			<li><a href="#MyPrep">MyPrep</a></li>
			<li><a href="#Situationroom">Situationroom</a></li>
			<li><a href="#Competitions">Competitions</a></li>
		</ul>
		<!-- //Tab buttons -->
		<div class="tabDetails">
			<div id="JobSearch" class="tabContents">
				<h1>JobSearch</h1>
			</div>
			<!-- //JobSearch -->
			<div id="Courses" class="tabContents">
				<h1>Courses</h1>
			</div>
			<div id="MyPrep" class="tabContents">
				<h1>MyPrep</h1>
			</div>
			<div id="Situationroom" class="tabContents">
				<h1>Situationroom</h1>
			</div>
			<div id="Competitions" class="tabContents">
				<h1>Competitions</h1>
			</div>
			<div id="MyProfile" class="tabContents">
				<h1>MyProfile</h1>
			</div>

		</div>
		<!-- //tab Details -->
	</div>
	<!-- //Tab Container -->

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/jquery-1.4.2.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/amq_jquery_adapter.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/amq.js"></script>
	<script type="text/javascript">
		$(document).ready(function() {
			var amq = org.activemq.Amq;
			amq.init({
				uri : "${pageContext.request.contextPath}/amq",
				logging : true,
				timeout : 20
			});
			var myDestination = "queue://orderQueue";
			var myMessage = "someMessage";
			var myId = "tan";
			var myHandler =
			{
			  rcvMessage: function(message)
			  {
				  console.log("received "+message);
			  }
			};
			 
			amq.addListener(myId,myDestination,myHandler.rcvMessage);
			
			console.log("Inside Script Sending message");
			amq.sendMessage(myDestination, myMessage);
			
		
		});
		
	</script>


</body>
</html>
