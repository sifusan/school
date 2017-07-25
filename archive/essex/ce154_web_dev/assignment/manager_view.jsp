<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
  <head>
    <meta charset="UTF-8">
    <title>Manager</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css">
  </head>
  <body>
    <%@include file="manager.jsp"%>

    <sql:query dataSource="${snapshot}" var="result">
      SELECT * from manager;
    </sql:query>
    <h1> Managers </h1>
    <table class="manager_view">
      <th>Manager Number</th>
      <th>Surname</th>
      <th>Initals</th>
      <th>Firstname</th>
      <th>Password</th>
      <th>Passphrase</th>
      <c:forEach var="row" items="${result.rows}">
        <tr>
          <td><c:out value="${row.manager_number}"/></td>
          <td><c:out value="${row.surname}"/></td>
          <td><c:out value="${row.initials}"/></td>
          <td><c:out value="${row.firstname}"/></td>
          <td><c:out value="${row.passwd}"/></td>
          <td><c:out value="${row.passphrase}"/></td>
        </tr>
      </c:forEach>
    </table>
  </body>
</html>
