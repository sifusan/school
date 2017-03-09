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
    <table id="confirm_purchase_table">
      <tr>
        <td>
          <form>
            <p>You have selected</p>
            <%
              out.println("<span id='selected_item'>" + (String) request.getParameter("item_name") + "</span>");
            %>
            <br />
            <button type="button" onClick="location.href='purchase.jsp'">Confirm</button>
          </form>
        </td>
      </tr>
    </table>
  </body>

</html>
