/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package tubes_pbo;

//import java.sql.SQLException;
//import java.sql.Connection;
//import java.sql.DriverManager;

import java.sql.*;
import java.sql.DriverManager;

/**
 *
 * @author ASUS
 */
public class koneksi {
    
    private static Connection koneksi;
    public static Connection getKoneksi() {
        if(koneksi == null) {
            try {
                String url = "jdbc:mysql://localhost:3306/bakery";
                String user = "root";
                String password ="";
                
                DriverManager.registerDriver(new com.mysql.cj.jdbc.Driver());
                koneksi = DriverManager.getConnection(url, user, password);
                
                
            }catch (SQLException e) {
                System.out.println("Koneksi Gagal");
            }
        }
        return koneksi;
    }
    
    public static void main(String[] args) {
        // TODO code application logic here
        Login start = new Login();
        start.setVisible(true);
        }
}
