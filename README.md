# アプリ名：Genau

## Overview
 - 名称：Genau
 - 目的：訓練校で学んだことと自身で調べたことを区別できる
 - 概要：訓練校の生徒が情報交換を行えるXのようなアプリ
 - ペルソナ：訓練校に通う生徒

## DateBase
 PostgreSQL

- accounts table

| name | item | type | not null | note | 
----|----|----|----|----
| user_id | ID | integer | not null | main, serial | 
| mail | メールアドレス | varchar(255) | not null | 同名不可  |
| pass | パスワード | varchar(50) | not null | -  |
| name | 名前 |  varchar(50) | not null | -  |

- articles table

| name | item | type | not null | note | 
----|----|----|----|----
| article_id | ID | integer | not null | primary key, serial |
| title | タイトル |  VARCHAR(50) | not null | - |
| content | 内容 | text | not null | - |
| user_id | ユーザーID | integer | not null | references accounts(user_id)|


# accounts table
CREATE TABLE accounts (
    user_id SERIAL PRIMARY KEY,
    mail VARCHAR(50) NOT NULL,
    pass VARCHAR(255) NOT NULL,
    name VARCHAR(50) NOT NULL
);


# articles table
CREATE TABLE articles (
    article_id SERIAL PRIMARY KEY,
    title VARCHAR(50) NOT NULL,
    content TEXT NOT NULL,
    user_id INTEGER NOT NULL REFERENCES accounts(user_id)
);

# articles table insert例
 - INSERT INTO accounts (user_id, mail, pass, name) VALUES ('1', 'a@a', 'aaa', '田中健太郎');
 - INSERT INTO accounts (user_id, mail, pass, name) VALUES ('2', 'b@b', 'bbb', '佐藤美咲');
 - INSERT INTO accounts (user_id, mail, pass, name) VALUES ('3', 'd@d', 'ddd', '中村由美子');
 - 次のシーケンス番号調整
 - ALTER SEQUENCE accounts_user_id_seq RESTART WITH 4;


# accounts table insert例
 - INSERT INTO articles (article_id, title, content, user_id) VALUES ('1', '初めてのJS', 'JavaScriptの基本文法を学びました。変数の使い方や関数の定義に苦戦しましたが、理解が進みました。', '1');
 - INSERT INTO articles (article_id, title, content, user_id) VALUES ('2', 'Python入門', 'Pythonの基礎を学びました。リストや辞書の使い方が簡単で、プログラミングの楽しさを感じています。', '2');
 - INSERT INTO articles (article_id, title, content, user_id) VALUES ('3', 'HTMLの基礎', 'HTMLで基本的なウェブページを作成しました。タグや属性の使い方が少し難しいですが、うまくいきました。', '3');
 - INSERT INTO articles (article_id, title, content, user_id) VALUES ('4', 'CSSでスタイリング', 'CSSを使ってページのデザインをカスタマイズしました。レイアウトや色の指定が楽しく、応用が効くと感じました。', '1');
 - INSERT INTO articles (article_id, title, content, user_id) VALUES ('5', 'データベース学習', 'SQLで基本的なクエリの書き方を学びました。テーブルの結合やフィルタリングに少し戸惑いました。', '1');
 - INSERT INTO articles (article_id, title, content, user_id) VALUES ('6', 'アルゴリズム入門', '簡単なアルゴリズム問題を解いてみました。効率的な解法を考えるのが面白く、頭の体操になりました。', '2');
 - INSERT INTO articles (article_id, title, content, user_id) VALUES ('7', 'Gitの使い方', 'Gitでリポジトリの管理を始めました。コミットやプッシュの操作に慣れるのが少し大変でした。', '3');
 - INSERT INTO articles (article_id, title, content, user_id) VALUES ('8', 'APIの利用', 'APIを使ってデータを取得する方法を学びました。外部サービスとの連携が便利で、実践的なスキルが身につきました。', '2');
 - INSERT INTO articles (article_id, title, content, user_id) VALUES ('9', 'エラー処理', 'プログラムのエラー処理について学びました。例外処理の使い方やデバッグが重要だと実感しました。', '1');
 - INSERT INTO articles (article_id, title, content, user_id) VALUES ('10', 'フレームワーク導入', 'Reactの基本を学びました。コンポーネントの作成や状態管理に新たな発見がありました。', '2');
 - INSERT INTO articles (article_id, title, content, user_id) VALUES ('11', 'テストの書き方', 'ユニットテストの書き方を勉強しました。テストコードを書くことで、バグの発見が容易になりそうです。', '3');
 - INSERT INTO articles (article_id, title, content, user_id) VALUES ('12', 'プロジェクト管理', 'プロジェクト管理のツールや手法について学びました。タスク管理や進捗の追跡が効率的に行えると感じました。', '3');
 - 次のシーケンス番号調整
 - ALTER SEQUENCE articles_article_id_seq RESTART WITH 11;



