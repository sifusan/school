<!DOCTYPE html>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
  <head>
    <meta charset="UTF-8">
    <meta charset="UTF-8">
    <title>Manager Login</title>
  </head>
  <body>
    <%@include file="index.jsp"%>

    <%
    pageContext.setAttribute(
      "managerNumber", request.getParameter("username"));
    pageContext.setAttribute(
      "managerPassword", request.getParameter("password"));
    %>

    <sql:query dataSource="${snapshot}" var="result">
      select * from manager where
        manager_number="${managerNumber}" and
        passwd = MD5("${managerPassword}");
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
      <jsp:forward page="manager.jsp"/>
    <%
      }
    %>

    <table id="manager_login">
      <tr>
        <tr>
          <th>Login to view data</th>
        </tr>
        <td>
          <form>
            <label>Login<input type="text" name="username"/></label>
            <label>Password<input type="password"  name="password"/></label>
            <label><input type="submit"/></label>
            <label name="invalid_login"></label>
          </form>
        </td>
      </tr>
    </table>
  </body>
</html>
