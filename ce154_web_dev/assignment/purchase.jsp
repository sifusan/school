<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
  <head>
    <meta charset="UTF-8">
    <title>Purchase</title>
  </head>
  <body>
    <%@include file="index.jsp"%>

    <%
      if (request.getParameter("promo_code_param").equals("") == false) {
        pageContext.setAttribute("entered_promo_code", request.getParameter("promo_code_param"));
      %>
      <sql:query dataSource="${snapshot}" var="result">
        SELECT code FROM promotion_code WHERE code = "${entered_promo_code}";
      </sql:query>
      <c:forEach var="row" items="${result.rows}">
        <c:set var="valid_promo_code" scope="page" value="${row.code}"/>
      </c:forEach>
      <%
        if (pageContext.getAttribute("entered_promo_code").equals(pageContext.getAttribute("valid_promo_code"))) {
      %>
      <sql:transaction dataSource="${snapshot}">
        <sql:update var="count">
          UPDATE inventory SET item_stock_count =
          item_stock_count - 1 WHERE item_code="${code}"
        </sql:update>

        <sql:query var="count">
          SELECT @new_order_number := (MAX(order_number) + 1) from customer_order;
        </sql:query>

        <sql:query var="count">
          select @total := round(item_price * 0.90) from inventory where item_code="${code}";
        </sql:query>

        <sql:update var="count">
          INSERT INTO customer_order VALUES
          (@new_order_number, NOW(), 0, interval 3 day +  NOW(), "${username}");
        </sql:update>

        <sql:update var="count">
          INSERT INTO order_item VALUES
          ("${code}", @total, @new_order_number, 1);
        </sql:update>
      </sql:transaction>
      <%
        } else {
      %>
        <jsp:forward page="invalid_promo.jsp"/>
      <%
        }
      } else {
      %>
      <sql:transaction dataSource="${snapshot}">
        <sql:update var="count">
          UPDATE inventory SET item_stock_count =
          item_stock_count - 1 WHERE item_code="${code}"
        </sql:update>

        <sql:query var="count">
          select @total := item_price from inventory where item_code="${code}";
        </sql:query>

        <sql:query var="count">
          SELECT @new_order_number := (MAX(order_number) + 1) from customer_order;
        </sql:query>

        <sql:update var="count">
          INSERT INTO customer_order VALUES
          (@new_order_number, NOW(), 0, interval 3 day +  NOW(), "${username}");
        </sql:update>

        <sql:update var="count">
          INSERT INTO order_item VALUES
          ("${code}", @total, @new_order_number, 1);
        </sql:update>
      </sql:transaction>

      <%
      }
      %>
      <jsp:forward page="purchase_success.jsp"/>
  </body>
</html>
