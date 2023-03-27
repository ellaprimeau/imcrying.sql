package com.h;

import java.sql.Date;

public class Customer {
    private int cssn;
    private String cname;
    private String address;
    private Date reg_date;

    public Customer(int cssn, String cname, String address, Date reg_date){
        this.cssn = cssn;
        this.cname = cname;
        this.address = address;
        this.reg_date = reg_date;
    }
}
