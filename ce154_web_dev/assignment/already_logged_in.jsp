<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
  <head>
    <title>Already Logged In</title>
  </head>
  <body>
    <%@include file="index.jsp"%>
    <h1>Already Logged in</h1>
    <button class="logout_btn" onClick="location.href='logout.jsp'" type="button">Log out</button>
  </body>
</html>
