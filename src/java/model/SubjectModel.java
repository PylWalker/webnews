package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Pyl Walker
 */
public class SubjectModel {
    private Connection cn;
    public SubjectModel(){
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            String url = "jdbc:mysql://127.0.0.1:3306/webnews";
            try {
                cn = DriverManager.getConnection(url, "root", "");
                System.out.println("Kết nối thành công");
            } catch (SQLException ex) {
                ex.printStackTrace();
            }
        } catch (ClassNotFoundException ex) {
            ex.printStackTrace();
        }
    }

    public Connection getCn() {
        return cn;
    }

    public void setCn(Connection cn) {
        this.cn = cn;
    }
    
    public ResultSet getSubjectList(){
        try {
            Statement st;
            st = getCn().createStatement();
            ResultSet rs = st.executeQuery("SELECT * FROM subjects");
            return rs;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;
        }
    }
    
    public int insertSubject(String subjectName){
        int result = -1;
        try{
            PreparedStatement pst = getCn().prepareStatement("INSERT INTO subjects(subjectName) VAlUES(?)");
            pst.setString(1, subjectName);
            result = pst.executeUpdate();
        } catch(SQLException ex){
            ex.printStackTrace();
        } finally{
            return result;
        }
    }
    
    public int deleteSubject(int subjectID) {
        int result = -1;
        try {
            PreparedStatement pst = cn.prepareStatement("delete from subjects where subjectID = "+subjectID);
            result = pst.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
        } finally {
            return result;
        }
    }
    
    public static void main(String[] args){
        SubjectModel sm = new SubjectModel();
    }
}
