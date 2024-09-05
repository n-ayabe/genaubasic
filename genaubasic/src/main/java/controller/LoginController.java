package controller;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.DBConnection;
import domain.Article;
import domain.Login;
import service.ArticleService;

@WebServlet("/login")
public class LoginController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {

		req.setCharacterEncoding("UTF-8");

		String mail = req.getParameter("mail");
		String pass = req.getParameter("pass");

		if (mail == null || mail.isEmpty() || pass == null || pass.isEmpty()) {
			req.setAttribute("error", "ログインIDとパスワードを入力してください");
			RequestDispatcher rd = req.getRequestDispatcher("/jsp/login.jsp");
			rd.forward(req, res);
			return;
		}

		int userId = -1; // デフォルト値
		String name = null;

		Connection connection = null;
		PreparedStatement statement = null;

		try {
			connection = DBConnection.getConnection();
			String sql = "SELECT user_id, name FROM accounts WHERE mail = ? AND pass = ?";
			statement = connection.prepareStatement(sql);
			statement.setString(1, mail);
			statement.setString(2, pass);

			try (ResultSet rs = statement.executeQuery()) {
				if (rs.next()) {
					userId = rs.getInt("user_id");
					name = rs.getString("name");
				}
			}
		} catch (SQLException e) {
			e.printStackTrace(); // ログにエラーを記録
			req.setAttribute("error", "データベースエラーが発生しました");
			RequestDispatcher rd = req.getRequestDispatcher("/jsp/login.jsp");
			rd.forward(req, res);
			return;
		}

		if (userId == -1 || name == null) {
			req.setAttribute("error", "ログインIDまたはパスワードが間違っています");
			RequestDispatcher rd = req.getRequestDispatcher("/jsp/login.jsp");
			rd.forward(req, res);
			return;
		}

        try {
    		// Loginオブジェクトの作成
    		Login login = new Login(userId, mail, pass, name);
			if (login != null) {
				HttpSession sess = req.getSession();
				sess.setAttribute("login", login);
				ArticleService articleService = new ArticleService();
				List<Article> articles = articleService.getArticlesByUser(userId);
                req.setAttribute("articles", articles);
				RequestDispatcher rd = req.getRequestDispatcher("/jsp/articlePost.jsp");
				rd.forward(req, res);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		
	}

	protected void doGet(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {

		HttpSession session = req.getSession();
		session.invalidate();

		// リダイレクト処理
		res.sendRedirect("/genau01/jsp/login.jsp");

	}
}