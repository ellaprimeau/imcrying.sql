<html>
<head>
  <title>Room Details</title>
</head>
<body>
  <h2>Room Details</h2>
  <%
    int roomNumber = Integer.parseInt(request.getParameter("room_idr"));

    Connection db = new Connection();
    try (java.sql.Connection con = db.getConnection()) {
        Statement st = con.createStatement();
            String query = "SELECT * FROM room WHERE room_number=" + roomNumber;
            ResultSet rs = st.executeQuery(query);
            rs.next();
            int hotel_fk = rs.getInt("hotel_fk");
            int capacity = rs.getInt("capacity");
            String view = rs.getString("view_type");
            double price = rs.getDouble("price");
            int extension = rs.getInt("room_extension");
            rs.close();
            st.close();

            // Get hotel address
            st = con.createStatement();
            query = "SELECT hotel_address FROM hotel WHERE hotel_id=" + hotel_fk;
            rs = st.executeQuery(query);
            rs.next();
            String hotelAddress = rs.getString("hotel_address");
            rs.close();
            st.close();

        if(exe == 0){
            out.println("Extension: Yes");
        }else{
           out.println("Extension: No");
        }

        </p>

        rs.close();

    } catch (Exception e) {throw new RuntimeException(e);}

  %>

</body>
</html>
