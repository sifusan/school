<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
  <head>
    <title>Customer View</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css">
    <meta charset="UTF-8">

  </head>
  <body>
    <%@include file="manager.jsp"%>

    <sql:query dataSource="${snapshot}" var="result">
      SELECT * from customer;
    </sql:query>
    <h1> Customers </h1>
    <table class="manager_view">
      <th>Number</th>
      <th>Surname</th>
      <th>Initials</th>
      <th>First Name</th>
      <th>Title</th>
      <th>Address 1</th>
      <th>Address 2</th>
      <th>City</th>
      <th>County</th>
      <th>Post Code</th>
      <th>Password</th>
      <th>Passphrase</th>
      <c:forEach var="row" items="${result.rows}">
        <tr>
          <td><c:out value="${row.customer_number}"/></td>
          <td><c:out value="${row.surname}"/></td>
          <td><c:out value="${row.initials}"/></td>
          <td><c:out value="${row.firstname}"/></td>
          <td><c:out value="${row.title}"/></td>
          <td><c:out value="${row.address1}"/></td>
          <td><c:out value="${row.address2}"/></td>
          <td><c:out value="${row.city}"/></td>
          <td><c:out value="${row.county}"/></td>
          <td><c:out value="${row.postcode}"/></td>
          <td><c:out value="${row.passwd}"/></td>
          <td><c:out value="${row.passphrase}"/></td>
        </tr>
      </c:forEach>
    </table>
  </body>
</html>
