<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
  <head>
    <meta charset="UTF-8">
    <title>Books</title>
  </head>
  <body>
    <%@include file="index.jsp"%>
    <%
      if (session.getAttribute("username") != null) {
    %>
    <jsp:forward page="already_logged_in.jsp"/>
    <%
  }
  %>
    <table id="select_login">
      <tr>
        <th>
          <button onClick="location.href='customer_login.jsp'" type="button">Customer</button>
        </th>
      </tr>
      <tr>
        <th>
          <button onClick="location.href='manager_login.jsp'" type="button">Manager</button>
        </th>
      </tr>
    </table>
  </body>
</html>
