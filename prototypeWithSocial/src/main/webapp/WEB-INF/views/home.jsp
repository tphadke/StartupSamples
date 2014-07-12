<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>jQuery Tab</title>
<link rel="stylesheet" 
href="${pageContext.request.contextPath}/resources/js/jquery-tooltip/jquery.tooltip.css" />
<link rel="stylesheet" 
href="${pageContext.request.contextPath}/resources/js/jquery-tooltip/demo/screen.css" />

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
	<div>
		<div id="tabContaier">
			<div>
				<img id="notes"
					src="${pageContext.request.contextPath}/resources/images/notes.jpg"
					title="notes" height="25" width="25"/> 
				<img id="cut"
					src="${pageContext.request.contextPath}/resources/images/cut.png"
					title="notes" height="25" width="25"/>
				<img id="online"
					src="${pageContext.request.contextPath}/resources/images/online.png"
					title="online users" height="25" width="25"/>
				<img id="rate"
					src="${pageContext.request.contextPath}/resources/images/rate.png"
					alt="notes" height="25" width="25"/>
				<img id="timer"
					src="${pageContext.request.contextPath}/resources/images/timer.png"
					title="timer" height="25" width="25"/>
				<img id="trash"
					src="${pageContext.request.contextPath}/resources/images/trash.png"
					alt="notes" height="25" width="25"/>
				<img id="question"
						src="${pageContext.request.contextPath}/resources/images/question.png"
						alt="notes" height="25" width="25"/>
			</div>
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
					<jsp:include page="JobSearch/index.jsp" />
				</div>
				<!-- //JobSearch -->
				<div id="Courses" class="tabContents">
					<jsp:include page="Courses/index.jsp" />
				</div>
				<div id="MyPrep" class="tabContents">
					<jsp:include page="MyPrep/index.jsp" />
				</div>
				<div id="Situationroom" class="tabContents">
					<jsp:include page="Situationroom/index.jsp" />
				</div>
				<div id="Competitions" class="tabContents">
					<jsp:include page="Competitions/index.jsp" />
				</div>
				<div id="MyProfile" class="tabContents">
					<jsp:include page="MyProfile/index.jsp" />
				</div>

			</div>
			<!-- //tab Details -->
		</div>
		<!-- //Tab Container -->
	</div>

	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/jquery-1.4.2.min.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/amq_jquery_adapter.js"></script>
	<script type="text/javascript"
		src="${pageContext.request.contextPath}/resources/js/amq.js"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-tooltip/lib/jquery.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-tooltip/lib/jquery.bgiframe.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-tooltip/lib/jquery.dimensions.js" type="text/javascript"></script>
	<script src="${pageContext.request.contextPath}/resources/js/jquery-tooltip/jquery.tooltip.js" type="text/javascript"></script>

	<script src="${pageContext.request.contextPath}/resources/js/jquery-tooltip/demo/chili-1.7.pack.js" type="text/javascript"></script>
		
	<script type="text/javascript">
		$(document).ready(function() {
			$(".tabContents").hide(); // Hide all tab conten divs by default
			$(".tabContents:first").show(); // Show the first div of tab content by default

			$("#tabContaier ul li a").click(function() { //Fire the click event

				var activeTab = $(this).attr("href"); // Catch the click link
				$("#tabContaier ul li a").removeClass("active"); // Remove pre-highlighted link
				$(this).addClass("active"); // set clicked link to highlight state
				$(".tabContents").hide(); // hide currently visible tab content div
				$(activeTab).fadeIn(); // show the target tab content div by matching clicked link.
			});
			var totmessage = 1;
			var amq = org.activemq.Amq;
			amq.init({
				uri : "${pageContext.request.contextPath}/amq",
				logging : true,
				timeout : 20
			});
			var myDestination = "queue://orderQueue";
			var myMessage = "someMessage";
			var myId = "tan";
			var myHandler = {
				rcvMessage : function(message) {
					totmessage = totmessage + 1;
					console.log("received " + message);
				}
			};
			
			$("#online").tooltip({
				bodyHandler: function() {
					return totmessage;
				},
				showURL: false,
				top:-40,
				left:-10
			});


			amq.addListener(myId, myDestination, myHandler.rcvMessage);
			window.setInterval(function() {
				amq.sendMessage(myDestination, myMessage);
				amq.sendMessage(myDestination, myMessage);
				amq.sendMessage(myDestination, myMessage);
				amq.sendMessage(myDestination, myMessage);
				amq.sendMessage(myDestination, myMessage);
			}, 5000);
			
			console.log("Inside Script Sending message");
		

		});
	</script>


</body>
</html>
