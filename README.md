# README
## Name
TRAVELUNGO (仮)

## Overview
日本に滞在する旅行者あるいは日本に移住してきた外国人に対して、
日本での生活をする上で有益な情報を提供する。
またヘルプが必要な人とヘルプを提供できる人とを引き合わせるマッチングサービスも提供し、
翻訳や日本語話者の同行をリクエストすることが容易にできる場を提供する。

# Description


# Demo

# VS. 

# Requirement

# Usage

# Contribution

# Author



# DB設計
## usersテーブル
|Column|Type|Options|
|------|----|-------|
|email|string|null: false|
|password|string|null: false|
|name|string|null: false|
|thumbnail_image|string| |
|frequency|string| |
|next_trip|string| |
|self_introduction|text| |
### Association
- has_many :posts
- has_many :comments

## postsテーブル
|Column|Type|Options|
|------|----|-------|
|title|text|null: false|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :comments
- has_many :posts_tags
- has_many  :tags,  through:  :posts_tags

## tagsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
### Association
- has_many :posts_tags
- has_many  :posts,  through:  :posts_tags

## posts_tagsテーブル
|Column|Type|Options|
|------|----|-------|
|post_id|integer|null: false, foreign_key: true|
|tag_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :post
- belongs_to :tag

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|text|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :post
- belongs_to :user
