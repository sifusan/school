<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
  <head>
    <title>Promo Code View</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css">
  </head>
  <body>
    <%@include file="manager.jsp"%>

    <sql:query dataSource="${snapshot}" var="result">
      SELECT * from promotion_code;
    </sql:query>
    <h1> Promo Code </h1>
    <table class="manager_view">
      <th>Code</th>
      <th>Discount</th>
      <c:forEach var="row" items="${result.rows}">
        <tr>
          <td><c:out value="${row.code}"/></td>
          <td><c:out value="${row.discount}"/></td>
        </tr>
      </c:forEach>
    </table>
  </body>
</html>
