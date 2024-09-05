<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="domain.Article"%>
<!DOCTYPE html>
<html lang="ja">

<head>
<!-- Required meta tags -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- リセットCSS読み込み -->
<link rel="stylesheet" href="/genaubasic/css/reset.css">
<link rel="stylesheet" type="text/css" href="/genaubasic/css/style.css">
<link rel="icon" href="/genaubasic/img/favi/favicon_hari.ico">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<title>記事一覧画面</title>
<style>
.card {
	width: 80%; /* カードの幅を80%に設定 */
	margin: 0 auto; /* カードを中央に配置 */
	border: 2px solid #28a745; /* 枠線を緑色にし、太さを2倍に設定 */
}

.form-control:focus {
	border-color: #28a745; /* 緑色に設定 */
	box-shadow: 0 0 0 0.2rem rgba(40, 167, 69, 0.25); /* グリーンのシャドウを設定 */
}

.form-container {
	display: flex;
	flex-direction: column;
	align-items: center;
}

/* ヘッダーの高さ分だけ上に余白を追加 */
body {
	padding-top: 80px; /* ヘッダーの高さに合わせて調整 */
	padding-bottom: 60px; /* フッターの高さに合わせて調整 */
}
</style>
</head>

<body>

    <jsp:include page="/jsp/header.jsp" />

    <div class="container">
		<h1>記事一覧画面</h1>

		<%
		List<Article> articles = (List<Article>) request.getAttribute("articles");
		if (articles != null && !articles.isEmpty()) {
		%>
		<h2>投稿済み記事</h2>

		<div class="container-fluid d-flex justify-content-right pl-2 pr-2">
				<form action="/genaubasic/ArticleController" method="get">
					<div class="form-container">
						<button type="submit" class="btn btn-success mb-2">記事投稿ページ</button>
					</div>
				</form>
		</div>

		<!-- ここで行を開始します -->
		<div class="row">
			<%
			for (Article article : articles) {
			%>
			<div class="col-md-4 mb-4">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title"><%=article.getTitle()%></h5>
						<h6 class="card-subtitle mb-2 text-body-secondary"><%=article.getUserId()%></h6>
						<p class="card-text"><%=article.getContent()%></p>
						<a href="#" class="card-link">記事番号: <%=article.getArticleId()%></a> <a href="#"
							class="card-link">投稿者番号: <%=article.getUserId()%></a>
					</div>
				</div>
			</div>
			<%
			}
			%>
		</div>
		<!-- 行を閉じます -->
		<%
		}
		%>
	</div>

	<jsp:include page="/jsp/footer.jsp" />
    
	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>

</body>
</html>