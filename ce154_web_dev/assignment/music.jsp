<html>
  <head>
    <title>Music</title>
  </head>
  <body>
    <%@include file="assignment.jsp"%>

    <sql:query dataSource="${snapshot}" var="result">
      SELECT * from inventory WHERE item_group="1002";
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
          <td><c:out value="${row.item_price}"/></td>
          <td><button>Buy</button</td>
        </tr>
      </c:forEach>
    </table>
  </body>
</html>
