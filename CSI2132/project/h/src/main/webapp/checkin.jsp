<%@ page import="com.h.RentalService" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.h.Connection" %>
<%@ page import="java.sql.Date" %>

<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        int cssn = Integer.parseInt(request.getParameter("cssn"));
        int bookn = Integer.parseInt(request.getParameter("bknm"));
        int essn = Integer.parseInt(request.getParameter("essn"));

        boolean bookingExists = false;
        Connection db = new Connection();
        try (java.sql.Connection con = db.getConnection()) {
            Statement st = con.createStatement();
            String query = "SELECT * FROM hoteldb.books WHERE cssn=" + cssn +"AND booking_number ="+ bookn;
            ResultSet rs = st.executeQuery(query);

            if (rs.next()) {
                bookingExists = true;
            }

            rs.close();
            st.close();

        } catch (Exception e) {throw new RuntimeException(e);}

        if(bookingExists){
            CheckinService cs = new CheckinService(bookn, cssn, essn);
            cs.checkingIn();
            <p>Customer succesfully checked in</p>
        }else{
            <p>There is no booking number for this customer</p>
        }
    }
%>