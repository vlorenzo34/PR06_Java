/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

/**
 *
 * @author Daniel
 */
public class Admins {
    private String admin;
    private String password;
    
    //CONSTRUCTORES

    public Admins(String admin, String password) {
        this.admin = admin;
        this.password = password;
    }

    public Admins() {
    }
    
    //GETTERS

    public String getAdmin() {
        return admin;
    }

    public String getPassword() {
        return password;
    }
    
    //SETTERS

    public void setAdmin(String admin) {
        this.admin = admin;
    }

    public void setPassword(String password) {
        this.password = password;
    }
    
    
}
