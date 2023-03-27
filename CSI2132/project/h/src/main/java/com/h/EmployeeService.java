package com.h;

import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Statement;

public class EmployeeService {
    private int essn;
    private String ename;
    private String address;
    private String erole;
    private int managerSSN;
    private int hid;

    public EmployeeService(int essn, String ename, String address, String erole, int managerSSN, int hid){
        this.essn = essn;
        this.ename = ename;
        this.address = address;
        this.erole = erole;
        this.managerSSN = managerSSN;
        this.hid = hid;
    }

    public EmployeeService(int essn, int hid){
        this.essn = essn;
    }


    public void createEmployee(){
        Connection db = new Connection();

        try(java.sql.Connection con = db.getConnection()){
            String query = "INSERT INTO hoteldb.employee(essn, ename, erole, managerssn, eaddress) VALUES (?, ?, ?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, essn);
            ps.setString(2, ename);
            ps.setString(3, erole);
            if (managerSSN == 0) {
                ps.setNull(4, java.sql.Types.INTEGER);
            } else {
                ps.setInt(4, managerSSN);
            }
            ps.setString(5, address);
            ps.executeUpdate();

            ps.close();

        } catch (Exception e) {
            throw new RuntimeException(e);
        }


        try(java.sql.Connection con = db.getConnection()){
            String query = "INSERT INTO hoteldb.worksFor(essn, hotel_fk) VALUES ("+this.essn+","+this.hid+")";

            Statement st = con.createStatement();
            st.executeUpdate(query);

            st.close();

        } catch (Exception e) {
            throw new RuntimeException(e);
        }
    }

    public void deleteEmployee(){
        Connection db = new Connection();
        try(java.sql.Connection con = db.getConnection()){
            String query = "DELETE FROM hoteldb.Employee WHERE essn= "+this.essn;

            Statement st = con.createStatement();
            st.executeUpdate(query);

            st.close();

        } catch (Exception e) {
            throw new RuntimeException(e);
        }

    }
}
