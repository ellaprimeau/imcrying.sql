package com.h;

public class Room {
    private int room_number;
    private int hotel_fk;
    private int capacity;
    private String view_type;
    private String room_status;
    private float price;
    private int extension;

    public Room(int room_number, int hotel_fk, int capacity, String view_type, String room_status, float price, int extension){
        this.room_number = room_number;
        this.hotel_fk = hotel_fk;
        this.capacity = capacity;
        this.view_type = view_type;
        this.room_status = room_status;
        this.price = price;
        this.extension = extension;
    }
}
