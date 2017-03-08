<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
  <head>
    <script>
      function validate_login() {
        var x = document.forms["login_form"]["username"].value;
        if (isNaN(x)) {
          alert("Must login with customer number");
          return false;
        }
        var y = document.forms["login_form"]["password"].value;
        if (y == "") {
          alert("Password field is empty")
          return false;
        }
      }
    </script>
    <title>Customer Login</title>
  </head>
  <body>
    <%@include file="index.jsp"%>

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

      if (pageContext.getAttribute("numResults").equals(obj)) {
        String usernameID = new String("username");
        String usernameVAL = new String(request.getParameter("username"));
        session.setAttribute(usernameID, usernameVAL);
    %>
      <jsp:forward page="customer.jsp"/>
    <%
  }
    %>
    <table id="customer_login">
      <tr>
        <tr>
          <th>Login to purchase items</th>
        </tr>
        <tr></tr>
        <td>
          <form name="login_form" onsubmit="return validate_login()">
            <label>Login<input type="text" name="username"/></label>
            <label>Password<input type="password" name="password"/></label>
            <label><input type="submit"/></label>
            <label name="invalid_login"></label>
          </form>
        </td>
      </tr>
    </table>
  </body>
</html>
