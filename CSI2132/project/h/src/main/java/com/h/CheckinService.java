package com.h;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Random;

public class CheckinService {
    private int booking_number;
    private int cssn;
    private int essn;

    public CheckinService(int booking_number, int cssn, int essn){
        this.booking_number = booking_number;
        this.cssn = cssn;
        this.essn = essn;
    }

    public void checkingIn() {
        Connection db = new Connection();
        Date endDate = null ;
        int room_number = 0;


        try (java.sql.Connection con = db.getConnection()) {
            Statement s = con.createStatement();
            String q = "SELECT endDate, room_id FROM hoteldb.books WHERE booking_number =" + booking_number;
            ResultSet r = s.executeQuery(q);



            while (r.next()) {
                endDate = r.getDate("endDate");
                room_number = r.getInt("room_id");
            }

            r.close();
            s.close();
        } catch (Exception e) {
            throw new RuntimeException(e);
        }
        RentalService rent = new RentalService(cssn, essn, room_number, endDate);
        rent.insertRental();

    }

}

