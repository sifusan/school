<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
  <head>
    <title>Customer Login</title>
  </head>
  <body>
    <%@include file="assignment.jsp"%>

    <%
    pageContext.setAttribute(
      "customerNumber", request.getParameter("username"));
    pageContext.setAttribute(
      "customerPassword", request.getParameter("password"));
    %>

    <sql:query dataSource="${snapshot}" var="result">
      select * from customer where
        customer_number="${customerNumber}" and
        passwd = MD5("${customerPassword}");
    </sql:query>

    <c:set var = "numResults"
      scope = "page"
      value = "${result.rowCount}"/>

    <%
      Integer obj = new Integer(1);
      int i = obj.intValue();
      out.println(i);

      if (pageContext.getAttribute("numResults").equals(obj)) {
        String usernameID = new String("username");
        String usernameVAL = new String(request.getParameter("username"));
        session.setAttribute(usernameID, usernameVAL);
    %>
      <jsp:forward page="loggedin.jsp"/>
    <%
  }
    %>
    <table id="customer_login">
      <tr>
        <td>
          <form>
            <label>Login<input type="text" name="username"/></label>
            <label>Password<input type="text"  name="password"/></label>
            <label><input type="submit"/></label>
            <label name="invalid_login"></label>
          </form>
        </td>
      </tr>
    </table>
  </body>
</html>
