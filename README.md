
https://img.shields.io/github/forks/thunderrevolt/yonnkoma_app?style=social
https://img.shields.io/github/languages/code-size/thunderrevolt/yonnkoma_app

**これは、私がプログラミングを学び初めて作ったAppです！！！。**

＃誰でも気軽に４コママンガを閲覧&投稿しよう

[Heroku](https://yonnkoma-app.herokuapp.com/)でアプリをチェックできます！

![画像(ヘッダー)](https://user-images.githubusercontent.com/61190252/79065597-9d376200-7cec-11ea-8450-e284b623caf2.png)

![画像(投稿画面)](https://user-images.githubusercontent.com/61190252/79065858-7a0db200-7cee-11ea-8c9a-06405d977184.png)

1. [概要](# 概要)
1. [環境](# 環境)
1. [使用言語](# 使用言語）
1. [今後の機能](# 今後の機能）


# 概要

気軽に、いつでも、どんな時も４コママンガを読むことができます。
さらに、自分で書いた４コママンガを簡単に投稿することができます。

# 環境

このガイドに従って、環境などを設定してください。

## データベース
#### usrsテーブル(ユーザー)
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false|
|password|string|null: false|
#### Association
- has_many :posts
- has_many :comments

#### postsテーブル(４コマ情報)
|Column|Type|Options|
|------|----|-------|
|title|string|null: false|
|text|text||
|user_idinteger|null: false, foreign_key: true|
#### Association
- belongs_to :user
- has_many :comments, dependent: :destroy
- has_many :boads, dependent: :destroy

#### boardsテーブル(４コマ画像)
|Column|Type|Options|
|------|----|-------|
|images|string|null:false|
|post_id|integer|null:false, foreign_key: true|
#### Association  
- belongs_to :post

#### commentsテーブル(コメント)
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|post_id|integer|null: false, foreign_key: true|
##### Association
- belongs_to :post
- belongs_to :user


**ステップのダウンロードとインストール**

1.このリポジトリを複製する

`` `bash
$ git clone https://github.com/thunderrevolt/yonnkoma_app.git
「」

2.リポジトリに移動します

`` `bash
$ cd yonnkoma_app
「」

3.依存関係をインストールする

`` `bash
$ bundle install
「」

4.データベースの作成

`` `bash
$ rails db:create
「」

5.データベース構造変更

`` `bash
$ rails db:migrate
「」

# 使用言語

このソフトウェアは、次のオープンソースパッケージを使用します。
！[画像]（https://user-images.githubusercontent.com/61190252/79066524-77618b80-7cf3-11ea-9a48-a11e88ed4e4c.png）

# 今後の機能

App内
-[]管理者機能
-[]お気に入り機能
-[]Twitter拡散機能

環境
-[]Docker導入
-[]CircleCI導入

