package controller;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import domain.Signup;
import service.SignupService;

@WebServlet("/signup")
public class SignupController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doPost(HttpServletRequest req, HttpServletResponse res)
			throws ServletException, IOException {

		// リクエストの文字エンコーディングをUTF-8に設定
		req.setCharacterEncoding("UTF-8");

		// フォームからタスク名、進捗状況、コメントを取得
		String mail = req.getParameter("mail");
		String pass = req.getParameter("pass");
		String name = req.getParameter("name");
		

		// Signupドメインオブジェクトを作成し、リクエストスコープに保存
		Signup signup = new Signup(mail, pass, name);
		SignupService ss = new SignupService();
		
		try {
			if (ss.addAccount(mail, pass, name)) {
				req.setAttribute("signup", signup);

				// 登録成功したら、ログイン画面へフォワード
				RequestDispatcher rd = req.getRequestDispatcher("/jsp/login.jsp");
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
        res.sendRedirect("jsp/signup.jsp");
    }

}