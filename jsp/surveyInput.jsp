<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:import url="/WEB-INF/jsp/common/header.jsp" />

<section id="main-content">
<h1>Vote for your Favorite Park!</h1>
	<c:url value="surveyInput" var="formAction"/>
	<form method="POST" action="${formAction}">
	<label for="emailAddress">Email:</label><br><input type="text"
			name="emailAddress"> <p>
			<label for="state">State:</label><br><input type="text" name="state">
			<p>
			<label for="activityLevel">What's Your Activity Level:</label><br>
			<select
			name="activityLevel" class="activitylevel">
			<option value="inactive">Inactive</option>
			<option value="sedentary">Sedentary</option>
			<option value="active">Active</option>
			<option value="extremelyActive">Extremely Active</option>
		</select><p>
		<label for="parkCode">Vote For Your Favorite Park:</label><br>
		<input type="radio" name="parkCode" value="CVNP" checked>Cuyahoga Valley National Park<br>
		<input type="radio" name="parkCode" value="ENP">Everglades National Park<br>
		<input type="radio" name="parkCode" value="GCNP">Grand Canyon National Park<br>
		<input type="radio" name="parkCode" value="GNP">Glacier National Park<br>
		<input type="radio" name="parkCode" value="GSMNP">Great Smoky Mountains National Park<br>
		<input type="radio" name="parkCode" value="GTNP">Grand Teton National Park<br>
		<input type="radio" name="parkCode" value="MRNP">Mount Rainier National Park<br>
		<input type="radio" name="parkCode" value="RMNP">Rocky Mountain National Park<br>
		<input type="radio" name="parkCode" value="YNP">Yellowstone National Park<br>
		<input type="radio" name="parkCode" value="YNP2">Yosemite National Park
		<p>
		<input class="vote" type="submit" value="Vote Now">
	</form>

</section>
</body>
</html>
