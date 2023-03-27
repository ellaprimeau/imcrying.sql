<%@ page import="com.h.RentalService" %>
<%@ page import="java.sql.*" %>
<%@ page import="com.h.Connection" %>

<%
    if (request.getMethod().equalsIgnoreCase("post")) {
        int cssn = Integer.parseInt(request.getParameter("cssnr"));
        int roomn = Integer.parseInt(request.getParameter("roomn"));
        int essn = Integer.parseInt(request.getParameter("essnr"));
        Date endDate = request.getParameter("endd");

        boolean roomAvailable = false;

        Connection db = new Connection();
        try (java.sql.Connection con = db.getConnection()) {
            Statement s = con.createStatement();
            String q = "SELECT room_status FROM hoteldb.room WHERE room_number =" + roomn;
            ResultSet r = s.executeQuery(q);

            String ra = "";

            while (r.next()) {
                ra = r.getString("room_status");
            }

            if(ra.equals("Available")){
                roomAvailable = true;
            }

            r.close();
            s.close();
        } catch (Exception e) {throw new RuntimeException(e);}

        if(roomAvailable){
            RentalService rs = new RentalService(cssn, essn, roomn, endDate);
            rs.insertRental();
            <p>Rental completed!</p>
        }else{
            <p>Room is not available</p>
        }
    }
%>
