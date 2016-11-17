<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<title>National Parks Weather Service</title>
<c:url value="/css/npgeek.css" var="cssHref" />
<link rel="stylesheet" href="${cssHref}">
</head>

<body>
	<div id="logo">
		<c:url value="img/logo.png" var="logo" />
		<img src="${logo}" alt="National Parks logo" />
	</div>
	<nav>
		<c:url value="/homePage" var="homeURL" />
		<c:url value="surveyInput" var="voteURL"/>
		<ul>
			<li><a href="${homeURL}">Home</a></li>
			<li>|</li>
			<li><a  href="${voteURL}">Vote for your Favorite Park!</a>
		</ul>
	</nav>

