package com.h;

import java.sql.Connection;
import java.sql.Date;
import java.sql.SQLException;
import java.sql.Statement;

public class CustomerService {
    private int cssn;
    private String cname;
    private String address;
    private Date reg_date;

    public CustomerService(int cssn, String cname, String address, Date reg_date){
        this.cssn = cssn;
        this.cname = cname;
        this.address = address;
        this.reg_date = reg_date;
    }

    public void createCustomer(){
        connection db = new connection();

        try(Connection con = db.getConnection()){
            Statement st = con.createStatement();
            st.executeQuery("INSERT INTO Customer(cssn, cname, caddress, reg_date) VALUES (\"+this.cssn+\",\"+this.cname+\",\"+this.address+\",\"+reg_date+\")");
        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }

    public void deleteCustomer(){
        connection db = new connection();

        try(Connection con = db.getConnection()){
            Statement st = con.createStatement();
            st.executeQuery("INSERT FROM Customer WHERE Customer.cssn ="+this.cssn);

        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }
}
