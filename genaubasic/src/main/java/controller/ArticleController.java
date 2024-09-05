package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.Article;
import service.ArticleService;

@WebServlet("/ArticleController")
public class ArticleController extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private ArticleService articleService = new ArticleService();

	protected void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");

		String title = req.getParameter("title");
		String content = req.getParameter("content");
		int userId = Integer.parseInt(req.getParameter("user_id"));

		try {
			boolean isSuccess = articleService.addArticle(title, content, userId);

			if (isSuccess) {
				List<Article> articles = articleService.getArticlesByUser(userId);
				req.setAttribute("articles", articles);
				RequestDispatcher rd = req.getRequestDispatcher("/jsp/articleConfirm.jsp");
				rd.forward(req, res);
			} else {
				req.setAttribute("error", "タスクの登録に失敗しました");
				RequestDispatcher rd = req.getRequestDispatcher("/jsp/articlePost.jsp");
				rd.forward(req, res);
			}
		} catch (SQLException e) {
			throw new ServletException(e);
		}
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse res)
	        throws ServletException, IOException {
	    res.sendRedirect("jsp/articlePost.jsp"); // リダイレクトする
	}

}