<%@ page import="com.h.CustomerService" %>
<%@ page import="java.sql.Date" %>
<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        int cssn = Integer.parseInt(request.getParameter("cssn"));
        String addy = request.getParameter("addy");

        long millis = System.currentTimeMillis();
        java.sql.Date reg_date = new java.sql.Date(millis);

        CustomerService cs = new CustomerService(cssn, fname + " " + lname, addy, reg_date);
        cs.createCustomer();
%>
    <p>Account created successfully!</p>
<%
    }
%>
