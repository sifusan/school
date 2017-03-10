<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
  <head>
    <title>Reviews</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css">
  </head>
  <body>
    <%@include file="manager.jsp"%>

    <sql:query dataSource="${snapshot}" var="result">
      SELECT * from review;
    </sql:query>
    <h1> Reviews</h1>
    <table class="manager_view">
      <th>Review Number</th>
      <th>Customer Number</th>
      <th>Item Code</th>
      <th>Rating</th>
      <c:forEach var="row" items="${result.rows}">
        <tr>
          <td><c:out value="${row.review_number}"/></td>
          <td><c:out value="${row.customer_number}"/></td>
          <td><c:out value="${row.item_code}"/></td>
          <td><c:out value="${row.rating}"/></td>
        </tr>
      </c:forEach>
    </table>
  </body>
</html>
