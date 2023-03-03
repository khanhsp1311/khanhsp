/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package dal;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.time.LocalDate;
import java.time.Year;
import java.util.ArrayList;
import java.util.List;
import javax.xml.bind.DatatypeConverter;
import model.Material;
import model.Role;
import model.Subject;
import model.User;

/**
 *
 * @author DELL
 */
public class UserDAO extends DBContext {
    
    public boolean isYearValid(int year) {
        int currentYear = LocalDate.now().getYear();
        return Year.of(year).isBefore(Year.of(currentYear));
    }
    public User login(String email, String password) { // day la kiem tra xem co so dien thoai trung ko: tuc la phone_number la khoa
        String sql = "select * from users where uemail = ? "
                + "and upwad = ?";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            st.setString(2, getMd5(password));
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
                Role r = getRoleById(rs.getInt("roleID"));
                    return new User(rs.getInt("id"), rs.getString("uname"), rs.getString("upwad"), rs.getString("uemail"),
                        rs.getString("umobile"),r);
            }
        } catch (Exception e) {
        }
        return null;
    }
    
     public Role getRoleById(int id) { // id này là của category id bên trong sản phầm products
        String sql = "select * from role where id = ?"; // chú ý sửa chỗ này

        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setInt(1, id);                           // chú ý sửa chỗ này
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                Role r = new Role();
                // lay bang id cua product
                // lấy ra cái tên thương hiệu của sản phẩm đấy
                r.setName(rs.getString("name"));
                return r;
            }
        } catch (Exception e) {
        }
        return null;
    }
    
    public void insert(User u) {
        String sql = "insert into users(uname,upwad,uemail,umobile,roleID) values(?,?,?,?,?)";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, u.getUname());
            st.setString(2, getMd5(u.getUpwad()));
            st.setString(3, u.getUemail());
            st.setString(4, u.getUmobile());
            
            st.setInt(5, u.getRoleID2());
            st.executeUpdate();
        } catch (SQLException e) {
            System.out.println(e);
        }
    }
    
     public User login2(String email, String phone_number) { // day la kiem tra xem co so dien thoai trung ko: tuc la phone_number la khoa
        String sql = "select * from users where uemail = ? or umobile = ? ";
        try {
            PreparedStatement st = connection.prepareStatement(sql);
            st.setString(1, email);
            st.setString(2, phone_number);
            ResultSet rs = st.executeQuery();
            if (rs.next()) {
//               return new User(rs.getInt("userId"), rs.getString("fullname"),email , rs.getString("phone_number"), rs.getString("address"), rs.getString("password"), rs.getDate("created_at"), rs.getInt("roleId"),rs.getDate("updated_at"), rs.getInt("deleted"));
               return new User(rs.getString("uname"), rs.getString("upwad"), rs.getString("uemail"),
                        rs.getString("umobile"),rs.getInt("roleID"));
            }  
        } catch (Exception e) {
        }
        return null;
    }
     
       public User getUserById(String email) {
        String sql = "select * from users where uemail = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            ps.setString(1, email);                           // chú ý sửa chỗ này
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                User u = new User();
                Role r = getRoleById(rs.getInt("roleID"));
                    return new User(rs.getInt("id"), rs.getString("uname"), rs.getString("upwad"), rs.getString("uemail"),
                        rs.getString("umobile"),r);
            }
        } catch (Exception e) {
        }
        return null;
    }
       
 /*
       lúc mình insert thì mình phải mã hóa nó đã
       lúc nó đăng nhập thì mình lấy cái mật khẩu đã mã hóa
       */
       public String getMd5(String input) 
    { 
        try { 
            // Static getInstance method is called with hashing MD5 
            MessageDigest md = MessageDigest.getInstance("MD5"); 
  
            // digest() method is called to calculate message digest 
            //  of an input digest() return array of byte 
            byte[] messageDigest = md.digest(input.getBytes()); 
  
            // Convert byte array into signum representation 
            BigInteger no = new BigInteger(1, messageDigest); 
  
            // Convert message digest into hex value 
            String hashtext = no.toString(16); 
            while (hashtext.length() < 32) { 
                hashtext = "0" + hashtext; 
            } 
            return hashtext; 
        }  
        // For specifying wrong message digest algorithms 
        catch (NoSuchAlgorithmException e) { 
            throw new RuntimeException(e); 
        } 
    }
       
        public int countTotalMaterials(String active){
        String sql = "SELECT count(*) FROM materials where 1=1 ";
            if(active != null){
                // nếu active khác null thì sẽ chuyển vào là 1 và lấy status = 1
                // nếu id = "" thì sẽ là admin
           sql += "and status = 1";
            }
            int count = 0;
        try {
              PreparedStatement ps = connection.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                count = rs.getInt(1);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return count;
            
        
    }
        
        public List<Material> getAllMateriallBySjCode(String sjcode,String active, int index, int size) {
        List<Material> list = new ArrayList<>();
        String sql = "select * from Materials where 1=1";
        if (sjcode != null && !sjcode.equals("")) {
            sql += " and subject_code = " + sjcode;
        }
        if(active != null){
            sql += " and status = 1";
        }
        sql += " order by id asc limit " + (index - 1) * size + "," + size;
        
        try {
            PreparedStatement ps = connection.prepareStatement(sql);
            // thiếu subject code
//            ps.setString(1, sjcode);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Material m = new Material();

                list.add(new Material(rs.getInt(1), rs.getString(2), rs.getString(3),
                        rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7),
                        rs.getInt(8),
                        rs.getInt(9), rs.getInt(10),
                        rs.getString(11), getSubject(rs.getString(12)), rs.getInt(13)));

            }
        } catch (Exception e) {
            System.out.println(e);
        }
        return list;
    }
        
        public Subject getSubject(String xSjCode) {

        String sql = "select * from Subjects where subject_code = ?";
        try {
            PreparedStatement ps = connection.prepareStatement(sql);

            ps.setString(1, xSjCode);
            ResultSet rs = ps.executeQuery();

//    private int id;
//    private String subject_Code;
//    private String subject_Name;
//    private String description;
//    private int no_credit;
//    private String degree_level;
//    private int combo_id;
//    private boolean status;
            if (rs.next()) {
                return new Subject(rs.getInt(1),
                        rs.getString(2),
                        rs.getString(3),
                        rs.getString(4),
                        rs.getInt(5), rs.getString(6), rs.getInt(7), rs.getBoolean(8));
            }
        } catch (Exception e) {
        }
        return null;
    }

    
    public static void main(String args[]) {
            UserDAO ud = new UserDAO();
//            uname,upwad,uemail,umobile,roleID
//       User u = new User("khanh hoan", "123456", "hoang123@gmail.com", "0123456788", 1);
//       u = ud.getUserById("khanhddqhe161879@fpt.edu.vn");
//        System.out.println("login cua user: " +u.toString());
            System.out.println("Your password generated by MD5: "+ud.getMd5("123456"));
            System.out.println("Your password generated by MD5: "+ud.getMd5("12345"));
            String value = null;
//            if(value != null){
//                value = "oke";
//            }
//            System.out.println(value);
//            System.out.println("your count = "+ud.countTotalMaterials(null)); // admin
//            ud.insert(u);
//        System.out.println("login: "+ud.login("hoang123@gmail.com", "123456"));
          List<Material> list = ud.getAllMateriallBySjCode("",null,2, 6);
         
        for (Material material : list) {
            System.out.println(material.toString());
        }

    } 
}
