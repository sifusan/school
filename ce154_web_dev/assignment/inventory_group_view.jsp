<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
  <head>
    <meta charset="UTF-8">
    <title>Inventory Group</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css">
  </head>
  <body>
    <%@include file="manager.jsp"%>

    <sql:query dataSource="${snapshot}" var="result">
      SELECT * from inventory_group;
    </sql:query>
    <h1> Inventory Groups </h1>
    <table class="manager_view">
      <th>Group Code</th>
      <th>Group Name</th>
      <c:forEach var="row" items="${result.rows}">
        <tr>
          <td><c:out value="${row.group_code}"/></td>
          <td><c:out value="${row.group_name}"/></td>
        </tr>
      </c:forEach>
    </table>
  </body>
</html>
