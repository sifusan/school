<html>
  <head>
    <script>
      function go_to_purchase(x) {
        localStorage.setItem("item", x);
        location.href="purchase_redirect.jsp"
      }
    </script>
    <title>Movies</title>
    <meta charset="UTF-8">
  </head>
  <body>
    <%@include file="index.jsp"%>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

    <sql:query dataSource="${snapshot}" var="result">
      SELECT * from inventory WHERE item_group="1004";
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
            <form name="movies_form" action="purchase_redirect.jsp" method="GET">
              <input type="hidden" name="item_code" value="${row.item_code}"/>
              <input type="hidden" name="item_name" value="${row.item_name}"/>
              <input type="submit" value="Buy"/>
            </form>
          </td>
          <td>
            <form name="movies_review_form" action ="review.jsp" onsubmit="return no_rating()" method="GET">
              <input name="rating" type="radio" value="1">1<br />
              <input name="rating" type="radio" value="2"/>2<br />
              <input name="rating" type="radio" value="3"/>3<br />
              <input name="rating" type="radio" value="4"/>4<br />
              <input name="rating" type="radio" value="5"/>5<br />
              <input type="hidden" name="item_code_re" value="${row.item_code}"/>
              <input type="submit" value="Submit Review"/>
            </form>
          </td>
        </tr>
      </c:forEach>
    </table>
  </body>
</html>
