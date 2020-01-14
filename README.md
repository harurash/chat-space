# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation
## messageテーブル

|Column|Type|Options|
|------|----|-------|
|id|int|
|body|text|
|image|string|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user
## userテーブル

|Column|Type|Options|
|------|----|-------|
|id|int|
|pass|string|null: false,unique: true|
|name|string|null: false,unique: true|
|email|string|null: false,unique: true|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
-  has_many :user_groups
-  has_many :groups, through: :users_groups
-  has_many :messages
## groupテーブル

|Column|Type|Options|
|------|----|-------|
|id|int|
|title|text|null: false|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
-  has_many :user_groups
-  has_many :users, through: :user_groups
-  has_many :messages
## groups_usersテーブル

|Column|Type|Options|
|------|----|-------|
|user_id|integer|null: false, foreign_key: true|
|group_id|integer|null: false, foreign_key: true|

### Association
- belongs_to :group
- belongs_to :user

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
