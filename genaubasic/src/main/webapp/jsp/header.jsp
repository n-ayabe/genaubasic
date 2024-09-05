<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="domain.Login"%>
<!DOCTYPE html>
<html lang="ja">

<head>
<meta charset="UTF-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<title>Header</title>
<!-- Google Fonts の接続設定 -->
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<!-- Google Fonts の読み込み -->
<link
	href="https://fonts.googleapis.com/css2?family=Righteous&display=swap"
	rel="stylesheet">
<style>
.header {
	background-color: rgba(40, 167, 69, 0.1); /* success色の薄い背景色 */
	color: #343a40; /* テキスト色をダークグレーに設定 */
	padding: 1rem; /* 上下に余白を追加 */
	position: fixed; /* ヘッダーを固定 */
	top: 0; /* 画面上部に配置 */
	width: 100%; /* 幅を全体に設定 */
	z-index: 1000; /* コンテンツより前面に表示 */
}

.header .container {
	display: flex;
	justify-content: space-between;
	align-items: center;
}

.header h1 {
	margin: 0; /* 見出しのマージンをリセット */
	font-size: 2rem; /* ヘッダーのフォントサイズを調整 */
	line-height: 2rem; /* 行の高さをフォントサイズと同じに設定 */
}

.header h1 a {
	color: #28a745; /* リンクのデフォルトの色をsuccess色に設定 */
	text-decoration: none; /* 下線を削除 */
	display: flex;
	align-items: center; /* 画像とテキストを縦に中央揃え */
}

.header h1 a img {
	margin-right: 0.5rem; /* 画像とテキストの間にスペースを追加 */
	height: 1.6rem; /* 画像の高さを設定（文字サイズの80%くらいに設定） */
	width: auto; /* 幅は自動調整 */
}

.header h1 a:hover {
	color: #28a745; /* ホバー時も色を変えないように設定 */
	text-decoration: none; /* ホバー時も下線を削除 */
}

.btn-link {
	font-size: 1rem; /* ボタンのフォントサイズを設定 */
	padding: 0.5rem 1rem; /* ボタンの内側余白を追加 */
	border: 2px solid #28a745; /* ボーダーをsuccess色に設定 */
	border-radius: 0.25rem; /* 角を丸くする */
	color: #28a745; /* テキスト色をsuccess色に設定 */
	background-color: transparent; /* 背景色を透明に設定 */
	text-align: center; /* テキストを中央揃え */
	display: inline-block; /* インラインブロックに設定 */
}

.btn-link:hover {
	background-color: #28a745; /* ホバー時の背景色をsuccess色に設定 */
	color: #fff; /* ホバー時の文字色を白に設定 */
	text-decoration: none; /* ホバー時も下線を削除 */
}

.form_area {
	display: flex; /* フレックスボックスを使用 */
	gap: 10px; /* ボタン間のスペース（必要に応じて調整） */
	align-items: center; /* ボタンを中央揃えにする（必要に応じて調整） */
}

.form_area form {
	margin: 0; /* フォームのマージンをリセット */
}
</style>
</head>
<body>
	<header class="header">
		<div class="container">
			<h1 class="righteous-regular">
				<a href="/genaubasic/jsp/index.jsp"> <img
					src="/genaubasic/img/favi/favicon_hari.ico" alt="Logo"> <!-- 画像を挿入 -->
					Genau
				</a>
			</h1>
			<!-- タブナビゲーション -->
			<nav class="nav nav-tabs">
				<%
				// セッションからログイン情報を取得
				domain.Login login = (domain.Login) session.getAttribute("login");
				if (login != null) {
				%>

				<div class="form-container">
					<div class="form_area">
						<form>
							<button type="submit" class="btn btn-success mt-4 ml-4 mr-4"><%=login.getName()%>さん
							</button>
						</form>
						<form action="/genaubasic/jsp/logout.jsp" method="get">
							<button type="submit" class="btn btn-success mt-4 ml-4 mr-4">ログアウト</button>
						</form>
						<form action="/genaubasic/articlesAll" method="get">
							<button type="submit" class="btn btn-success mt-4 ml-4 mr-4">記事一覧</button>
						</form>
						<%
						} else {
						%>
						<form action="/genaubasic/login" method="get">
							<button type="submit" class="btn btn-success mt-4 ml-4 mr-4">ログイン
							</button>
						</form>
						<form action="/genaubasic/signup" method="get">
							<button type="submit" class="btn btn-success mt-4 ml-4 mr-4">新規登録</button>
						</form>
						<form action="/genaubasic/articles" method="get">
							<button type="submit" class="btn btn-success mt-4 ml-4 mr-4">記事抜粋</button>
						</form>
						<%
						}
						%>
					</div>
				</div>
			</nav>
		</div>
	</header>

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
		integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
		crossorigin="anonymous"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"
		integrity="sha384-ZMP7rVo3mIykV+2+9J3UJ46jBk0WLaUAdn689aCwoqbBJiSnjAK/l8WvCWPIPm49"
		crossorigin="anonymous"></script>
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"
		integrity="sha384-ChfqqxuZUCnJSK3+MXmPNIyE6ZbWh2IMqE241rYiqJxyMiZ6OW/JmZQ5stwEULTy"
		crossorigin="anonymous"></script>
</body>
</html>
