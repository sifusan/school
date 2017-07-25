<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
  <head>
    <meta charset="UTF-8">
    <title>Order item</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css">
  </head>
  <body>
    <%@include file="manager.jsp"%>

    <sql:query dataSource="${snapshot}" var="result">
      SELECT * from order_item;
    </sql:query>
    <h1> Ordered Items</h1>
    <table class="manager_view">
      <th>Code</th>
      <th>Value</th>
      <th>Order Number</th>
      <th>Quantity</th>
      <c:forEach var="row" items="${result.rows}">
        <tr>
          <td><c:out value="${row.item_code}"/></td>
          <td><c:out value="${row.value}"/></td>
          <td><c:out value="${row.order_number}"/></td>
          <td><c:out value="${row.quantity}"/></td>
        </tr>
      </c:forEach>
    </table>
  </body>
</html>
