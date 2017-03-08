<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="sql" uri="http://java.sun.com/jsp/jstl/sql" %>
<%@ taglib prefix="x" uri="http://java.sun.com/jsp/jstl/xml" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<html>
  <head>
    <script>
      window.onload = function() {
        var selected_item = localStorage.getItem("item");
        document.getElementById("selected_item").innerHTML=selected_item;
      }
    </script>
    <title>Purchase</title>
  </head>
  <body>
    <c:out value="${selected_item}"/>
    <%@include file="index.jsp"%>

    <table id="confirm_purchase_table">
      <tr>
        <td>
          <p>You have selected</p>
          <h1 id="selected_item"></h1>
          <button>Confirm</button>
        </td>
      </tr>
    </table>
  </body>

</html>
