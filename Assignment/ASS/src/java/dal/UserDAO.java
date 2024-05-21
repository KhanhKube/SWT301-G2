/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import model.User;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author admin
 */
public class UserDAO extends DBContext {
    
    public List<User> getAllUser() {
        String sql = "select * from Users where Admin = 1";
        List<User> list = new ArrayList();
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add( new User(rs.getInt(1), rs.getString(2),
                        rs.getString(3), rs.getString(4),
                        rs.getString(5), rs.getInt(6)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }
    
    
    public User account(String user, String pass) {
        String sql = "select * from Users where Username = ? and Password = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new User(rs.getInt(1), rs.getString(2),
                        rs.getString(3), rs.getString(4),
                        rs.getString(5), rs.getInt(6));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return null;
    }

    public User checkUser(String user, String pass) {
        String sql = "select * from Users where Username = ? and Password = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            st.setString(2, pass);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new User(rs.getInt(1), user, pass,
                        rs.getString(4), rs.getString(5), rs.getInt(6));
            }
        } catch (SQLException e) {
            System.err.println(e);
        }
        return null;
    }

    public User getUserByName(String user) {
        String sql = "select * from Users where Username = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, user);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new User(rs.getInt(1), user, rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getInt(6));
            }
        } catch (SQLException e) {
            System.err.println(e);
        }
        return null;
    }

    public User getUserByID(int id) {
        String sql = "select * from Users where ID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                return new User(id, rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getInt(6));
            }
        } catch (SQLException e) {
            System.err.println(e);
        }
        return null;
    }

    public void insertUser(String name, String pass, String email, String address) {
        String sql = "INSERT INTO Users VALUES(?,?,?,?,0,1)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, pass);
            st.setString(3, email);
            st.setString(4, address);
            st.executeUpdate();
        } catch (SQLException e) {
            System.err.println(e);
        }
    }

    public void update(String name,String pass,String email,String address,int id) {
        String sql = "  UPDATE [dbo].[Users]\n"
                + "            SET [Username] = ?\n"
                + "               ,[Password] = ?\n"
                + "			   ,[Email] = ?\n"
                + "			   ,[Address] =?\n"
                + "         WHERE ID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, pass);
            st.setString(3, email);
            st.setString(4, address);
            st.setInt(5, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.err.println(e);
        }
    }
    public void deleteUSer(int id){
        String sql = "delete Users where ID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.err.println(e);
        }
    }
}
