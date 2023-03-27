<%@ page import="com.h.EmployeeService" %>


<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        int essn = Integer.parseInt(request.getParameter("essnd"));
        int hid = Integer.parseInt(request.getParameter("hidd"));

        EmployeeService es = new EmployeeService(essn, hid);
        es.deleteEmployee();
%>
    <p>Account deleted successfully!</p>
<%
    }
%>