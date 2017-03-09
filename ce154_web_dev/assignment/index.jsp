<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
<head>
  <script type="text/javascript">
  </script>
  <title> Assignment Store </title>
  <link rel="stylesheet" type="text/css" href="stylesheet.css">
  <meta charset="UTF-8">
</head>
<body>
  <h1>Welcome to Assignment Store</h1>

  <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
     url="jdbc:mysql://localhost/sf16007"
     user="root" password=""/>

<table class="top_buttons">
  <td>
    <button onClick="location.href='index.jsp'"type="button">Home</button>
    <button onClick="location.href='select_login.jsp'"type="button">Login</button>
    <button class="logout_btn" onClick="location.href='logout.jsp'" type="button">Log out</button>
	  <button onClick="location.href='reset.jsp'">RESET DB </button>
    <form id="search_form" name="search_form" method="GET" action="search.jsp">
      <input type="text" placeholder="Enter search" name="search_param"/>
      <input type="submit" value="Submit"/>
    </form>

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
