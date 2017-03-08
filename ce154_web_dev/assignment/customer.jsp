<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
  <head>
    <title>Customer</title>
  </head>
  <body>
    <%@include file="index.jsp"%>
    <button class="logout_btn" onClick="location.href='logout.jsp'" type="button">Log out</button>
    <h1 var="logged_in_as_customer"> Logged in as Customer </h1>
  </body>
</html>
