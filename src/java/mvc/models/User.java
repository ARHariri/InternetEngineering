/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mvc.models;

/**
 *
 * @author sajad
 */
public class User {
    private String username;
    private String password;
    private String type;
    
    public User(String usr, String pwd, String type){
        this.username = usr;
        this.password = pwd;
        this.type = type;
    }
    
}
