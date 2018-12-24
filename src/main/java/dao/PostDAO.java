package dao;

import entities.Post;

import java.sql.*;
import java.util.List;

public class PostDAO {
    private Connection connection = ManagerDAO.getConnection();
    public List<Post> getAllPost(){
        try {
            PreparedStatement ps = connection.prepareStatement("select * from posts");
            ResultSet rs = ps.executeQuery();
            return ManagerDAO.makePostsORMList(rs);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }

    public List<Post> getTenPosts(int id){
        try {
            PreparedStatement ps = connection.prepareStatement("select * from posts where posts.id > ? LIMIT 10");
            ps.setInt(1,id);
            ResultSet rs = ps.executeQuery();
            return ManagerDAO.makePostsORMList(rs);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }


    public Post getPostById(int id) {
        try {
            Statement statement = connection.createStatement();
            ResultSet rs = statement.executeQuery("select * from posts");
            while (rs.next()) {
                if (rs.getInt("id") == id) {
                    return ManagerDAO.makeORMPost(rs);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return null;
    }
}
