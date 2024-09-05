package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import dto.ArticleDTO;

public class ArticleDAO {
	
	public boolean insertArticle(ArticleDTO article) throws SQLException {
		Connection connection = null;
		PreparedStatement statement = null;

		try {
			connection = DBConnection.getConnection();
			String sql = "INSERT INTO articles (title, content, user_id) VALUES (?, ?, ?)";
			statement = connection.prepareStatement(sql);
			
			statement.setString(1, article.getTitle());
			statement.setString(2, article.getContent());
			statement.setInt(3, article.getUserId());
			int rowsInserted = statement.executeUpdate();
			return rowsInserted > 0;

		} finally {
			if (statement != null)
				statement.close();
			if (connection != null)
				connection.close();
		}
	}

    public List<ArticleDTO> getArticlesByUserId(int userId) throws SQLException {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<ArticleDTO> articles = new ArrayList<>();

        try {
            connection = DBConnection.getConnection();
            String sql = "SELECT * FROM articles WHERE user_id = ?";
            statement = connection.prepareStatement(sql);
            statement.setInt(1, userId);
            resultSet = statement.executeQuery();

            while (resultSet.next()) {
                ArticleDTO article = new ArticleDTO(
                        resultSet.getInt("article_id"),
                        resultSet.getString("title"),
                        resultSet.getString("content"),
                        resultSet.getInt("user_id"));
                articles.add(article);
            }

        } finally {
            if (resultSet != null) resultSet.close();
            if (statement != null) statement.close();
            if (connection != null) connection.close();
        }

        return articles;
    }

    public List<ArticleDTO> selectTenId(int article_id) throws SQLException {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<ArticleDTO> articlesTen = new ArrayList<>();

        try {
            connection = DBConnection.getConnection();
            String sql = "SELECT * FROM articles WHERE article_id < ?";
            statement = connection.prepareStatement(sql);
            statement.setInt(1, article_id);
            resultSet = statement.executeQuery();

            while (resultSet.next()) {
                ArticleDTO articleTen = new ArticleDTO(
                        resultSet.getInt("article_id"),
                        resultSet.getString("title"),
                        resultSet.getString("content"),
                        resultSet.getInt("user_id"));
                articlesTen.add(articleTen);
            }

        } finally {
            if (resultSet != null) resultSet.close();
            if (statement != null) statement.close();
            if (connection != null) connection.close();
        }

        return articlesTen;
    }

    public List<ArticleDTO> selectAllId(int article_id) throws SQLException {
        Connection connection = null;
        PreparedStatement statement = null;
        ResultSet resultSet = null;
        List<ArticleDTO> articlesAll = new ArrayList<>();

        try {
            connection = DBConnection.getConnection();
            String sql = "SELECT * FROM articles WHERE article_id > ?";
            statement = connection.prepareStatement(sql);
            statement.setInt(1, article_id);
            resultSet = statement.executeQuery();

            while (resultSet.next()) {
                ArticleDTO articleAll = new ArticleDTO(
                        resultSet.getInt("article_id"),
                        resultSet.getString("title"),
                        resultSet.getString("content"),
                        resultSet.getInt("user_id"));
                articlesAll.add(articleAll);
            }

        } finally {
            if (resultSet != null) resultSet.close();
            if (statement != null) statement.close();
            if (connection != null) connection.close();
        }

        return articlesAll;
    }

}
