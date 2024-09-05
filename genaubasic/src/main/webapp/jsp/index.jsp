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
<title>トップ画面</title>
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
	padding-top: 100px; /* ヘッダーの高さに合わせて調整 */
	padding-bottom: 60px; /* フッターの高さに合わせて調整 */
}

</style>
</head>


<body>
	<div class="container">

		<h1>トップ画面</h1>
		<h2>ようこそいらっしゃいました！</h2>

		<div class="form-container">
			<div class="form_area">
				<form action="/genaubasic/login" method="get">
					<button type="submit" class="btn btn-success mt-4 ml-4 mr-4">ログイン</button>
				</form>
				<form action="/genaubasic/signup" method="get">
					<button type="submit" class="btn btn-success mt-4 ml-4 mr-4">新規登録</button>
				</form>
				<form action="/genaubasic/articles" method="get">
					<button type="submit" class="btn btn-success mt-4 ml-4 mr-4">記事抜粋</button>
				</form>
			</div>

		</div>

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
