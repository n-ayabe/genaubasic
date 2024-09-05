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
<title>記事投稿画面</title>
<style>
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

		<h1>記事投稿画面</h1>

		<%
		domain.Login login = (domain.Login) session.getAttribute("login");
		if (login == null) {
			response.sendRedirect("/login.jsp");
			return;
		}
		%>

		<!-- 記事投稿フォーム -->
		<div class="container-fluid d-flex justify-content-center pl-2 pr-2">
			<div class="col-8 col-sm-8 border border-success p-3">
				<form action="/genaubasic/ArticleController" method="post">
					<div class="form-group">
						<label for="user_id">投稿者: <%=login.getName()%></label> <input type="hidden" id="user_id"
							name="user_id" value="<%=login.getUserId()%>">
					</div>
					<div class="form-group mt-2">
						<label for="title">タイトル</label> <input type="text" id="title" name="title"
							class="form-control" placeholder="タイトル">
					</div>
					<div class="form-group">
						<label for="content">内容</label>
						<textarea id="content" name="content" class="form-control" rows="4" placeholder="投稿内容"></textarea>
					</div>
					<div class="form-container">
						<button type="submit" class="btn btn-success mb-2">投稿</button>
					</div>
				</form>
			</div>
		</div>


		<!-- エラーメッセージの表示 -->
		<%
		if (request.getAttribute("error") != null) {
		%>
		<p style="color: red;"><%=request.getAttribute("error")%></p>
		<%
		}
		%>


		<!-- 登録済みタスクの表示
		<%
		List<Article> articles = (List<Article>) request.getAttribute("articles");
		if (articles != null && !articles.isEmpty()) {
		%>
		<h2 class="mt-5">投稿済み記事</h2>
		<table border="1">
			<tr>
				<th>記事番号</th>
				<th>タイトル名</th>
				<th>内容</th>
				<th>投稿番号</th>
			</tr>
			<%
			for (Article article : articles) {
			%>
			<tr>
				<td><%=article.getArticleId()%></td>
				<td><%=article.getTitle()%></td>
				<td><%=article.getContent()%></td>
				<td><%=article.getUserId()%></td>
			</tr>
			<%
			}
			%>
		</table>
		<%
		}
		%>
		 -->

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