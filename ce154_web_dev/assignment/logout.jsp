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
    <%@include file="assignment.jsp"%>
    <h1>YOU LOGGED OUT</h1>
    <%
      if(session != null) {
        session.invalidate();
    }
    %>
  </body>
</html>
