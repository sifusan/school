<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
  <head>
    <title>Books</title>
  </head>
  <body>
    <%@include file="index.jsp"%>
    <%
      if(session != null) {
        session.setAttribute("username", null);
        session.invalidate();
      }
    %>
    <h1> You are logged out </h1>
  </body>
</html>
