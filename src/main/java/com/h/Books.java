package com.h;

public class Books {
    private int cssn;
    private int room_id;
    private int booking_number;

    public Books(int cssn, int room_id, int booking_number){
        this.room_id = room_id;
        this.cssn = cssn;
        this.booking_number = booking_number;
    }
}
