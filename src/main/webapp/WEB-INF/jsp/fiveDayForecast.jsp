<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:import url="/WEB-INF/jsp/common/header.jsp" />

<section id="main-content">

	<div id="fiveDayForecast">
		<c:forEach var="forecastDay" items="${weatherList}">
			<div id="specificDay">
				<h3>
					Day
					<c:out value="${forecastDay.fiveDayForecastValue}" />
				</h3>
				<div id="forecastImage">
					<c:choose>
						<c:when test="${forecastDay.forecast == 'cloudy'}">
							<img src="img/weather/cloudy.png" alt="cloudy image" />
							<br>
							<span id="forecastCapitalize"><c:out
									value="${forecastDay.forecast}" /></span>
							<p>
						</c:when>

						<c:when test="${forecastDay.forecast == 'rain'}">
							<img src="img/weather/rain.png" alt="rainy image" />
							<br>
							<span id="forecastCapitalize"><c:out
									value="${forecastDay.forecast}" /></span>
							<p>Pack your rain gear and wear waterproof shoes!
							<p>
						</c:when>

						<c:when test="${forecastDay.forecast == 'snow'}">
							<img src="img/weather/snow.png" alt="snowy image" />
							<br>
							<span id="forecastCapitalize"><c:out
									value="${forecastDay.forecast}" /></span>
							<p>
								<br> Don't forget to pack your snowshoes!
							<p>
						</c:when>

						<c:when test="${forecastDay.forecast == 'sunny'}">
							<img src="img/weather/sunny.png" alt="sunny image" />
							<br>
							<span id="forecastCapitalize"><c:out
									value="${forecastDay.forecast}" /></span>
							<p>
								<br> Pack Sunblock!
							<p>
						</c:when>

						<c:when test="${forecastDay.forecast == 'thunderstorms'}">
							<img src="img/weather/thunderstorms.png" alt="thunderstorm image" />
							<br>
							<span id="forecastCapitalize"><c:out
									value="${forecastDay.forecast}" /></span>
							<p>Seek Shelter and Avoid Hiking on Exposed Ridges!
							<p>
						</c:when>

						<c:when test="${forecastDay.forecast == 'partly cloudy'}">
							<img src="img/weather/partlyCloudy.png" alt="partly cloudy image" />
							<br>
							<span id="forecastCapitalize"><c:out
									value="${forecastDay.forecast}" /></span>
							<p>
						</c:when>

					</c:choose>
				</div>
				<div id="forecastDetails">
					<c:choose>
						<c:when test="${forecastDay.tempPref == 'F' }">

							<c:if test="${forecastDay.highTemp > 75}">
				Bring an extra gallon of water!<p>
							</c:if>
							<c:set var="tempDiff"
								value="${forecastDay.highTemp - forecastDay.lowTemp}" />
							<c:if test="${tempDiff > 20}">
				Wear breathable layers!<p>
							</c:if>
							<c:if test="${forecast.lowTemp < 20}">
				Danger!!! Exposure to Frigid Temperatures!<p>
							</c:if>

							<span id="highTemp">High: <c:out
									value="${forecastDay.highTemp}" /> <span id="tempPref">F</span>&deg;</span>
							<br>
							<span id="lowTemp">Low: <c:out
									value="${forecastDay.lowTemp}" /> <span id="tempPref">F</span>&deg;
							</span>
							<p>
						</c:when>
						<c:when test="${forecastDay.tempPref == 'C'}">
						<c:if test="${forecastDay.highTemp > 75}">
				Bring an extra gallon of water!<p>
							</c:if>
							<c:set var="tempDiff"
								value="${forecastDay.highTemp - forecastDay.lowTemp}" />
							<c:if test="${tempDiff > 20}">
				Wear breathable layers!<p>
							</c:if>
							<c:if test="${forecast.lowTemp < 20}">
				Danger!!! Exposure to Frigid Temperatures!<p>
							</c:if>
						<span id="highTemp">High: <c:out
									value="${forecastDay.highTempC}" /> <span id="tempPref">C</span>&deg;</span>
							<br>
							<span id="lowTemp">Low: <c:out
									value="${forecastDay.lowTempC}" /> <span id="tempPref">C</span>&deg;
							</span>
							<p>
						</c:when>
					</c:choose>
				</div>
			</div>

		</c:forEach>
	</div>
</section>