<%@ page import="com.h.EmployeeService" %>


<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        int essn = Integer.parseInt(request.getParameter("essn"));
        String addy = request.getParameter("addy");
        String erole = request.getParameter("erole");
        int hid = Integer.parseInt(request.getParameter("hid"));
        int mssn = Integer.parseInt(request.getParameter("mssn"));

        if(request.getParameter("mssn") == null || request.getParameter("mssn").isEmpty()){
            mssn = 0;
        }

        EmployeeService es = new EmployeeService(essn, fname + " " + lname, addy, erole, mssn, hid);
        es.createEmployee();
%>
    <p>Account created successfully!</p>
<%
    }

%>
