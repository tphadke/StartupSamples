<!DOCTYPE html>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<html>
<head>
    <title><spring:message code="spring.social.mvc.normal.title"/></title>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/bootstrap-theme.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/font-awesome.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/static/css/style.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/vendor/jquery-2.0.3.js"></script>
    <script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/vendor/bootstrap.js"></script>
    <sitemesh:write property="head"/>
    
<style type="text/css">
* {
	margin: 0;
	padding: 0;
}

body {
	background: #61bd6d;
	font: normal 11px/1.5em Arial, Helvetica, sans-serif;
}

.standard li {
	float: left;
	list-style: none;
	width:530px; 
	height:180px;	
	
}


.social li {
	float: left;
	list-style: none;
	
}
</style>
</head>
<body>
<div class="page">
    <div class="navbar navbar-default" role="navigation">
        <div class="navbar-header">
            <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                <span class="sr-only">
                	<spring:message code="label.navigation.toggle.navigation.button"/>
                </span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <span class="navbar-brand">
            	<spring:message code="spring.social.mvc.normal.title"/>
            </span>
        </div>
        <div class="collapse navbar-collapse navbar-ex1-collapse">
            <ul class="nav navbar-nav navbar-left">
                <sec:authorize access="isAuthenticated()">
                    <li>
                    <a href="/">
                    	<spring:message code="label.navigation.home.link"/>
                    </a>
                    </li>
                </sec:authorize>
            </ul>
            <ul class="nav navbar-nav navbar-right"> 
                <sec:authorize access="isAnonymous()">
                    <li>
                    	<a href="/user/register">
                    	<spring:message code="label.navigation.registration.link"/>
                    	</a>
                    </li>
                </sec:authorize>
                <sec:authorize access="isAuthenticated()">
                    <li>
                        <form action="/logout" method="POST">
                            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
                            <button type="submit" class="btn btn-default navbar-btn">
                                <spring:message code="label.navigation.logout.link"/>
                            </button>
                        </form>
                    </li>
                </sec:authorize>
            </ul>
            <sec:authorize access="isAuthenticated()">
                <p class="nav navbar-nav navbar-right navbar-text sign-in-text">
                    <sec:authentication property="principal.socialSignInProvider" var="signInProvider"/>
                    <c:if test="${signInProvider == 'FACEBOOK'}">
                        <i class="icon-facebook-sign"></i>
                    </c:if>
                    <c:if test="${signInProvider == 'TWITTER'}">
                        <i class="icon-twitter-sign"></i>
                    </c:if>
                    <c:if test="${empty signInProvider}">
                        <spring:message code="label.navigation.signed.in.as.text"/>
                    </c:if>
                    <sec:authentication property="principal.username"/>
                </p>
            </sec:authorize>
        </div><!-- /.navbar-collapse -->
    </div>
    <div class="content standard">
        <sitemesh:write property="body"/>
    </div>
</div>
</body>
</html>