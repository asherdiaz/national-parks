<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:import url="/WEB-INF/jsp/common/header.jsp" />



<section id="main-content">
<div id="voteBox"><c:url value="surveyInput" var="voteURL"/>
<a href="${voteURL}">VOTE NOW!</a></div>
	<c:forEach var="park" items="${parks}">
	<div id="main-div">
		<div id="parkImageMain">
			<c:url value="img/parks/${fn:toLowerCase(park.parkCode)}.jpg" var="parkImg" />
			<c:url value="parkDetails?parkCode=${park.parkCode}" var="parkCode" />
			<a href="${parkCode}"><img src="${parkImg}" alt="Look at me! I'm a beautiful park!" /></a>
		</div>
		<div id="parkInfoMain">
			<p><h3><c:out value="${park.parkName}" /></h3></p>
			<p><span id="bolded"><c:out value="${park.state}" /></span></p>
			<p><c:out value="${park.parkDescription}" /></p>
			<p><div id="learn-more"><c:url value="parkDetails?parkCode=${park.parkCode}" var="parkCode" /><a href="${parkCode}">Learn More</a></div></p>
		</div>
		</div>
	</c:forEach>
	
</section>
</body>
</html>
