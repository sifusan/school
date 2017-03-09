<html>
  <head>
    <script>
      function go_to_purchase(x) {
        localStorage.setItem("item", x);
        location.href="purchase_redirect.jsp"
      }
    </script>
    <title>Games</title>
  </head>
  <body>
    <%@include file="index.jsp"%>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    <sql:query dataSource="${snapshot}" var="result">
      SELECT * from inventory WHERE item_group="1003";
    </sql:query>
    <table class="items">
      <th></th>
      <th>Title</th>
      <th>Item Code</th>
      <th>Description</th>
      <th>Available</th>
      <th>Price</th>
      <c:forEach var="row" items="${result.rows}">
        <tr>
          <td><img src="images/${row.item_image_loc}"/></td>
          <td><c:out value="${row.item_name}"/></td>
          <td><c:out value="${row.item_code}"/></td>
          <td><c:out value="${row.item_description}"/></td>
          <td><c:out value="${row.item_stock_count}"/></td>
          <td><c:out value="${row.item_price}£"/></td>
          <td>
            <form name="books_form" action="purchase_redirect.jsp" method="GET">
              <input type="hidden" name="item_code" value="${row.item_code}"/>
              <input type="hidden" name="item_name" value="${row.item_name}"/>
              <input type="submit" value="Buy"/>
            </form>
         </td>
        </tr>
      </c:forEach>
    </table>
  </body>
</html>
