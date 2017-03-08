<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
  <head>
    <title>Purchase</title>
  </head>
  <body>
    <%@include file="index.jsp"%>
    <%
      if (session.getAttribute("username") != null) {
    %>
    <jsp:forward page="purchase.jsp"/>
    <%
  } else {
  %>
  <jsp:forward page="customer_login.jsp"/>
  <%
  }
  %>
  </script>
</html>
