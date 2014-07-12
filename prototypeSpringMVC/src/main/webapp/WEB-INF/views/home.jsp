<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>jQuery Tab</title>
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/jquery-tooltip/jquery.tooltip.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/js/jquery-tooltip/demo/screen.css" />
<link rel="stylesheet" href="${pageContext.request.contextPath}/resources/css/home.css" />

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
	<script src="${pageContext.request.contextPath}/resources/js/home.js" type="text/javascript"></script>
		
	<script type="text/javascript">
	$(document).ready(homedisplay("${pageContext.request.contextPath}"));
	</script>


</body>
</html>
