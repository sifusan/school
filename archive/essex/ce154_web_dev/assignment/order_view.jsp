<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
  <head>
    <meta charset="UTF-8">
    <title>Order View</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css">
  </head>
  <body>
    <%@include file="manager.jsp"%>

    <sql:query dataSource="${snapshot}" var="result">
      SELECT * from customer_order;
    </sql:query>
    <h1> Orders </h1>
    <table class="manager_view">
      <th>Order Number</th>
      <th>Order Date</th>
      <th>Delivered</th>
      <th>Shipping Date</th>
      <th>Customer Number</th>
      <c:forEach var="row" items="${result.rows}">
        <tr>
          <td><c:out value="${row.order_number}"/></td>
          <td><c:out value="${row.order_date}"/></td>
          <td><c:out value="${row.delivered}"/></td>
          <td><c:out value="${row.shipping_date}"/></td>
          <td><c:out value="${row.customer_number}"/></td>
        </tr>
      </c:forEach>
    </table>
  </body>
</html>
