# README

# 76a DB設計

## usersテーブル
|Column|Type|Options|
|------|----|-------|
|nickname|string|null: false|
|password|string|null: false|
|icon|string|null: false|
|email|string|null: false|
|family_name|string|null: false|
|first_name|string|null: false|
|family_name_kana|string|null: false|
|first_name_kana|string|null: false|
|phone_number|string|null: false|
|birthday|integer|null: false|
|introduction|text||
### Association
- has_many :items, dependent: :destroy
- has_many :comments, dependent: :destroy
- has_many :favorites, dependent: :destroy
- has_many :reviews, dependent: :destroy

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|price|integer|null: false|
|introduction|text|null: false|
|condition|string|null: false|
|day|string|null: false|
|delivery_fee|string|null: false|
|brand|string|
|pref|string|null: false|
|genre_id|integer|null: false, foreign_key: true|
|buyer_id|integer|null: false, foreign_key: true|
|seller_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :comments, dependent: :destroy
- has_many :favorites, dependent: :destroy
- has_many :images, dependent: :destroy
- belongs_to :genre
- has_many :reviews, dependent: :destroy


## imagesテーブル
|Column|Type|Options|
|------|----|-------|
|image|string|null: false|
|item_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :item


## genresテーブル
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|ancestry|string||
### Association
- has_many :items

## creditcardsテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|string|null: false|
|token_id|string|null: false|
### Association
- belongs_to :user

## reviewsテーブル
|Column|Type|Options|
|------|----|-------|
|evaluation|string|null: false|
|review|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :item


## favoritesテーブル
|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :item

## commentsテーブル
|Column|Type|Options|
|------|----|-------|
|comment|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|item_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :item



This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


