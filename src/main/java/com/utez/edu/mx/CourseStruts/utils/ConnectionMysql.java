package com.utez.edu.mx.CourseStruts.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.ResourceBundle;

public class ConnectionMysql {

    private static String ipAddress;
    private static String dbName;
    private static String user;
    private static String password;
    private static String service;
    private static ResourceBundle propiedadesBD;
    public static Connection getConnection() throws SQLException {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
        } catch(ClassNotFoundException e) {
            e.printStackTrace();
        }

        if( propiedadesBD == null ) {
            propiedadesBD = ResourceBundle.getBundle("DataConnection");
            ipAddress = propiedadesBD.getString("ip_address");
            dbName = propiedadesBD.getString("db_name");
            user = propiedadesBD.getString("user");
            password = propiedadesBD.getString("password");
            service = propiedadesBD.getString("service");
        }




        return DriverManager.getConnection("jdbc:mysql://"+ipAddress+":"+service+"/"+dbName,user,password);
    }

    public static void main(String [] args){
        try{
            Connection con = getConnection();
            System.out.println("Conexion efectuada...");
            con.close();
        }catch(SQLException e){
            e.printStackTrace();
        }
    }
}
