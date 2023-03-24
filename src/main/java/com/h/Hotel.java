package com.h;

public class Hotel {
    private int hotel_id;
    private int chain_fk;
    private float rating;
    private int number_ofrooms;
    private String address;
    private String area;



    public Hotel(int hotel_id, int chain_fk, float rating, int number_ofrooms, String address, String area){
        this.hotel_id = hotel_id;
        this.chain_fk = chain_fk;
        this.rating = rating;
        this.number_ofrooms = number_ofrooms;
        this.address = address;
        this.area = area;
    }
}
