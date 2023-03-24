package com.h;

public class Employee {
    private int essn;
    private String ename;
    private String erole;
    private int managerssn;
    private String address;

    public Employee(int essn, String ename, String erole, int managerssn, String address){
        this.essn = essn;
        this.ename = ename;
        this.erole = erole;
        this.managerssn = managerssn;
        this.address = address;
    }

    public Employee(int essn, String ename, String erole, String address){
        this.essn = essn;
        this.ename = ename;
        this.erole = erole;
        this.address = address;
    }
}
