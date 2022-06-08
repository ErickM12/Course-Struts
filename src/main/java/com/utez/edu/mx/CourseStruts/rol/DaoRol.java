package com.utez.edu.mx.CourseStruts.rol;

import com.utez.edu.mx.CourseStruts.status.BeanStatus;
import com.utez.edu.mx.CourseStruts.utils.ConnectionMysql;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class DaoRol {
    Connection connection;
    PreparedStatement pstm;
    ResultSet rs;

    public boolean createRol (BeanRol rol) throws SQLException {
        boolean status = false;
        try{
            connection = ConnectionMysql.getConnection();
            String script = "INSERT INTO rol (name, Status_id) VALUES (?,?)";
            pstm = connection.prepareStatement(script);
            pstm.setString(1, rol.getName());
            pstm.setInt(2, rol.getStatus().getId());
            status = pstm.executeUpdate() == 1;
        }catch (SQLException ex){
            ex.printStackTrace();
        }finally {
            closeConnection();
        }

        return status;
    }

    public List<BeanRol> findAll() throws SQLException {
        List<BeanRol> roles = new ArrayList<>();
        try{
            connection = ConnectionMysql.getConnection();
            String script = "SELECT rol.id, rol.name, status.id as id_status, status.name as name_status\n" +
                    "FROM rol\n" +
                    "INNER JOIN status\n" +
                    "ON status.id = rol.Status_id;";
            pstm = connection.prepareStatement(script);
            rs = pstm.executeQuery();
            while (rs.next()){
                roles.add(new BeanRol(
                        rs.getInt("id"),
                        rs.getString("name"),
                        new BeanStatus(rs.getInt("id_status"), rs.getString("name_status"))
                ));
            }
        }catch (SQLException ex){
            ex.printStackTrace();
        }finally {
            closeConnection();
        }
        return roles;
    }

    public boolean updateRol(BeanRol rol) throws SQLException {
        boolean status = false;
        try{
            connection = ConnectionMysql.getConnection();
            String script = "UPDATE rol SET `name` = ?, `Status_id` = ? WHERE (`id` = ?);";
            pstm = connection.prepareStatement(script);
            pstm.setString(1, rol.getName());
            pstm.setInt(2, rol.getStatus().getId());
            pstm.setInt(3, rol.getId());
            status = pstm.executeUpdate() == 1;
        }catch (SQLException ex){
            ex.printStackTrace();
        }finally {
            closeConnection();
        }
        return status;
    }

    private void closeConnection() throws SQLException {
        if (rs != null){
            rs.close();
        }
        if (pstm != null){
            pstm.close();
        }
        if (connection != null){
            connection.close();
        }
    }

    public static void main(String[] args) throws SQLException {
        DaoRol dao = new DaoRol();
        System.out.println("----Actualizar----");
        BeanStatus status2 = new BeanStatus();
        status2.setId(2);
        status2.setName("Inactivo");
        BeanRol rolUpdate = new BeanRol();
        rolUpdate.setId(1);
        rolUpdate.setName("SuperAdmin");
        rolUpdate.setStatus(status2);
        if (dao.updateRol(rolUpdate)){
            System.out.println("Actualizado....");
        }else{
            System.out.println("Nanais");
        }

        for (BeanRol rol: dao.findAll()) {
            System.out.println("----Datos----");
            System.out.println("-> " + rol.getId());
            System.out.println("-> " + rol.getName());
        }




    }

}
