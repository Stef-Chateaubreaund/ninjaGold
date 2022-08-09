<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>   
<%@ page import="java.util.*" %> 
<!DOCTYPE html>
<html>
	<head>
	<meta charset="ISO-8859-1">
	<link rel="stylesheet" href="/css/style.css" />
	<title>Homepage</title>
	</head>
	<body>
	<div id="container">
      <div id="scoreboard">
        <p id="your-gold">
          seu ouro 
          <span id="gold-count"><c:out value="${amount}"></c:out></span>
        </p>
      </div>
      <div id="locations-container">
        <div class="locations">
          <h2>Farm</h2>
          <p>(voce pode ganhar entre 15 e 20)</p>
          <form action="/" method="post">
            <input type="hidden" name="which_form" value="farm" />
            <button type="submit">ache o ouro</button>
          </form>
        </div>
        <div class="locations">
          <h2>Cave</h2>
          <p>(voce pode granhar entre 5 e 10)</p>
          <form action="/" method="post">
            <input type="hidden" name="which_form" value="cave" />
            <button type="submit">ache o ouro</button>
          </form>
        </div>
        <div class="locations">
          <h2>casinha</h2>
          <p>voce ganha entre 2 e 5 </p>
          <form action="/" method="post">
            <input type="hidden" name="which_form" value="house" />
            <button type="submit">ache o ouro</button>
          </form>
        </div>
        <div class="locations">
          <h2>quesssttttt</h2>
          <p>isso e quanto voce ganhar </p>
          <form action="/" method="post">
            <input type="hidden" name="which_form" value="casino" />
            <button type="submit">ache o ouro</button>
          </form>
        </div>
      </div>
      <div id="activities-container">
        <h3>Activities:</h3>
        <div id="actvities">
         	<c:forEach items="${activityLog}" var="activity">
         		<p>${activity}</p>
         	</c:forEach>
        </div>
      </div>
    </div>
</body>
</html>

 