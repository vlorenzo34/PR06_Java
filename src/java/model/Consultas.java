/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Daniel
 */
public class Consultas extends Conexion{

    
    public boolean Autenticacion(String mail, String pass) throws SQLException 
    {
        Statement st = con.createStatement();
        ResultSet rs = null;
        String Consulta = "Select * from tbl_clientes";
        rs = st.executeQuery(Consulta);
        
        while(rs.next())
        {
            Clientes ai = new Clientes();
            
            ai.setEmail(rs.getString("email"));
            ai.setPassword(rs.getString("password"));
            
            if(mail.equals(ai.getEmail()) && pass.equals(ai.getPassword()))
                return true;
        }
        return false;
    }
    
    public boolean Autenticacion2(String mail, String pass) throws SQLException 
    {
        Statement st = con.createStatement();
        ResultSet rs = null;
        String Consulta = "Select * from tbl_admins";
        rs = st.executeQuery(Consulta);
        
        while(rs.next())
        {
            Admins ai = new Admins();
            
            ai.setAdmin(rs.getString("admin"));
            ai.setPassword(rs.getString("password"));
            
            if(mail.equals(ai.getAdmin()) && pass.equals(ai.getPassword()))
                return true;
        }
        return false;
    }
    
    public boolean Registro_clientes(String nombre, String apellidos, String email, String password) throws SQLException 
    {
        
        Statement st = con.createStatement();
        int rs = 0;
        String Consulta = "INSERT INTO tbl_clientes (nombre,apellidos,email,password) VALUES ('"+nombre+"','"+apellidos+"','"+email+"','"+password+"')";
        rs = st.executeUpdate(Consulta);
       if (rs !=0){
        return true;
       } else {
        return false;
       }
        
    }
    /**
    public static void main (String[] args) throws SQLException {
        Consultas con = new Consultas();
        System.out.println(con.Registro_clientes("nombre", "apellidos", "email", "password"));
    }
    **/
}
