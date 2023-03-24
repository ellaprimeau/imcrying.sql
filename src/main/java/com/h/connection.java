package com.h;

import java.sql.*;

public class connection {
    public static void main(String[] args) throws SQLException {
        /*try {
            //Class.forName("org.postgresql.Driver");
            Connection db = DriverManager.getConnection("jdbc:postgresql://localhost:5432/project", "postgres","sailor1" );
            Statement st = db.createStatement();

            ResultSet rs = st.executeQuery("SELECT * FROM HotelDB.Room");

            while(rs.next()){
                System.out.println(rs.getString(1));
            }

            rs.close();
            st.close();

        } catch(SQLException e) {
            System.out.println(e.getMessage());
        }*/
    }

    public Connection getConnection() throws Exception {
        try {
            Class.forName("org.postgresql.Driver");
            Connection con = DriverManager.getConnection("jdbc:postgresql://localhost:5432/project", "postgres","ratspiders4ever" );
            return con;

        } catch (Exception e) {

            throw new Exception("Could not establish connection with the Database Server: "
                    + e.getMessage());
        }

    }
}
