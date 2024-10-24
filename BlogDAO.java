/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package isp392.blog;

import isp392.brand.BrandDTO;
import isp392.user.UserDTO;
import isp392.utils.DBUtils;
import java.sql.Connection;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ThinhHoang
 */
public class BlogDAO {

    private static final String GET_LIST_BLOG = "SELECT * FROM Blog";
    private static final String GET_BLOG_BY_ID = "SELECT * FROM Blog WHERE blogID = ?";
    private static final String GET_BLOG_TOP3_NEWEST = "SELECT TOP 3 * FROM Blog ORDER BY CreateDate DESC ";

    public List<BlogDTO> getListBlog() throws ClassCastException, SQLException, ClassNotFoundException {
        List<BlogDTO> listBlog = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_LIST_BLOG);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    int blogID = rs.getInt("BlogID");
                    int staffID = rs.getInt("StaffID");
                    String title = rs.getString("Title");
                    String description = rs.getString("Description");
                    String image = rs.getString("Image");
                    Date createDate = rs.getDate("CreateDate");
                    int status = rs.getInt("Status");
                    listBlog.add(new BlogDTO(blogID, staffID, title, image, description, createDate, status));
                }
            }
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (ptm != null) {
                ptm.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
        return listBlog;
    }

    public BlogDTO getBlogByID(int blogID) throws ClassNotFoundException, SQLException {
        BlogDTO blog = null;
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_BLOG_BY_ID);
                ptm.setInt(1, blogID);
                rs = ptm.executeQuery();
                if (rs.next()) {
                    int staffID = rs.getInt("staffID");
                    String title = rs.getString("title");
                    String image = rs.getString("image");
                    String description = rs.getString("description");
                    Date createDate = rs.getDate("createDate");
                    int status = rs.getInt("status");
                    blog = new BlogDTO(blogID, staffID, title, image, description, createDate, status);

                }
            }
        } finally {
            DBUtils.closeConnection3(conn, ptm, rs);
        }
        return blog;
    }

    public List<BlogDTO> getNewestBlog() throws ClassNotFoundException, SQLException {
        List<BlogDTO> listNewest = new ArrayList<>();
        Connection conn = null;
        PreparedStatement ptm = null;
        ResultSet rs = null;
        try {
            conn = DBUtils.getConnection();
            if (conn != null) {
                ptm = conn.prepareStatement(GET_BLOG_TOP3_NEWEST);
                rs = ptm.executeQuery();
                while (rs.next()) {
                    int blogID = rs.getInt("BlogID");
                    int staffID = rs.getInt("StaffID");
                    String title = rs.getString("Title");
                    String image = rs.getString("Image");
                    String description = rs.getString("Description");
                    Date createDate = rs.getDate("CreateDate");
                    int status = rs.getInt("Status");
                    listNewest.add(new BlogDTO(blogID, staffID, title, image, description, createDate, status));
                }
            }
        } finally {
            DBUtils.closeConnection3(conn, ptm, rs);
        }
        return listNewest;
    }

}
