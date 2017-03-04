<html>
  <head>
    <title>Movies</title>
    <meta charset="UTF-8">
  </head>
  <body>
    <%@include file="assignment.jsp"%>
    <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
       url="jdbc:mysql://localhost/sifu"
       user="root"  password="root"/>

    <sql:query dataSource="${snapshot}" var="result">
      SELECT * from inventory WHERE item_group="1004";
    </sql:query>
    <table class="items">
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
          <td><c:out value="${row.item_price} £"/></td>
          <td><a href="">Add to Cart</a></td>
        </tr>
      </c:forEach>
    </table>
  </body>
</html>
