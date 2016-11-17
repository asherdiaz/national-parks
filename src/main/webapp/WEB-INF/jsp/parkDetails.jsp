<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:import url="/WEB-INF/jsp/common/header.jsp" />

<section id="main-content">
<div id="voteBox"><c:url value="surveyInput" var="voteURL"/>
<a href="${voteURL}">VOTE NOW!</a></div>
	<div id="main-div">
		<c:set var="park" value="${parks}" />
		<h1>
			<c:out value="${park.parkName}" />
		</h1>
		<div id="parkImage">
			<c:url value="img/parks/${fn:toLowerCase(park.parkCode)}.jpg"
				var="parkImg" />
			<img src="${parkImg}" alt="Look at me! I'm a beautiful park!" />
		</div>
		<div id="parkInfo">
			<span id="bolded">Location:</span>
			<c:out value="${park.state}" />
			<br> <span id="bolded">Acreage:</span>
			<c:out value="${park.acreage}" />
			<br> <span id="bolded">Elevation:</span>
			<c:out value="${park.elevationInFeet}" />
			feet <br> <span id="bolded">Miles of Trail:</span>
			<c:out value="${park.milesOfTrail}" />
			miles <br> <span id="bolded">Number of Campsites:</span>
			<c:out value="${park.numOfCampsites}" />
			<br> <span id="bolded">Climate:</span>
			<c:out value="${park.climate}" />
			<br> <span id="bolded">Year Founded:</span>
			<c:out value="${park.yearFounded}" />
			<br> <span id="bolded">Annual Visitor Count:</span>
			<c:out value="${park.annualVisitorCount}" />
			visitors <br> <span id="bolded">Entry Fee:</span>
			<c:out value="${park.entryFee}" />
			<br> <span id="bolded">Number of Animal Species:</span>
			<c:out value="${park.numOfAnimalSpecies}" />
		</div>
		<div id="quoteBox">
			<c:out value="${park.inspirationalQuote}" />
			<br>
			<div id="quoteSrc">
				<c:out value="${park.inspirationalQuoteSrc}" />
			</div>
		</div>
	</div>
	<div id="description">
		<p>
			<c:out value="${park.parkDescription}" />
		</p>
	</div>
	<div id="weatherOnDetailsPage">
		<h2>View 5-Day Forecast</h2>
		<c:url value="fiveDayForecast" var="formAction" />
		<form method="GET" action="${formAction}">
		<label for="tempPref">Temperature Preference:</label>
			<select name="tempPref" id="tempPref" class="tempPref">
				<option value="F">Fahrenheit</option>
				<option value="C">Celsius</option>
			</select>
			<input name="parkCode" type="hidden" value="${park.parkCode}">
			<p>
			<input class="formSubmitButton" type="submit" value ="View Forecast">
		</form>
	</div>
</section>
</body>
</html>