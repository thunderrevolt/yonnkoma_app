
![color:ff69b4](https://img.shields.io/github/forks/thunderrevolt/yonnkoma_app?style=social)

![color:ff69b4](https://img.shields.io/github/languages/code-size/thunderrevolt/yonnkoma_app)

**これは、私がプログラミングを学び初めて作ったAppです！！！。**

# 誰でも気軽に４コママンガを閲覧&投稿しよう

App名 ４コマ

[Heroku](https://yonnkoma-app.herokuapp.com/)でアプリをチェックできます！

テストアカウント 

ニックネーム test

パスワード aaaaaa (aが6文字)

トップページ
![画像(ヘッダー)](https://user-images.githubusercontent.com/61190252/79065597-9d376200-7cec-11ea-8450-e284b623caf2.png)

投稿画面
![画像(投稿画面)](https://user-images.githubusercontent.com/61190252/79065858-7a0db200-7cee-11ea-8c9a-06405d977184.png)



# 目次

1. [概要](#概要)
1. [制作背景](#制作背景)
1. [使用言語](#使用言語)
1. [今後の機能](#今後の機能)
1. [環境構築/DB設計](#環境構築/DB設計)


# 概要

気軽に、いつでも、どんな時も４コママンガを読むことができます。
さらに、自分で書いた４コママンガを簡単に投稿することができます。



# 制作背景

- 暇な時間や待ち時間などに暇つぶしできるものがほしい
- ４コママンガを普段書く中で他の人にみてもらいたい
- マンガ好きの思いを共有したい
- 趣味でマンガを書いてみたい

上記のような方がこのAppに出会いマンガを書くきっかけや、モチベーションが上がったり、共通の思いを持つ人たちと関わり合えたりなど、そんな生活の必需品になるようなAppになればと思い作成しました。






# 使用言語

このソフトウェアは、次のオープンソースパッケージを使用します。

![画像](https://user-images.githubusercontent.com/61190252/79066524-77618b80-7cf3-11ea-9a48-a11e88ed4e4c.png)



# 今後の機能

App内
- [ ] 管理者機能
- [ ] お気に入り機能
- [ ] Twitter拡散機能

環境
- [ ] Docker導入
- [ ] CircleCI導入


# 環境構築/DB設計

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
|user_id|integer|null: false, foreign_key: true|
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

```
$ git clone https://github.com/thunderrevolt/yonnkoma_app.git
```

2.リポジトリに移動します

```bash
$ cd yonnkoma_app
```

3.依存関係をインストールする

```bash
$ bundle install
```

4.データベースの作成

```bash
$ rails db:create
```

5.データベース構造変更

```bash
$ rails db:migrate
```