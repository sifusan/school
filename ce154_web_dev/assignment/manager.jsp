<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
  <head>
    <title>Manager Home</title>
    <link rel="stylesheet" type="text/css" href="stylesheet.css">
  </head>
  <body>
    <h1>Welcome Manager</h1>
    <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
       url="jdbc:mysql://localhost/sifu"
       user="root"  password="root"/>
    <sql:query dataSource="${snapshot}" var="result">
      SELECT * from inventory;
    </sql:query>
    <table id="view_data_buttons">
      <td>
        <button onClick="location.href='inventory_view.jsp'" type="button">Inventory</button>
        <button onClick="location.href='customer_view.jsp'" type="button">Customer</button>
        <button onClick="location.href='order_view.jsp'" type="button">Orders</button>
        <button onClick="location.href='order_item_view.jsp'" type="button">Ordered Items</button>
        <button class="logout_btn" onClick="location.href='logout.jsp'" type="button">Log out</button>
      </td>
    </table>
  </body>
</html>
