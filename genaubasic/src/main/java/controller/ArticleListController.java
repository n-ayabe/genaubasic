package controller;

import java.io.IOException;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import domain.Article;
import service.ArticleService;

@WebServlet("/articlesAll")
public class ArticleListController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private ArticleService articleService = new ArticleService();


    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        try {
            List<Article> articlesAll = articleService.selectAll(0); // 任意の条件に変更可能
            if (articlesAll == null || articlesAll.isEmpty()) {
                request.setAttribute("message", "表示する記事がありません。");
            } else {
                request.setAttribute("articlesAll", articlesAll);
            }
            request.getRequestDispatcher("/jsp/articleAll.jsp").forward(request, response);
        } catch (SQLException e) {
            e.printStackTrace();
            request.setAttribute("error", "データベースエラーが発生しました。");
            request.getRequestDispatcher("/jsp/index.jsp").forward(request, response);
        }
    }
}