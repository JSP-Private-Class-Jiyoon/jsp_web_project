<%@ page import="java.io.PrintWriter" %>
<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  Cookie[] cookies = request.getCookies();
  String itemName = request.getParameter("itemName");
  String cart = "";

  if (cookies != null) {
    for (Cookie c : cookies) {
      if (c.getName().equals("cart")) {
        cart = URLDecoder.decode(c.getValue(), "utf-8");
        break;
      }
    }
  }

  if (itemName.equals("commit")) {
    PrintWriter print = response.getWriter();
    print.println(URLDecoder.decode(cart, "utf-8"));
  } else if (itemName.equals("clear")) {
    Cookie cartCookie = new Cookie("cart", cart);
    cartCookie.setMaxAge(0);
    response.addCookie(cartCookie);
    response.sendRedirect("/2023.03.19/lesson/index.jsp");
  } else {
    String product = request.getParameter("itemName");
    cart += product + " / ";
    cart = URLEncoder.encode(cart, "utf-8");
    Cookie cartCookie = new Cookie("cart", cart);
    cartCookie.setMaxAge(60*60*3);
    response.addCookie(cartCookie);
    response.sendRedirect("/2023.03.19/lesson/index.jsp");
  }
%>