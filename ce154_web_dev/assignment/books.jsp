<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
  <head>
  <script>
    function go_to_purchase(x) {
      localStorage.setItem("item", x);
      location.href="purchase_redirect.jsp"
    }
  </script>
    <title>Books</title>
  </head>
  <body>
    <%@include file="index.jsp"%>

    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <sql:query dataSource="${snapshot}" var="result">
      SELECT * from inventory WHERE item_group="1001";
    </sql:query>

    <table class="items">
      <th></th>
      <th>Title</th>
      <th>Description</th>
      <th>Available</th>
      <th>Price</th>
      <c:forEach var="row" items="${result.rows}">
        <tr>
          <td><img src="images/${row.item_image_loc}"/></td>
          <td><c:out value="${row.item_name}"/></td>
          <td><c:out value="${row.item_description}"/></td>
          <td><c:out value="${row.item_stock_count}"/></td>
          <td><c:out value="${row.item_price}£"/></td>
          <td><button name="purchase_btn" type="submit" onClick="go_to_purchase('${row.item_name}')">Buy</button></td>
        </tr>
      </c:forEach>
    </table>
  </body>
</html>
