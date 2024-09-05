package dto;

public class ArticleDTO {
	
	private int articleId;
	private String title;
	private String content;
	private int userId;
	
	public ArticleDTO(int articleId, String title, String content, int userId) {
		this.articleId = articleId;
		this.title = title;
		this.content = content;
		this.userId = userId;
	}

	public int getArticleId() {
		return articleId;
	}

	public void setArticleId(int articleId) {
		this.articleId = articleId;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public int getUserId() {
		return userId;
	}

	public void setUserId(int userId) {
		this.userId = userId;
	}

}
