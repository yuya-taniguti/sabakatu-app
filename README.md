<<<<<<< HEAD
 # アプリケーション名
  「SABAKATU・サバカツ」

 # アプリケーション概要
   サバゲーをしたい人とマッチングしたり、お店や施設等を検索できる複合的なアプリケーションです。

 # URL
   https://sabakatu-app.herokuapp.com/

 # テスト用アカウント
   メールアドレス: test@test
   パスワード: test01

# 利用方法
  ユーザーA側: 自身の参加する日等をチャット画面に記述して同行者を募集します。  
  ユーザーB側: 自身の参加したい日のチャット画面に遷移してコメントを投稿して、一緒に参加する。  
  共通 : ショップの一覧をみれたり、サバゲーのフィールドを検索できたり、写真を投稿することができる。

# 制作背景
  サバゲーをしたい初心者には、中々一人では参加しいくい傾向があるので、一緒に参加できる人と参加してサバゲーを始めやすくすることを目指しました。

# 洗い出した要件

| 優先順位  (高：3、中：2、低：1) | 機能 | 目的 | 詳細 | ストーリー(ユースケース) | 見積もり（所要時間） |
| ------------------ |----- | --- | --- | --------------------- | ---------------- |
| 3 | ユーザー管理機能 | 新規登録者を管理するため | 新規登録機能の実装 | ・登録が必要<br/>・登録には名前、ニックネーム、メールアドレス、パスワードの入力が必要 | 3日 |
| 3 | ログイン機能 | ログアウト・ログインを実施するため | ログイン・ログアウト機能の実装 | ・新規登録をしていることが前提<br/> ・ログイン・ログインボタンを押すとログインページが出る<br/>・ログインできるとトップページに戻る<br/>・ログアウト・ログアウトボタンを押すとログアウトでき、新規登録とログインボタンが出る  ・ログアウト出来るとトップページに戻る | 3日 |
| 3 | トップページの実装 | 見やすいビューの作成 | トップページの実装 | ・写真の一覧を表示  ・新規登録順に表示| 5日 |
| 2 | ユーザーの詳細機能 | 登録者同士の情報共有のため | ユーザーの詳細機能 | ・詳細  ニックネーム、活動地域、サバゲー歴、愛銃 | 5日 |
| 2 | コメントの投稿機能 | 登録者同士の情報共有のため | コメント投稿機能   | ・投稿機能  タイトル、テキストの入力欄をもうける | 5日 |
| 2 | コメントの編集機能 | コメントの変更等が発生することがあるため | コメントの編集機能 | ・変更が発生した時の対処のため | 5日 |
| 2 | コメントの削除機能 | 間違えた場合、削除できるようにするため | コメントの削除機能 | ・削除できるようにするため | 5日 |
| 2 | 写真の投稿機能 | 写真を投稿して楽しむため  アクティブストレージで実装 | 写真の投稿機能  アクティブストレージで実装 | ・データベースの容量を確保するため | 5日 |
| 1 | フィールド情報機能 | 一覧で検索できるようにする | Googleマップの導入 | ・地図を見てどこか分かりやすくするため | 5日 |
| 1 | ショップの情報機能 | 一覧で検索できるようにする | リンク先を指定して探しやすくする | ・いちいち色々なサイトを探さなくてすむようにするため | 5日 |


# DEMO
## トップページ
　[![Image from Gyazo](https://i.gyazo.com/564d8220c2ca6585620a2acbfdbbff00.gif)](https://gyazo.com/564d8220c2ca6585620a2acbfdbbff00)
## 新規登録
　[![Image from Gyazo](https://i.gyazo.com/7bfa9e9b8a89e4d442d94515ac8ef280.gif)](https://gyazo.com/7bfa9e9b8a89e4d442d94515ac8ef280
##　ログイン
　[![Image from Gyazo](https://i.gyazo.com/bf90d583c3cef7a1b0d183e21c762fde.gif)](https://gyazo.com/bf90d583c3cef7a1b0d183e21c762fde)
##　ログアウト
　[![Image from Gyazo](https://i.gyazo.com/8da449dfb1f965901f05a3ae9d539928.gif)](https://gyazo.com/8da449dfb1f965901f05a3ae9d539928)

# 実装予定の機能
- ユーザーの詳細機能
- コメントの投稿機能
- コメントの編集機能
- コメントの削除機能
- 写真の投稿機能
- フィールド情報機能
- ショップの情報機能

# データベース設計

## テーブル設計

### users テーブル
=======
# アプリケーション名

| Column   |
| -------- |
| SABAKATU |

# テーブル設計

## users テーブル
>>>>>>> master

| Column   | Type   | Options     |
| -------- | ------ | ----------- |
| name     | string | null: false |
| nickname | string | null: false |
| email    | string | null: false |
| password | string | null: false |

### Association

- has_many :room_users
- has_many :rooms, through: room_users
- has_many :messages 
- has_many :Photos
- has_one  :profile

### profiles テーブル

| Column   | Type       | Options                        |
| -------- | ---------- | ------------------------------ |
| area_id  | integer    |                                |
| field    | string     |                                |
| history  | string     |                                |
| gun      | string     |                                |
| user     | references | null: false, foreign_key: true |


### Association

- belongs_to :user

### rooms テーブル

| Column | Type   | Options     |
| ------ | ------ | ----------- |
| name   | string | null: false |

### Association

- has_many :room_users
- has_many :users, through: room_users
- has_many :messages

### room_users テーブル

| Column | Type       | Options                        |
| ------ | ---------- | ------------------------------ |
| user   | references | null: false, foreign_key: true |
| room   | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

### messages テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| content | string     |                                |
| user    | references | null: false, foreign_key: true |
| room    | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

### Photos テーブル

| Column  | Type       | Options                        |
| ------- | ---------- | ------------------------------ |
| title   | string     | null: false                    |
| user    | references | null: false, foreign_key: true |

### Association

- belongs_to :room
- belongs_to :user

### fields テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| field_name | string | null: false |
| address    | string | null: false |
| link       | string | null: false |

### shops テーブル

| Column     | Type   | Options     |
| ---------- | ------ | ----------- |
| shopname   | string | null: false |
| address    | string | null: false |
| link       | string | null: false |
