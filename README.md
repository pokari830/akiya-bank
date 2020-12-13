# README

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


# 空き家バンクDB設計

## akiyas table
|Column|Type|Options|
|------|----|-------|
|address|string|null: false|
|image|string|null: false|
|price|integer|null: false|
|place|string|null: false|
### Association
- belongs_to :user

## users table
|Column|Type|Options|
|------|----|-------|
|name|string|null: false|
|email|string|null: false, default: ""|
|password|string|null: false, default: ""|
### Association
- has_many :akiyas

