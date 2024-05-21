/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import model.Products;

/**
 *
 * @author admin
 */
public class ProductsDAO extends DBContext {

    public List<Products> getAllProduct() {
        List<Products> list = new ArrayList<>();
        String sql = "select * from Products";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Products(rs.getInt(1), rs.getString(2),
                        rs.getString(3), rs.getInt(4),
                        rs.getString(5),
                        rs.getInt(6), rs.getInt(7), rs.getInt(8)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }
    public List<Products> getAllProductByDesc() {
        List<Products> list = new ArrayList<>();
        String sql = "select * from Products order by ID desc";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Products(rs.getInt(1), rs.getString(2),
                        rs.getString(3), rs.getInt(4),
                        rs.getString(5),
                        rs.getInt(6), rs.getInt(7), rs.getInt(8)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Products> getProductByCategoryID(String cid) {
        List<Products> list = new ArrayList<>();
        String sql = "select * from Products where CategoryID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, cid);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Products(rs.getInt(1), rs.getString(2),
                        rs.getString(3), rs.getInt(4),
                        rs.getString(5), rs.getInt(6),
                        rs.getInt(7), rs.getInt(8)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Products> searchProductByName(String search) {
        List<Products> list = new ArrayList<>();
        String sql = "select * from Products where Name like ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, "%" + search + "%");
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Products(rs.getInt(1), rs.getString(2),
                        rs.getString(3), rs.getInt(4), rs.getString(5),
                        rs.getInt(6),
                        rs.getInt(7), rs.getInt(8)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }
    public List<Products> searchProductByPrice(int price) {
        List<Products> list = new ArrayList<>();
        String sql = "select * from Products where Price = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, price );
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Products(rs.getInt(1), rs.getString(2),
                        rs.getString(3), rs.getInt(4), rs.getString(5), 
                        rs.getInt(6), rs.getInt(7), rs.getInt(8)));
            }
        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public void insertProduct(String name, String des, int price, String image, int quantity, int categoryId, int adminId) {
        String sql = "INSERT INTO [dbo].[Products] ([Name], [Description], "
                + "[Price], [Image], [Quantity], "
                + "[CategoryID], [AdminUserID])\n"
                + "VALUES\n"
                + "    (?, ?, ?, ?, ?, ?, ?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, des);
            st.setInt(3, price);
            st.setString(4, image);
            st.setInt(5, quantity);
            st.setInt(6, categoryId);
            st.setInt(7, adminId);
            st.executeUpdate();
        } catch (SQLException e) {
            System.err.println(e);
        }
    }

    public void updateProduct(String name, String description, int price, String image, int quantity, int id) {
        String sql = "UPDATE [dbo].[Products]\n"
                + "   SET [Name] = ?\n"
                + "      ,[Description] = ?\n"
                + "      ,[Price] = ?\n"
                + "      ,[Image] = ?\n"
                + "      ,[Quantity] = ?\n"
                + " WHERE ID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, name);
            st.setString(2, description);
            st.setInt(3, price);
            st.setString(4, image);
            st.setInt(5, quantity);
            st.setInt(6, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.err.println(e);
        }
    }

    public Products getproductByID(String id) {
        String sql = "SELECT p.*\n"
                + "FROM Products p\n"
                + "JOIN Users u ON p.AdminUserID = u.ID\n"
                + "WHERE p.ID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return new Products(rs.getInt(1), rs.getString(2),
                        rs.getString(3), rs.getInt(4),
                        rs.getString(5), rs.getInt(6),
                        rs.getInt(7), rs.getInt(8));
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return null;
    }

    public List<Products> productByID(String id) {
        List<Products> list = new ArrayList<>();
        String sql = "select * from Products where ID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Products(rs.getInt(1), rs.getString(2),
                        rs.getString(3), rs.getInt(4),
                        rs.getString(5), rs.getInt(6),
                        rs.getInt(7), rs.getInt(8)));
            }

        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public int AllProduct() {
        String sql = "select count(*) from Products";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }

        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public List<Products> pagingProduct(int index) {
        List<Products> list = new ArrayList<>();
        String sql = "select * from Products\n"
                + "order by ID\n"
                + "OFFSET ? ROWS FETCH NEXT 8 ROWS ONLY";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, (index - 1) * 8);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Products(rs.getInt(1), rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4), rs.getString(5),
                        rs.getInt(6), rs.getInt(7), rs.getInt(8)));
            }

        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public List<Products> productByUserID(String id) {
        List<Products> list = new ArrayList<>();
        String sql = "SELECT p.*\n"
                + "FROM Products p\n"
                + "JOIN Users u ON p.AdminUserID = u.ID\n"
                + "WHERE u.ID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                list.add(new Products(rs.getInt(1), rs.getString(2),
                        rs.getString(3), rs.getInt(4),
                        rs.getString(5), rs.getInt(6),
                        rs.getInt(7), rs.getInt(8)));
            }

        } catch (SQLException e) {
            System.out.println(e);
        }

        return list;
    }

    public void delete(String id) {
        String sql = "DELETE FROM [dbo].[Products]\n"
                + "      WHERE ID = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, id);
            st.executeUpdate();
        } catch (SQLException e) {
            System.err.println(e);
        }
    }

    public int countProductByCId(int name) {
        String sql = "select count(*) as [statistics] from Products where CategoryID = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setInt(1, name);
            ResultSet rs = st.executeQuery();
            while (rs.next()) {
                return rs.getInt("statistics");
            }
        } catch (SQLException e) {
            System.out.println(e);
        }
        return 0;
    }

    public static void main(String[] args) {
        ProductsDAO dao = new ProductsDAO();
        int name = 1;
        System.err.println(dao.countProductByCId(name));
    }
}
