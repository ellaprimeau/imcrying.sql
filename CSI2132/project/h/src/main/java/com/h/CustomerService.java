package com.h;

import java.sql.Date;
import java.sql.ResultSet;
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

    public CustomerService(int cssn, String name){
        this.cssn = cssn;
        this.cname = cname;
    }

    public void createCustomer(){
        Connection db = new Connection();

        try(java.sql.Connection con = db.getConnection()){
            Statement st = con.createStatement();
            String query = "INSERT INTO hoteldb.customer(cssn, cname, caddress, reg_date) VALUES (" + this.cssn + ",'" + this.cname + "','" + this.address + "','" + this.reg_date + "')";
            st.executeUpdate(query);

            st.close();

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public void deleteCustomer(){
        Connection db = new Connection();

        try(java.sql.Connection con = db.getConnection()){
            Statement st = con.createStatement();
            String query = "DELETE FROM hoteldb.customer WHERE cssn =" + this.cssn;
            st.executeUpdate(query);

            st.close();

        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }
}
