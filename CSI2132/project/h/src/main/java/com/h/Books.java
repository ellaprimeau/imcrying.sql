package com.h;

import java.sql.Date;

public class Books {
    private int cssn;
    private int room_id;
    private int booking_number;
    private Date startDate;
    private Date endDate;

    public Books(int booking_number, int cssn, int room_id, Date startDate, Date endDate){
        this.room_id = room_id;
        this.cssn = cssn;
        this.booking_number = booking_number;
        this.startDate = startDate;
        this.endDate = endDate;
    }

    public void insertBooking(){

    }
}
