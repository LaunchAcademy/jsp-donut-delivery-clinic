<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<%@page import="java.util.Map" %>
<%@page import="java.util.HashMap" %>
<!DOCTYPE html>
<html>
  <head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
  <title>JSP Donut Orders</title>
  </head>
  <body>
    <%
      Map<String, Integer> donutOrders = new HashMap<String, Integer>();
      donutOrders.put("Jennifer", 10);
      donutOrders.put("Alex", 1);
      donutOrders.put("Carly", 3);
    %>

    <h2>Donut Orders</h2>
<h2>Donut Orders</h2>
  <p><%= (new Date()).toLocaleString() %></p>
  <h3>Buy donuts for:</h3>
  <ul>
    <%
    for (Map.Entry<String, Integer> set : donutOrders.entrySet()) {
      String name = set.getKey();
      Integer quantity = set.getValue();
      String quantityDisplay;
      String favorite = "";
      if (quantity <= 5 ) {
        quantityDisplay = quantity.toString();
        donutTotal += quantity;
      } else {
        quantityDisplay = "This person is a DIRTY FREELOADER who tried to order MORE THAN 5 DONUTS. BURN THEM!!! And buy 2 measly donuts for them as RIGHTEOUS PUNISHMENT.";
        donutTotal += 2;
      }
      if (donutFavorites.containsKey(name)) {
        favorite = "(Likes " + donutFavorites.get(name) + ")";
      }
      %>
      <li><%=name%>: <%=quantityDisplay%> <%=favorite%></li>
      <%
    }
    %>
	    </ul>
	    <p>Total: <%=donutTotal%></p>

  </body>
</html>
