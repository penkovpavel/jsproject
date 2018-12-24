package dao;

import entities.Question;

import javax.servlet.http.HttpServletRequest;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class QuestionDAO {
   private Connection connection = ManagerDAO.getConnection();

   public List<Question> getAllAnswered(){
       List<Question> questions = new ArrayList<>();
       return questions;
   }

   public void addQ (HttpServletRequest request) throws SQLException {
       String email = request.getParameter("email");
       String question = request.getParameter("answer");
       PreparedStatement ps = connection.prepareStatement("insert into questions(email,text,answer,post) VALUES (?,?,?,?)");
       ps.setString(1,email);
       ps.setString(2,question);
       ps.setString(3,"");
       if(request.getParameter("post?") == null){
           ps.setInt(4,0);
       } else {
           ps.setInt(4,1);
       }
       ps.executeUpdate();
   }
}
