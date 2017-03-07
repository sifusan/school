<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
<head>
  <title> Assignment Store </title>
  <link rel="stylesheet" type="text/css" href="stylesheet.css">
  <meta charset="UTF-8">
</head>
<body>
  <h1 var="page_header">Welcome to Assignment Store</h1>

  <c:set var="customer_logged_in" scope="session" value="false"/>
  <%
    String s = (String) session.getAttribute("customer_logged_in");
    out.println(s);
  %>

  <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/sifu"
     user="root"  password="root"/>

<table class="top_buttons">
  <td>
    <button onClick="location.href='assignment.jsp'"type="button">Home</button>
    <button onClick="location.href='customer_login.jsp'"type="button">Customer Login</button>
    <button onClick="location.href=''"type="button">Manager Login</button>
    <button onClick="location.href=''"type="button">Shopping Cart</button>
  </td>
</table>

<table class="left_buttons">
  <tr><td><button onClick="location.href='movies.jsp'"type="button">Movies</button></td></tr>
  <tr><td><button onClick="location.href='games.jsp'"type="button">Games</button></td></tr>
  <tr><td><button onClick="location.href='music.jsp'"type="button">Music</button></td></tr>
  <tr><td><button onClick="location.href='books.jsp'"type="button">Books</button></td></tr>
</table>

  </body>
</html>
