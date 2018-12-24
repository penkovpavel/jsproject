package dao;

import entities.Post;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ManagerDAO {
    private static Connection connection;
    private static PostDAO postDAO = new PostDAO();

    public static Connection getConnection(){
        try {
            if (connection == null) {
                Class.forName("com.mysql.cj.jdbc.Driver");
                connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsproject?useLegacyDatetimeCode=false&amp&serverTimezone=UTC", "root", "admin");
            }
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return connection;
    }

    public static List<Post> makePostsORMList(ResultSet rs) throws SQLException {
        List<Post> posts = new ArrayList<>();
        while (rs.next()) {
            Post post = postDAO.getPostById(rs.getInt("id"));
            posts.add(post);
        }
        return posts;
    }

    public static Post makeORMPost(ResultSet rs) {
        try {
            return new Post(
                    rs.getInt("id"),
                    rs.getString("text"));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

}
