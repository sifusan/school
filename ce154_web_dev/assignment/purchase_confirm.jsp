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
    <table id="confirm_purchase_table">
      <tr>
        <td>
          <form name=confirm_purchase_form action="purchase.jsp">
            <label>You have selected</label>
            <br />
            <%
              out.println("<span id='selected_item'>" + (String) request.getParameter("item_name") + "</span>");
            %>
            <br />
            <input name="promo_code_param" type="text" placeholder="Enter promo code"/>
            <input type="submit" value="Confirm"/>
          </form>
        </td>
      </tr>
    </table>
  </body>

</html>
