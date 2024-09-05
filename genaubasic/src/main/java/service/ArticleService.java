package service;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dao.ArticleDAO;
import domain.Article;
import dto.ArticleDTO;

public class ArticleService {

	private ArticleDAO articleDAO = new ArticleDAO();

	public boolean addArticle(String title, String content, int userId) throws SQLException {
		ArticleDTO articleDTO = new ArticleDTO(0, title, content, userId);
		return articleDAO.insertArticle(articleDTO);
	}

    public List<Article> getArticlesByUser(int userId) throws SQLException {
        List<ArticleDTO> articleDTOs = articleDAO.getArticlesByUserId(userId);
        List<Article> articles = new ArrayList<>();
        for (ArticleDTO dto : articleDTOs) {
            Article article = new Article(dto.getArticleId(), dto.getTitle(), dto.getContent(), dto.getUserId());
            articles.add(article);
        }
        return articles;
    }

    public List<Article> selectTen(int articleId) throws SQLException {
        List<ArticleDTO> articleDTOs = articleDAO.selectTenId(articleId);
        List<Article> articlesTen = new ArrayList<>();
        for (ArticleDTO dto : articleDTOs) {
            Article articleTen = new Article(dto.getArticleId(), dto.getTitle(), dto.getContent(), dto.getUserId());
            articlesTen.add(articleTen);
        }
        return articlesTen;
    }

    public List<Article> selectAll(int articleId) throws SQLException {
        List<ArticleDTO> articleDTOs = articleDAO.selectAllId(articleId);
        List<Article> articlesAll = new ArrayList<>();
        for (ArticleDTO dto : articleDTOs) {
            Article articleAll = new Article(dto.getArticleId(), dto.getTitle(), dto.getContent(), dto.getUserId());
            articlesAll.add(articleAll);
        }
        return articlesAll;
    }

}
