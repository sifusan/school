<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<html>
  <head>
    <title>Review</title>
  </head>
  <body>
    <jsp:include page="index.jsp"/>
    <h1>Review Succeeded</h1>
    <%
      if (session.getAttribute("username") == null) {
    %>
    <jsp:forward page="customer_login.jsp"/>
    <%
      } else if (request.getParameter("rating") == null) {
    %>
    <jsp:forward page="invalid_review.jsp"/>
    <%
      } else {
        pageContext.setAttribute("user_rating", request.getParameter("rating"));
        pageContext.setAttribute("code", request.getParameter("item_code_re"));
    %>
    <sql:setDataSource var="snapshot" driver="com.mysql.jdbc.Driver"
       url="jdbc:mysql://localhost/sf16007"
       user="root" password=""/>
      <sql:transaction dataSource="${snapshot}">
        <sql:query var="count">
          SELECT @new_review_number := (MAX(review_number) + 1) from review;
        </sql:query>

        <sql:query var="count">
          SELECT @new_customer_number := (MAX(customer_number) + 1) from review;
        </sql:query>

        <sql:update var="count">
          INSERT INTO review (customer_number, item_code, rating)
          VALUES (@new_customer_number, "${code}", "${user_rating}");
        </sql:update>
      </sql:transaction>
    <%
      }
    %>
  </body>
</html>
