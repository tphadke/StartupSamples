<html>
<head>
<title>SiteMesh example: <sitemesh:write property='title' /></title>
<style type='text/css'>
/* Some CSS */

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
.disclaimer {
	text-align: center;
	border-top: 1px solid #cccccc;
	margin-top: 40px;
	color: #666666;
	font-size: smaller;
}
</style>
<sitemesh:write property='head' />
</head>


<body>

	<div>
		<sitemesh:write property='body' />
	</div>

	<div class='disclaimer'>Site disclaimer. This is an example.</div>

</body>
</html>