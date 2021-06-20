/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dao;

import context.DBContext;
import entity.Account;
import entity.Category;
import entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ADMIN
 */
public class DAO {

    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;
//lay ra tat ca
    public List<Product> getAllProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select * from product";
        try {
            conn = new DBContext().getConnection();// mo ket noi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }
//lay cac sp noi bat trong top 8
    public List<Product> getTopProduct() {
        List<Product> list = new ArrayList<>();
        String query = "select top(8) * from product\n"
                + "order by id desc";
        try {
            conn = new DBContext().getConnection();// mo ket noi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }
//lay tat ca cac category
    public List<Category> getAllNameCategory() {
        List<Category> list = new ArrayList<>();
        String query = "select top(8) * from Category";
        try {
            conn = new DBContext().getConnection();// mo ket noi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Category(
                        rs.getInt(1),
                        rs.getString(2)));
            }
        } catch (Exception e) {
        }
        return list;
    }
//show ra 1 san pham
    public Product getProductDetailbyID(String id) {
        String query = "select * from product where id=?";
        try {
            conn = new DBContext().getConnection();// mo ket noi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6));
            }
        } catch (Exception e) {
        }
        return null;
    }
//lay category theo id
    public List<Product> getProductbyCategory(String cid) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product where cateID=?";
        try {
            conn = new DBContext().getConnection();// mo ket noi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, cid);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }
//tim kiem san pham
    public List<Product> getSeachProductByName(String name) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product where [name] like ?";
        try {
            conn = new DBContext().getConnection();// mo ket noi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, "%" + name + "%");
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }
// dung de viet phan login va logout
    public Account login(String user, String pass) {
        String query = "select * from Account where [user]=? and pass=?";
        try {
            conn = new DBContext().getConnection();// mo ket noi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }
// dung de viet phan login va logout
    public Account CheckloginExist(String user) {
        String query = "select * from Account where [user]=?";
        try {
            conn = new DBContext().getConnection();// mo ket noi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }
// dung de viet phan login va logout
    public void sigUp(String user, String pass) {
        String query = "insert into Account values (?,?,0,0)";
        try {
            conn = new DBContext().getConnection();// mo ket noi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
//show product theo id nguoi quan li ban hang
    public List<Product> getProductBySellID(int id) {
        List<Product> list = new ArrayList<>();
        String query = "select * from product where sell_ID=?";
        try {
            conn = new DBContext().getConnection();// mo ket noi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, id);
            rs = ps.executeQuery();
            while (rs.next()) {
                list.add(new Product(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getDouble(4),
                        rs.getString(5),
                        rs.getString(6)));
            }
        } catch (Exception e) {
        }
        return list;
    }
/// cau lenh trong manager product
    public void deleteProductByID(String id) {
        String query = "delete from product where id=?";
        try {
            conn = new DBContext().getConnection();// mo ket noi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
/// cau lenh trong manager product
    public void addProduct(String name, String image, String price, String title, String description, String category, int sell_id) {
        String query = "INSERT [dbo].[product] ([name], [image], [price], [title], [description], [cateID], [sell_ID])\n"
                + "values(?,?,?,?,?,?,?)";
        try {
            conn = new DBContext().getConnection();// mo ket noi sql
            ps = conn.prepareStatement(query);

            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, description);
            ps.setString(5, title);
            ps.setString(6, category);
            ps.setInt(7, sell_id);

            ps.executeUpdate();

        } catch (Exception e) {
        }

    }
/// cau lenh trong manager product
    public void updateProduct(String name, String image, String price, String title, String description, String category, String pid) {
        String query = "UPDATE [dbo].[product] SET [name]=?, [image]=?, [price]=?, [title]=?, [description]=?, [cateID]=? where id=? ";
        try {
            conn = new DBContext().getConnection();// mo ket noi sql
            ps = conn.prepareStatement(query);

            ps.setString(1, name);
            ps.setString(2, image);
            ps.setString(3, price);
            ps.setString(4, description);
            ps.setString(5, title);
            ps.setString(6, category);
            ps.setString(7, pid);

            ps.executeUpdate();

        } catch (Exception e) {
        }

    }
/// lam viec voi manager admin
    public void addAccount(String user, String pass, String isSell, String isAdmin) {
        String query = "INSERT [dbo].[account] ([user], [pass], [isSell], [isAdmin])\n"
                + "values(?,?,?,?)";
        try {
            conn = new DBContext().getConnection();// mo ket noi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setString(3, isSell);
            ps.setString(4, isAdmin);
            ps.executeUpdate();

        } catch (Exception e) {
        }

    }
/// lam viec voi manager admin
    public void deleteAccount(String id) {
        String query = "delete from account where uID=?";
        try {
            conn = new DBContext().getConnection();// mo ket noi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, id);
            ps.executeUpdate();
        } catch (Exception e) {
        }
    }
/// lam viec voi manager admin
    public void updateAccount(String user, String pass, String isSell, String isAdmin, String uid) {
        String query = "UPDATE [dbo].[account] SET  [user]=?, [pass]=?, [isSell]=?, [isAdmin]=? where uID=?\n";
        try {
            conn = new DBContext().getConnection();// mo ket noi sql
            ps = conn.prepareStatement(query);

            ps.setString(1, user);
            ps.setString(2, pass);
            ps.setString(3, isSell);
            ps.setString(4, isAdmin);
            ps.setString(5, uid);

            ps.executeUpdate();

        } catch (Exception e) {
        }

    }
///cau lenh chinh sua account trong manager admin
    public Account getAccountDetailbyID(String uid) {
        String query = "select * from account where uID=?";
        try {
            conn = new DBContext().getConnection();// mo ket noi sql
            ps = conn.prepareStatement(query);
            ps.setString(1, uid);
            rs = ps.executeQuery();
            while (rs.next()) {
                return new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5));
            }
        } catch (Exception e) {
        }
        return null;
    }
    //dem so luong acount trong database dung de dem so trang
    public int getTotalAcount() {
        String query = "select count(*) from account";
        try {
            conn = new DBContext().getConnection();// mo ket noi sql
            ps = conn.prepareStatement(query);
            rs = ps.executeQuery();
            while (rs.next()) {
                return rs.getInt(1);
            }
        } catch (Exception e) {
        }
        return 0;
    }

    //phan trang khi click vao so trang
    public List<Account> pagingAccount(int index) {
        List<Account> list = new ArrayList<>();
        String query = "select * from account order by [uID] OFFSET ? ROWS FETCH NEXT 5 ROWS ONLY";
        try {
            conn = new DBContext().getConnection();// mo ket noi sql
            ps = conn.prepareStatement(query);
            ps.setInt(1, (index - 1) * 5);
            rs=ps.executeQuery();
            while (rs.next()) {
                list.add(new Account(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getInt(4),
                        rs.getInt(5)));
            }
        } catch (Exception e) {
        }
        return list;
    }
}
