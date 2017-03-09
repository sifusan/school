<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
  <head>
    <title>Purchase</title>
  </head>
  <body>
    <%@include file="index.jsp"%>
    <%
      if (session.getAttribute("username") != null) {
        pageContext.setAttribute("code", request.getParameter("item_code"));
        pageContext.setAttribute("name", request.getParameter("item_name"));
    %>
    <sql:query dataSource="${snapshot}" var="result">
      select item_stock_count from inventory where
      item_code = "${code}" and item_stock_count > 0;
    </sql:query>

    <c:set var = "item_stock_result"
      scope="page"
      value="${result.rowCount}"/>
    <%
      Integer obj = new Integer(1);
      int i = obj.intValue();

      if ((Integer)(pageContext.getAttribute("item_stock_result")) > 0) {
    %>
      <jsp:forward page="purchase.jsp"/>
    <%
      } else {
    %>
        <c:out value="testing testing"/>
    <%
    }
  } else {
  %>
    <jsp:forward page="customer_login.jsp"/>
  <%
}
%>

  </script>
</html>
