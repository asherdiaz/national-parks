<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<c:import url="/WEB-INF/jsp/common/header.jsp" />

<section id="main-content">
<h2>Favorite Parks: Voting Results</h2>
<ol>
<c:forEach var="vote" items="${votes}">

<li><c:out value="${vote.parkCode}" /> : <c:out value="${vote.voteCount}"/></li>
<p>
</c:forEach>
</ol>
</section>
</body>
</html>
