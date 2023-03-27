package com.h;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;

public class RoomSearch {
    private int chain;
    private int rating;
    private double price;
    private int capacity;
    private String area;
    private Date startDate;
    private Date endDate;

    public RoomSearch(int chain, int rating, double price, int capacity, String area, Date start, Date end){
        this.chain = chain;
        this.rating = rating;
        this.price = price;
        this.capacity = capacity;
        this.area = area;
        this.startDate = start;
        this.endDate = end;
    }
    public ResultSet searchRoom() {
        Connection db = new Connection();

        ResultSet rs;
        try (java.sql.Connection con = db.getConnection()) {
            Statement st = con.createStatement();

            StringBuilder q = new StringBuilder("SELECT * FROM hoteldb.room WHERE room_status = 'Available'");

            if (this.chain != -1) {
                q.append(" AND hotel_fk IN (SELECT hotel_id FROM hoteldb.hotel WHERE chain_fk =").append(this.chain).append(")");
            }

            if (this.rating != -1) {
                q.append(" AND rating >= ").append(this.rating);
            }

            if (this.price != -1) {
                q.append(" AND price <= ").append(this.price);
            }

            if (this.capacity != -1) {
                q.append(" AND capacity >= ").append(this.capacity);
            }

            if (this.area.equals(" ")) {
                q.append(" AND hotel_fk IN (SELECT hotel_id FROM hoteldb.hotel WHERE area = '").append(this.area).append("')");
            }

            q.append(";");
            String query = q.toString();

            rs = st.executeQuery(query);

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        return rs;
    }
}

/*RoomService rs = new RoomService(chain, rating, price, capacity, area, startDate, endDate);
        ResultSet result = rs.searchRoom();

        while(result.next()){
            int room_idr = result.getInt("room_number");
            int hotel_fkr = result.getInt("hotel_fk");
            String viewr = result.getString("view_type");
            int capacityr = result.getInt("capacity");
            int pricer = result.getInt("price");

            // print the values of the columns
            out.println("Room ID: " + room_idr + "<br>");
            out.println("Hotel FK: " + hotel_fkr + "<br>");
            out.println("Room Number: " + viewr + "<br>");
            out.println("Capacity: " + capacityr + "<br>");
            out.println("Price: " + pricer + "<br>");

            <a href="selectedRoom.jsp?id=<%=room_idr%></a>


        }*/

