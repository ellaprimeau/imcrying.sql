<%@ page import="com.h.Connection" %>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.sql.ResultSet" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="com.h.RoomService" %>

<%
    int chain = -1;
    int rating = -1;
    double price = -1;
    int capacity = -1;
    String area = "Empty";
    Date startDate = null;
    Date endDate = null;

    if (request.getMethod().equalsIgnoreCase("post")) {

        if(request.getParameter("chain") != null && !request.getParameter("chain").isEmpty()){
            chain = Integer.parseInt(request.getParameter("chain"));
        }

        area = request.getParameter("area");

        if(request.getParameter("rating") != null && !request.getParameter("rating").isEmpty()){
            rating = Integer.parseInt(request.getParameter("rating"));
        }

        if(request.getParameter("price") != null && !request.getParameter("price").isEmpty()){
            price = Double.parseDouble(request.getParameter("price"));
        }

        if(request.getParameter("capacity") != null && !request.getParameter("capacity").isEmpty()){
            capacity = Integer.parseInt(request.getParameter("capacity"));
        }

        String startDateString = request.getParameter("startDate");
        SimpleDateFormat format = new SimpleDateFormat("yyyy-MM-dd");
        startDate = format.parse(startDateString);

        String endDateString = request.getParameter("endDate");
        endDate = format.parse(endDateString);
    }

    RoomSearch rs = new RoomSearch(chain, rating, price, capacity, area, startDate, endDate);
    ResultSet result = rs.searchRoom();

    while(result.next()){
        int room_idr = result.getInt("room_number");
        int hotel_fkr = result.getInt("hotel_fk");
        String viewr = result.getString("view_type");
        int capacityr = result.getInt("capacity");
        int pricer = result.getInt("price");

        // print the values of the columns
        out.println("Room ID: " + room_idr + " ");
        out.println("Hotel FK: " + hotel_fkr + " ");
        out.println("Room Number: " + viewr + " ");
        out.println("Capacity: " + capacityr + " ");
        out.println("Price: " + pricer + " ");

        out.println("<a href=\"selectedRoom.jsp?id=" + room_idr + "\">See Room</a>");
    }

%>
