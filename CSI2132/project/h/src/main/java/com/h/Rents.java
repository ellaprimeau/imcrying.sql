package com.h;

import java.sql.Date;

public class Rents {
    private int rental_number;
    private int essn;
    private int room_id;
    private Date startdate;
    private Date enddate;
    private int cssn;

    public Rents(int rental_number, int essn, int room_id, Date startdate, Date enddate, int cssn){
        this.rental_number = rental_number;
        this.essn = essn;
        this.room_id = room_id;
        this.startdate = startdate;
        this.enddate = enddate;
        this.cssn = cssn;
    }
}
