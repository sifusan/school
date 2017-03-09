<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
  <head>
    <title>Inventory View</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css">
  </head>
  <body>
    <%@include file="manager.jsp"%>

    <sql:query dataSource="${snapshot}" var="result">
      SELECT * from inventory;
    </sql:query>
    <h1> Inventory </h1>
    <table class="manager_view">
      <th>Code</th>
      <th>Name</th>
      <th>Description</th>
      <th>Author</th>
      <th>Image Location</th>
      <th>Group</th>
      <th>Price</th>
      <th>Stock Location</th>
      <th>Stock Count</th>
      <th>Order Count</th>
      <c:forEach var="row" items="${result.rows}">
        <tr>
          <td><c:out value="${row.item_code}"/></td>
          <td><c:out value="${row.item_name}"/></td>
          <td><c:out value="${row.item_description}"/></td>
          <td><c:out value="${row.item_author}"/></td>
          <td><c:out value="${row.item_image_loc}"/></td>
          <td><c:out value="${row.item_group}"/></td>
          <td><c:out value="${row.item_price}"/></td>
          <td><c:out value="${row.item_stock_location}"/></td>
          <td><c:out value="${row.item_stock_count}"/></td>
          <td><c:out value="${row.item_order_count}"/></td>
        </tr>
      </c:forEach>
    </table>
  </body>
</html>
