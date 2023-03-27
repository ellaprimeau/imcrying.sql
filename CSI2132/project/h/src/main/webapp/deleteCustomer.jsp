<%@ page import="com.h.CustomerService" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.h.Connection" %>
<%@ page import="java.sql.Date" %>

<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        String fname = request.getParameter("fname");
        String lname = request.getParameter("lname");
        int cssn = Integer.parseInt(request.getParameter("cssnd"));

        CustomerService cs = new CustomerService(cssn, fname + " " + lname);

        boolean customerExists = false;
        Connection db = new Connection();

        try (java.sql.Connection con = db.getConnection()) {
            Statement st = con.createStatement();
            String query = "SELECT * FROM hoteldb.customer WHERE cssn=" + cssn;
            ResultSet rs = st.executeQuery(query);

            if (rs.next()) {
                customerExists = true;
            }

            rs.close();
            st.close();

        } catch (Exception e) {
            throw new RuntimeException(e);
        }

        if (customerExists) {
            cs.deleteCustomer();
            %>
            <p>Account deleted successfully!</p>
            <%
        } else {
            %>
            <p>Customer with CSSN <%= cssn %> does not exist.</p>
            <%
        }

    }
%>
