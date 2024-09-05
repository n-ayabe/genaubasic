<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ja">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"
        integrity="sha384-MCw98/SFnGE8fJT3GXwEOngsV7Zt27NXFoaoApmYm81iuXoPkFOJwJ8ERdknLPMO"
        crossorigin="anonymous">
    <title>フッター</title>
    <style>
        .footer {
            background-color: rgba(40, 167, 69, 0.1); /* success色の薄い背景色 */
            color: #343a40; /* テキスト色をダークグレーに設定 */
            text-align: center; /* テキストを中央揃え */
            padding: 0.5rem; /* 上下に余白を追加 */
            position: fixed; /* フッターを固定 */
            bottom: 0; /* 画面下部に配置 */
            width: 100%; /* 幅を全体に設定 */
        }
        
        .footer a {
            color: #28a745; /* リンクの色をsuccess色に設定 */
            text-decoration: none; /* 下線を削除 */
        }
        
        .footer a:hover {
            text-decoration: underline; /* ホバー時に下線を表示 */
        }
    </style>
</head>
<body>
    <footer class="footer">
        Genau All Rights Reserved. | <a href="#" data-toggle="modal" data-target="#termsModal">利用規約</a> | <a href="#" data-toggle="modal" data-target="#privacyPolicyModal">プライバシーポリシー</a>
    </footer>

    <!-- 利用規約のモーダル -->
    <div class="modal fade" id="termsModal" tabindex="-1" role="dialog" aria-labelledby="termsModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="termsModalLabel">利用規約</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <iframe src="/genaubasic/jsp/terms.jsp" style="width: 100%; height: 500px; border: none;"></iframe>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">閉じる</button>
                </div>
            </div>
        </div>
    </div>

    <!-- プライバシーポリシーのモーダル -->
    <div class="modal fade" id="privacyPolicyModal" tabindex="-1" role="dialog" aria-labelledby="privacyPolicyModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="privacyPolicyModalLabel">プライバシーポリシー</h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <iframe src="/genaubasic/jsp/privacypolicy.jsp" style="width: 100%; height: 500px; border: none;"></iframe>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">閉じる</button>
                </div>
            </div>
        </div>
    </div>

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
