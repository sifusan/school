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
      if (request.getParameter("username") == null) {
      } else {
        pageContext.setAttribute(
          "customerNumberString", request.getParameter("username"));
        pageContext.setAttribute(
          "customerPasswordString", request.getParameter("password"));
      }
    %>
    <sql:query dataSource="${snapshot}" var="result">
      select * from customer where
        customer_number="${customerNumberString}" and
        passwd = MD5("${customerPasswordString}");
    </sql:query>
    <c:set var = "numResults"
      scope = "page"
      value = "${result.rowCount}"/>
    <%
      Object o = pageContext.getAttribute("numResults");
      Integer obj = new Integer(1);
      int i = obj.intValue();

      if (pageContext.getAttribute("numResults").equals(obj)) {
        String usernameID =  new String("username");
        String usernameVAL = new String(request.getParameter("username"));
        session.setAttribute(usernameID, usernameVAL);
      %>
        <jsp:forward page="loggedin.jsp"/>
        <c:set target="customer_logged_in" value="true"/>
        
        <%
          String s1 = (String) session.getAttribute("customer_logged_in");
          out.println(s1);
        %>
      <%
      } else {
        if (session.isNew() == false) {
          request.setAttribute("invalid_login", "Login failed");
        }
        else {

        }
      }
    %>
    <table id="customer_login">
      <tr>
        <td>
          <form>
            <label>Login<input type="text" name="username"/></label>
            <label>Password<input type="text" name="password"/></label>
            <label><input type="submit"/></label>
            <label name="invalid_login"></label>
          </form>
        </td>
      </tr>
    </table>

  </body>
</html>
