package servlets;

import dao.QuestionDAO;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/ask")
public class AskServlet extends HttpServlet {
    private QuestionDAO questionDAO = new QuestionDAO();
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.getRequestDispatcher("/views/ask.jsp")
                .forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        try {
            questionDAO.addQ(req);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        req.getRequestDispatcher("/views/mainpage.jsp")
                .forward(req, resp);
    }
}
