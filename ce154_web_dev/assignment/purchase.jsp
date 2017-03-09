<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
  <head>
    <script>
    </script>
    <title>Purchase</title>
  </head>
  <body>
    <%@include file="index.jsp"%>
    <%
      pageContext.setAttribute("code", request.getParameter("item_code"));
      pageContext.setAttribute("name", request.getParameter("item_name"));
      pageContext.setAttribute("username", session.getAttribute("usernameID"));
    %>
    <c:catch var="transactionException">
      <sql:transaction dataSource="${snapshot}">
        <sql:update var="count">
          update inventory set item_stock_count =
          item_stock_count - 1 where item_code="${code}"
        </sql:update>

        <sql:query var="greatest_order_number">
          SELECT MAX(order_number) FROM customer_order);
        </sql:query>

        <sql:update var="count">
          insert into customer_order values
          (${greatest_order_number} + 1, NOW(), 0, INTERVAL 3 DAY + NOW());
        </sql:update>

        <sql:update var="count">
          insert into order_item

      </sql:transaction>
    </c:catch>

    <table id="confirm_purchase_table">
      <tr>
        <td>
          <form>
            <p>You have selected</p>
            <%
              out.println("<span id='selected_item'>" + (String) request.getParameter("item_name") + "</span>");
            %>
            <br />
            <button type="button" onClick="location.href='purchase_success.jsp'">Confirm</button>
          </form>
        </td>
      </tr>
    </table>
  </body>

</html>
