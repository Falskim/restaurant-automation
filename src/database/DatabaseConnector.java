/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package database;

import java.sql.*;

/**
 *
 * @author Axioo
 */
public class DatabaseConnector {

    final private String DRIVER = "com.mysql.jdbc.Driver";
    final private String URL = "jdbc:mysql://localhost:3306/";
    final private String DB = "kasir";
    final private String USER = "root";
    final private String PASS = "";
    
    private ResultSet rs;
    private Statement st;
    private Connection con;
    private String query;
    
    public DatabaseConnector() {
        try{
            Class.forName(DRIVER);
            con = DriverManager.getConnection(URL, USER, PASS);
            st = con.createStatement();
            creatingDatabase();
            System.out.println("Database Connected");
        }catch(Exception e){
            System.err.println("Database Failed to Connect");
            e.printStackTrace();
        }
    }
    //Membuat database baru, apabila database belum ada sebelumnya.
    //Jika sudah ada, maka proses pembuatan database pada method ini
    //Akan dibatalkan
    private void creatingDatabase(){
        query = "USE " + DB;
        try{
            st.execute(query);
            System.out.println("Database " + DB + " is ready");
        }catch(SQLException e){
            System.out.println("Database " + DB + " doesn't exist, creating now");
            query = "CREATE DATABASE " + DB;
            try{
                st.execute(query);
                System.out.println("Database " + DB + " created successfuly");
            }catch(SQLException er){
                System.err.println("Failed to Create Database " + DB);
            }
        }
    }
    
    public static void main(String[] args){
        DatabaseConnector run = new DatabaseConnector();
    }
    
}
