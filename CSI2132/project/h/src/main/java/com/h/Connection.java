package com.h;

import java.sql.*;

public class Connection {
    /*public static void main(String[] args) {
        try {
            java.sql.Connection db = DriverManager.getConnection("jdbc:postgresql://localhost:5432/project", "postgres","sailor1" );
            Statement st = db.createStatement();

            ResultSet rs = st.executeQuery("SELECT * FROM hoteldb.customer");
            while(rs.next()){
                //System.out.println(rs.getString(1)+ "\t" +rs.getString(2)+ "\t" +rs.getString(3)+ "\t" +rs.getString(4)+ "\t" +rs.getString(5));
                System.out.println(rs.getString(1));
            }
            rs.close();
            st.close();

        } catch (SQLException e) {
            System.out.println(e.getMessage());
        }
    }*/

    public java.sql.Connection getConnection() throws Exception {
        try {
            Class.forName("org.postgresql.Driver");

            return DriverManager.getConnection("jdbc:postgresql://localhost:5432/project", "postgres","sailor1" );

        } catch (Exception e) {

            throw new Exception("Could not establish connection with the Database Server: "
                    + e.getMessage());
        }

    }
}
