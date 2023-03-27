package com.h;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Random;

public class RentalService {
    private int cssn;
    private int essn;
    private Date endDate;
    private Date startDate;

    private int room_number;

    public RentalService(int cssn, int essn, int room_number, Date endDate){
        this.cssn = cssn;
        this.essn = essn;
        this.endDate = endDate;
        this.room_number = room_number;

        long millis = System.currentTimeMillis();
        this.startDate = new java.sql.Date(millis);
    }

    public void insertRental() {
        int rn = new Random().nextInt();
        Connection db = new Connection();
        try (java.sql.Connection con = db.getConnection()) {
            Statement st = con.createStatement();
            String query = "INSERT INTO hoteldb.rents(rental_number, essn, room_id, startDate, endDate, cssn) VALUES("+rn+","+this.essn+","+this.room_number+","+this.startDate+","+this.endDate+","+this.cssn+")";
            ResultSet rs = st.executeQuery(query);

            rs.close();
            st.close();

        } catch (Exception e) {throw new RuntimeException(e);}
    }
}
