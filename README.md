# README

# 76a DB設計

##　usersテーブル
|Column|Type|Options|
|------|----|-------|
|user_name|string|null: false|
|furigana|string|null: false|
|email|string|null: false|
|password|string|null: false|
|nickname|string|null: false|
|birthday|integer|null: false|
|postal_code|integer|null: false|
|address|string|null: false|
|phone_number|integer|null: false|
###　Association
- has_many :items
- has_many :payments

## itemsテーブル
|Column|Type|Options|
|------|----|-------|
|image|text|null: false|
|item_name|text|null: false|
|price|integer|null: false|
|genre|string||
|brand|string||
|detail|text||
|status|string|null: false|
|delivery_fee|string|null: false|
|delivery_area|string|null: false|
|delivery_day|integer|null:false|
|user_id|integer|null: false, foreign_key: true|
|payment_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- belongs_to :payment

## paymentsテーブル
|Column|Type|Options|
|------|----|-------|
|credit_card|integer|null: false|
|user_id|integer|null: false, foreign_key: true|
### Association
- belongs_to :user
- has_many :item
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
