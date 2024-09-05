<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">

<head>
<!-- Required meta tags -->
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<link rel="icon" href="/genaubasic/img/favi/favicon_hari.ico">
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
	integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
	crossorigin="anonymous">
<title>ログイン画面</title>
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

.nav-tabs {
	margin: 0;
}

</style>
</head>

<body>

	<jsp:include page="/jsp/header.jsp" />

	<div class="container">
		<h1>ログイン画面</h1>
		<!-- ログインフォーム -->
		<div class="container-fluid d-flex justify-content-center pl-2 pr-2">
			<div class="col-8 col-sm-8 border border-success">
				<form action="/genaubasic/login" method="post">
					<div class="form-group mt-2">
						<label>Email</label> <input type="mail" name="mail" class="form-control" placeholder="Email">
					</div>
					<div class="form-group">
						<label>Password</label> <input type="password" name="pass" class="form-control"
							placeholder="Password">
					</div>
					<div class="form-container">
						<button type="submit" class="btn btn-success mb-2">ログイン</button>
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