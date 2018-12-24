package servlets;


import dao.PostDAO;
import entities.Post;
import org.json.JSONArray;
import org.json.JSONObject;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;


@WebServlet("/news")
public class NewsServlet extends HttpServlet {
    private PostDAO postDAO = new PostDAO();
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        int lastId = Integer.parseInt(req.getParameter("lastid"));
        List<Post> posts = postDAO.getTenPosts(lastId);
        System.out.println(posts.get(0).getText());
        JSONArray ja = new JSONArray();
        for (Post post : posts) {
            JSONObject postJson = new JSONObject();
            postJson.put("id", post.getId());
            postJson.put("text", post.getText());
            ja.put(postJson);
        }
        JSONObject jo = new JSONObject();
        jo.put("posts", ja);

        resp.setContentType("text/json");
        resp.getWriter().println(jo.toString());
    }

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/views/news.jsp")
                .forward(req, resp);
    }
}
